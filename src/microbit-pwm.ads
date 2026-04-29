package Microbit.PWM is

   procedure Initialize;

   --  Set the frequency (in Hz) and duty cycle (0.0 to 1.0)
   --  Setting duty cycle to 0.0 effectively mutes the speaker.
   procedure Set_Tone (Frequency : Float; Duty_Cycle : Float := 0.5);

   procedure Stop;

end Microbit.PWM;