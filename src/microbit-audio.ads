pragma SPARK_Mode (On);
with Interfaces; use Interfaces;

package Microbit.Audio is

   type Audio_Buffer is array (Natural range <>) of Interfaces.Integer_16;

   --  Formats signed 16-bit PCM data in-place to fit the expected PWM output format
   --  and limits its amplitude. Max_Amplitude must not exceed the PWM countertop.
   procedure Format_PCM_For_PWM (Buffer : in out Audio_Buffer; Max_Amplitude : Natural := 363)
     with Pre => Max_Amplitude <= 32767;

   --  Removes the DC offset from a 12-bit unsigned SAADC recording and scales it 
   --  up to fill the 16-bit signed range (-32768..32767).
   procedure Format_SAADC_To_PCM (Buffer : in out Audio_Buffer);

end Microbit.Audio;
