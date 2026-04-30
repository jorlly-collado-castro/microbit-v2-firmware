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

   --  Calculates the Sound Pressure Level (SPL) from a raw 12-bit SAADC buffer.
   --  Returns the sound level in an approximate 8-bit scale (0.0 to 255.0).
   --  Requires a sufficiently large buffer (e.g. 1000+ samples) for an accurate RMS calculation.
   function Calculate_Sound_Level (Buffer : Audio_Buffer) return Float;

end Microbit.Audio;
