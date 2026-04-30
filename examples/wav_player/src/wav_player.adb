pragma SPARK_Mode (On);
with Microbit.PWM;
with Microbit.Buttons; use Microbit.Buttons;
with Microbit.Display;
with Microbit.Console;
with Wav_Data;
with Ada.Real_Time; use Ada.Real_Time;

procedure Wav_Player is
   Now : Time;
   Btn_A_State : Button_State;
   Btn_B_State : Button_State;

   Note_Icon : constant Microbit.Display.Matrix :=
     ((False, False, True,  False, False),
      (False, False, True,  True,  False),
      (False, False, True,  False, True),
      (False, True,  True,  False, False),
      (True,  True,  False, False, False));

   Wait_Icon : constant Microbit.Display.Matrix :=
     ((False, False, False, False, False),
      (False, False, False, False, False),
      (False, False, True,  False, False),
      (False, False, False, False, False),
      (False, False, False, False, False));
begin
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("Initializing Wav Player...");

   Microbit.PWM.Initialize;
   Microbit.Buttons.Initialize;
   Microbit.Display.Initialize;

   Microbit.Console.Put_Line ("System Ready. Waiting for Button A.");

   loop
      Now := Clock;

      Btn_A_State := State (Button_A);
      Btn_B_State := State (Button_B);

      if Btn_A_State = Pressed then
         Microbit.Console.Put_Line ("Button A Pressed. Playing PCM.");
         Microbit.Display.Show (Note_Icon);
         Microbit.PWM.Play_PCM
           (Microbit.PWM.Audio_Buffer (Wav_Data.Audio_Data),
            11025);
         delay until Now + Milliseconds (500);
         Microbit.Console.Put_Line ("PCM triggered.");

      elsif Btn_B_State = Pressed then
         Microbit.Console.Put_Line ("Button B Pressed. Stopping.");
         Microbit.PWM.Stop;
         Microbit.Display.Clear;
         delay until Now + Milliseconds (200);

      else
         Microbit.Display.Show (Wait_Icon);
      end if;

      delay until Now + Milliseconds (50);
   end loop;
end Wav_Player;
