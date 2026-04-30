pragma SPARK_Mode (On);
with Interfaces; use Interfaces;

package body Microbit.Audio is

   procedure Format_PCM_For_PWM (Buffer : in out Audio_Buffer) is
      Val : Integer_32;
      Amp : Integer_32;
   begin
      for I in Buffer'Range loop
         --  Convert to 32-bit to prevent overflow during intermediate calculations
         Val := Integer_32 (Buffer (I));
         
         --  1. Shift signed range (-32768..32767) to unsigned (0..65535)
         Val := Val + 32_768;
         
         --  2. Scale to PWM countertop range (0..363)
         --     Multiplier: 363, Divisor: 65535
         Amp := (Val * 363) / 65_535;
         
         --  3. Apply polarity bit (Bit 15 = 1 => 0x8000)
         --     In two's complement 16-bit, an unsigned value of (0x8000 + Amp)
         --     is equivalent to the signed negative value (Amp - 32768).
         Buffer (I) := Integer_16 (Amp - 32_768);
      end loop;
   end Format_PCM_For_PWM;

end Microbit.Audio;
