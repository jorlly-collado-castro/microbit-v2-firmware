with Microbit.Console;
with Microbit.PWM;
with Ada.Real_Time; use Ada.Real_Time;

procedure Audio is
   Melody : constant array (1 .. 8) of Float :=
     [261.63, 293.66, 329.63, 349.23, 392.00, 440.00, 493.88, 523.25];
begin
   Microbit.Console.Initialize;
   Microbit.PWM.Initialize;

   Microbit.Console.Put_Line ("Audio Example Started");

   for Note of Melody loop
      Microbit.PWM.Set_Tone (Note, 0.5);
      delay until Clock + Milliseconds (500);
   end loop;

   Microbit.PWM.Stop;
   Microbit.Console.Put_Line ("Melody Finished.");

   loop
      delay until Clock + Seconds (1);
   end loop;
end Audio;