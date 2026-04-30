pragma SPARK_Mode (On);
with Interfaces;

package Microbit.PWM is

   type Audio_Buffer is array (Natural range <>) of Interfaces.Unsigned_16;

   procedure Initialize;

   --  Set the frequency (in Hz) and duty cycle (0.0 to 1.0)
   --  Setting duty cycle to 0.0 effectively mutes the speaker.
   procedure Set_Tone (Frequency : Float; Duty_Cycle : Float := 0.5);

   --  Play a sequence of PCM samples from a constant array (must be 16-bit where Bit 15=0 and 0-14 is Duty)
   --  Sample_Rate determines how fast the sequence pointer is refreshed.
   procedure Play_PCM (Data : Audio_Buffer; Sample_Rate : Positive);

   procedure Stop;

end Microbit.PWM;
