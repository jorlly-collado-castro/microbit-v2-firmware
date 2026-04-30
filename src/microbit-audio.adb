pragma SPARK_Mode (On);

package body Microbit.Audio is

   procedure Format_PCM_For_PWM (Buffer : in out Audio_Buffer; Max_Amplitude : Natural := 363) is
      Val : Integer_32;
      Amp : Integer_32;
   begin
      for I in Buffer'Range loop
         --  Convert to 32-bit to prevent overflow during intermediate calculations
         Val := Integer_32 (Buffer (I));
         
         --  1. Shift signed range (-32768..32767) to unsigned (0..65535)
         Val := Val + 32_768;
         
         --  2. Scale to PWM countertop range
         --     Multiplier: Max_Amplitude, Divisor: 65535
         Amp := (Val * Integer_32 (Max_Amplitude)) / 65_535;
         
         --  3. Apply polarity bit (Bit 15 = 1 => 0x8000)
         --     In two's complement 16-bit, an unsigned value of (0x8000 + Amp)
         --     is equivalent to the signed negative value (Amp - 32768).
         Buffer (I) := Integer_16 (Amp - 32_768);
      end loop;
   end Format_PCM_For_PWM;

   procedure Format_SAADC_To_PCM (Buffer : in out Audio_Buffer) is
      Sum : Integer_64 := 0;
      Avg : Integer_16 := 0;
      Val : Integer_32;
      Max_Deviation : Integer_32 := 0;
      Abs_Val : Integer_32;
      Factor : Float := 1.0;
   begin
      if Buffer'Length = 0 then
         return;
      end if;

      --  1. Compute the DC offset (average value)
      for I in Buffer'Range loop
         pragma Loop_Invariant 
           (Sum >= Integer_64 (I - Buffer'First) * (-32768) and
            Sum <= Integer_64 (I - Buffer'First) *  32767);
         Sum := Sum + Integer_64 (Buffer (I));
      end loop;
      
      pragma Assert (Sum >= Integer_64 (Buffer'Length) * (-32768) and
                     Sum <= Integer_64 (Buffer'Length) *  32767);
      
      Sum := Sum / Integer_64 (Buffer'Length);
      
      if Sum > 32767 then
         Sum := 32767;
      elsif Sum < -32768 then
         Sum := -32768;
      end if;
      
      Avg := Integer_16 (Sum);

      --  2. Find the maximum absolute deviation from the average
      --  Skip the first 1000 samples (~90ms) because turning on the microphone
      --  regulator and the SAADC causes a massive capacitive pop/spike that 
      --  will ruin the Max_Deviation auto-gain calculation!
      if Buffer'Length > 1000 then
         for I in Buffer'First + 1000 .. Buffer'Last loop
            Val := Integer_32 (Buffer (I)) - Integer_32 (Avg);
            Abs_Val := abs Val;
            if Abs_Val > Max_Deviation then
               Max_Deviation := Abs_Val;
            end if;
         end loop;
      else
         for I in Buffer'Range loop
            Val := Integer_32 (Buffer (I)) - Integer_32 (Avg);
            Abs_Val := abs Val;
            if Abs_Val > Max_Deviation then
               Max_Deviation := Abs_Val;
            end if;
         end loop;
      end if;

      --  3. Calculate normalization factor
      if Max_Deviation > 0 then
         --  We want the maximum deviation to reach ~32000 (just under 32767 to be safe)
         Factor := 32000.0 / Float (Max_Deviation);
         
         --  Limit the gain to avoid amplifying pure silence/noise to deafening levels
         --  Raised from 64 to 2048 to allow proper amplification of tiny AC signals
         if Factor > 2048.0 then
            Factor := 2048.0;
         end if;
      else
         Factor := 1.0;
      end if;

      --  4. Subtract average to center at 0 and apply normalization gain
      for I in Buffer'Range loop
         Val := Integer_32 (Buffer (I)) - Integer_32 (Avg);
         
         --  Cap Val mathematically to assure SPARK the multiplication fits
         if Val > 4096 then
            Val := 4096;
         elsif Val < -4096 then
            Val := -4096;
         end if;
         
         Val := Integer_32 (Float (Val) * Factor);
         
         if Val > 32767 then
            Val := 32767;
         elsif Val < -32768 then
            Val := -32768;
         end if;
         
         Buffer (I) := Integer_16 (Val);
      end loop;
   end Format_SAADC_To_PCM;

end Microbit.Audio;
