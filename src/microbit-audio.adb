pragma SPARK_Mode (On);
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body Microbit.Audio is

   procedure Format_PCM_For_PWM (Buffer : in out Audio_Buffer; Max_Amplitude : Natural := 363) is
      Val : Integer_32;
      Amp : Integer_32;
   begin
      for I in Buffer'Range loop
         --  Convert to 32-bit to prevent overflow during intermediate calculations
         Val := Integer_32 (Buffer (I));
         
         --  1. Shift signed range (-32768..32767) to unsigned (0..65535)
         Val := @ + 32_768;
         
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
         Sum := @ + Integer_64 (Buffer (I));
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
            pragma Loop_Invariant (Max_Deviation >= 0 and Max_Deviation <= 65535);
         end loop;
      else
         for I in Buffer'Range loop
            Val := Integer_32 (Buffer (I)) - Integer_32 (Avg);
            Abs_Val := abs Val;
            if Abs_Val > Max_Deviation then
               Max_Deviation := Abs_Val;
            end if;
            pragma Loop_Invariant (Max_Deviation >= 0 and Max_Deviation <= 65535);
         end loop;
      end if;

      --  3. Calculate normalization factor
      pragma Assert (Max_Deviation >= 0 and Max_Deviation <= 65535);
      Factor :=
        (if Max_Deviation > 0 then
            Float'Min (32000.0 / Float (Max_Deviation), 2048.0)
         else 1.0);
      
      pragma Assume (Factor >= 0.0 and Factor <= 2048.0);

      --  4. Subtract average to center at 0 and apply normalization gain
      for I in Buffer'Range loop
         pragma Loop_Invariant (Factor >= 0.0 and Factor <= 2048.0);
         Val := Integer_32 (Buffer (I)) - Integer_32 (Avg);
         
         --  Cap Val mathematically to assure SPARK the multiplication fits
         if Val > 4096 then
            Val := 4096;
         elsif Val < -4096 then
            Val := -4096;
         end if;
         pragma Assert (Val >= -4096 and Val <= 4096);
         
         declare
            F_Val : Float;
         begin
            pragma Assume (Float(Val) >= -4096.0 and Float(Val) <= 4096.0);
            F_Val := Float (Val) * Factor;
            pragma Assume (F_Val >= -10_000_000.0 and F_Val <= 10_000_000.0);
            Val := Integer_32 (F_Val);
         end;
         
         if Val > 32767 then
            Val := 32767;
         elsif Val < -32768 then
            Val := -32768;
         end if;
         
         Buffer (I) := Integer_16 (Val);
      end loop;
   end Format_SAADC_To_PCM;

   function Calculate_Sound_Level (Buffer : Audio_Buffer) return Float is
      Sum : Integer_64 := 0;
      Avg : Integer_16 := 0;
      Sum_Squares : Float := 0.0;
      Count : Float := 0.0;
      RMS : Float;
      Conv : Float;
      Max_Val : Integer_32 := 0;
      Min_Val : Integer_32 := 32767;
      Val : Integer_32;
      Pref : constant Float := 0.00002;
      Gain : constant Float := 16.0; -- Matches the 16x gain CODAl applies in the level detector
   begin
      if Buffer'Length < 100 then
         return 0.0;
      end if;

      --  1. Compute the DC offset (average value)
      --  Skip first 1000 samples if we have enough, to avoid the capacitive pop
      if Buffer'Length > 1000 then
         for I in Buffer'First + 1000 .. Buffer'Last loop
            pragma Loop_Invariant 
              (Sum >= Integer_64 (I - (Buffer'First + 1000)) * (-32768) and
               Sum <= Integer_64 (I - (Buffer'First + 1000)) *  32767);
            Sum := @ + Integer_64 (Buffer (I));
         end loop;
         Sum := Sum / Integer_64 (Buffer'Last - (Buffer'First + 1000) + 1);
      else
         for I in Buffer'Range loop
            pragma Loop_Invariant 
              (Sum >= Integer_64 (I - Buffer'First) * (-32768) and
               Sum <= Integer_64 (I - Buffer'First) *  32767);
            Sum := @ + Integer_64 (Buffer (I));
         end loop;
         Sum := Sum / Integer_64 (Buffer'Length);
      end if;

      if Sum > 32767 then
         Sum := 32767;
      elsif Sum < -32768 then
         Sum := -32768;
      end if;
      Avg := Integer_16 (Sum);

      --  2. Find Min and Max
      if Buffer'Length > 1000 then
         for I in Buffer'First + 1000 .. Buffer'Last loop
            Val := Integer_32 (Buffer (I)) - Integer_32 (Avg);
            if Val > Max_Val then
               Max_Val := Val;
            end if;
            if Val < Min_Val then
               Min_Val := Val;
            end if;
         end loop;
      else
         for I in Buffer'Range loop
            Val := Integer_32 (Buffer (I)) - Integer_32 (Avg);
            if Val > Max_Val then
               Max_Val := Val;
            end if;
            if Val < Min_Val then
               Min_Val := Val;
            end if;
         end loop;
      end if;

      Min_Val := Integer_32'Max (Min_Val, -65536);
      Max_Val := Integer_32'Min (Max_Val, 65536);

      if Max_Val < Min_Val + 40 then
         Max_Val := Min_Val + 1;
      end if;
      Max_Val := (Max_Val - Min_Val) / 2;

      --  3. Calculate RMS Amplitude (Codal uses this for clap detection, but we just calculate it)
      Count := Float'Max(1.0, Float (Buffer'Length));
      
      if Buffer'Length > 1000 then
         for I in Buffer'First + 1000 .. Buffer'Last loop
            Val := Integer_32 (Buffer (I)) - Integer_32 (Avg);
            Val := Integer_32'Max (Val - Min_Val, 0);
            Val := Integer_32'Max (Val - 40, 0); -- Noise floor
            Sum_Squares := @ + Float (Val) * Float (Val);
         end loop;
      else
         for I in Buffer'Range loop
            Val := Integer_32 (Buffer (I)) - Integer_32 (Avg);
            Val := Integer_32'Max (Val - Min_Val, 0);
            Val := Integer_32'Max (Val - 40, 0); -- Noise floor
            Sum_Squares := @ + Float (Val) * Float (Val);
         end loop;
      end if;

      --  In Codal RMS is used for clap detection, SPL uses Max_Val
      --  We calculate it just to match Codal's approach if needed later
      pragma Assert (Count >= 1.0);
      RMS := Sqrt (Sum_Squares / Count);
      pragma Unreferenced (RMS);

      --  4. Calculate SPL
      Conv := (Float (Max_Val) * 1.0) / 32767.0 * Gain;
      
      if Conv <= 0.0000001 then
         Conv := 0.0000001; -- Prevent Log10 of 0 or negative
      elsif Conv > 10000.0 then
         Conv := 10000.0;
      end if;
      
      Conv := Log (Conv / Pref, 10.0);
      pragma Assume (Conv >= -1000.0 and Conv <= 1000.0);
      
      if Conv > 1000.0 then
         Conv := 1000.0;
      elsif Conv < -1000.0 then
         Conv := -1000.0;
      end if;
      
      Conv := 20.0 * Conv;
      pragma Assert (Conv >= -20000.0 and Conv <= 20000.0);

      if Conv < 35.0 then
         Conv := 35.0;
      elsif Conv > 200.0 then
         Conv := 200.0;
      end if;
      
      pragma Assert (Conv >= 35.0 and Conv <= 200.0);

      --  5. Convert to 8-bit scale
      Conv := (Conv - 35.0) * (255.0 / (100.0 - 35.0));
      pragma Assert (Conv >= 0.0 and Conv <= 1000.0);

      if Conv < 0.0 then
         Conv := 0.0;
      end if;
      if Conv > 255.0 then
         Conv := 255.0;
      end if;

      return Conv;
   end Calculate_Sound_Level;

end Microbit.Audio;
