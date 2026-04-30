pragma SPARK_Mode (On);
with Microbit.Console;
with Microbit.Display;
with Microbit.Buttons; use Microbit.Buttons;
with Microbit.Microphone;
with Microbit.PWM;
with Microbit.Audio;
with Ada.Real_Time; use Ada.Real_Time;
with Parrot_Data;

procedure Parrot is
   Now : Time;
   Btn_A_State : Button_State;

   Idle_Icon : constant Microbit.Display.Matrix :=
     ((False, False, False, False, False),
      (False, True,  False, True,  False),
      (False, False, False, False, False),
      (True,  False, False, False, True),
      (False, True,  True,  True,  False));

   Mic_Icon : constant Microbit.Display.Matrix :=
     ((False, True,  True,  True,  False),
      (True,  True,  True,  True,  True),
      (True,  True,  True,  True,  True),
      (False, True,  True,  True,  False),
      (False, False, True,  False, False));

   Play_Icon : constant Microbit.Display.Matrix :=
     ((False, False, True,  False, False),
      (False, False, True,  True,  False),
      (False, False, True,  False, True),
      (False, True,  True,  False, False),
      (True,  True,  False, False, False));
begin
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("Initializing Parrot Example...");

   Microbit.Display.Initialize;
   Microbit.Buttons.Initialize;
   Microbit.Microphone.Initialize;
   Microbit.PWM.Initialize;

   Microbit.Console.Put_Line ("System Ready. Hold Button A to record.");
   Microbit.Display.Show (Idle_Icon);

   loop
      Now := Clock;
      Btn_A_State := State (Button_A);

      if Btn_A_State = Pressed then
         Microbit.Console.Put_Line ("Recording...");
         Microbit.Display.Show (Mic_Icon);

         --  Record ~2 seconds of audio directly into RAM
         Microbit.Microphone.Record_Sync (Parrot_Data.Buffer);

         Microbit.Console.Put_Line ("Recording finished. Formatting...");
         Microbit.Display.Show (Play_Icon);

         --  In-place format signed PCM to unsigned PWM
         Microbit.Audio.Format_PCM_For_PWM (Parrot_Data.Buffer);

         Microbit.Console.Put_Line ("Playing PCM...");
         --  Play the audio back out through the speaker
         --  Using 16125 Hz: 1032kHz / 64 = 16.125 kHz
         Microbit.PWM.Play_PCM (Parrot_Data.Buffer, 16125);

         --  Wait a bit before returning to idle
         Now := Clock;
         delay until Now + Milliseconds (2500);

         Microbit.Console.Put_Line ("System Ready.");
         Microbit.Display.Show (Idle_Icon);
      end if;

      delay until Now + Milliseconds (50);
   end loop;
end Parrot;
