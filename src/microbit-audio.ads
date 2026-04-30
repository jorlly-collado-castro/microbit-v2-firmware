pragma SPARK_Mode (On);
with Interfaces;

package Microbit.Audio is
   --  Standard PCM audio buffer (16-bit signed), 4-byte aligned for EasyDMA compatibility
   type Audio_Buffer is array (Natural range <>) of Interfaces.Integer_16
     with Alignment => 4;

   --  Formats a signed PCM audio buffer in-place to be played by the PWM peripheral.
   --  This scales the amplitude to fit the PWM countertop, shifts the baseline,
   --  and applies the necessary polarity bit (0x8000).
   procedure Format_PCM_For_PWM (Buffer : in out Audio_Buffer; Max_Amplitude : Natural := 363)
     with Pre => Max_Amplitude <= 32767;

end Microbit.Audio;
