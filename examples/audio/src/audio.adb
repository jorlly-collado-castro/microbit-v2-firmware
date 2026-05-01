with Microbit.Console;
with Microbit.Display;
with Microbit.Buttons; use Microbit.Buttons;
with Microbit.PWM;
with Ada.Real_Time; use Ada.Real_Time;

procedure Audio is
   Melody : constant array (1 .. 8) of Float :=
     [261.63, 293.66, 329.63, 349.23, 392.00, 440.00, 493.88, 523.25];

   Arrow_Left : constant Microbit.Display.Matrix :=
     [[False, False, True,  False, False],
      [False, True,  False, False, False],
      [True,  True,  True,  True,  True],
      [False, True,  False, False, False],
      [False, False, True,  False, False]];
begin
   Microbit.Console.Initialize;
   Microbit.Display.Initialize;
   Microbit.Buttons.Initialize;
   Microbit.PWM.Initialize;

   Microbit.Console.Put_Line ("Audio Example Started");

   loop
      Microbit.Console.Put_Line ("Waiting for Button A...");
      Microbit.Display.Show (Arrow_Left);

      --  Wait until Button A is pressed
      while State (Button_A) /= Pressed loop
         delay until Clock + Milliseconds (50);
      end loop;

      Microbit.Console.Put_Line ("Playing Melody...");
      Microbit.Display.Clear;

      for Note of Melody loop
         Microbit.PWM.Set_Tone (Note, 0.5);
         delay until Clock + Milliseconds (500);
      end loop;

      Microbit.PWM.Stop;
      Microbit.Console.Put_Line ("Melody Finished.");

      --  Wait for Button A to be released before repeating
      while State (Button_A) = Pressed loop
         delay until Clock + Milliseconds (50);
      end loop;
   end loop;
end Audio;