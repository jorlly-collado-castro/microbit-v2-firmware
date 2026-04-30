pragma SPARK_Mode (Off); -- Passing Buffer'Address violates SPARK boundary, but is safe for DMA
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

         --  Record ~3 seconds of audio directly into RAM
         Microbit.Microphone.Record_Sync
           (Parrot_Data.Buffer'Address, Parrot_Data.Buffer'Length);

         Microbit.Console.Put_Line ("Recording finished. Formatting...");
         Microbit.Display.Show (Play_Icon);
         
         --  Debug: print first 5 raw SAADC values
         for I in Parrot_Data.Buffer'First .. Parrot_Data.Buffer'First + 4 loop
            Microbit.Console.Put ("Raw: ");
            Microbit.Console.Put_Line (Parrot_Data.Buffer (I)'Image);
         end loop;

         --  Remove SAADC DC Offset and apply gain
         Microbit.Audio.Format_SAADC_To_PCM (Parrot_Data.Buffer);
         
         --  Debug: print first 5 PCM values
         for I in Parrot_Data.Buffer'First .. Parrot_Data.Buffer'First + 4 loop
            Microbit.Console.Put ("PCM: ");
            Microbit.Console.Put_Line (Parrot_Data.Buffer (I)'Image);
         end loop;

         --  In-place format signed PCM to unsigned PWM
         --  Countertop = 16MHz / (11004 * 4) = 363
         Microbit.Audio.Format_PCM_For_PWM (Parrot_Data.Buffer, 363);

         Microbit.Console.Put_Line ("Playing PCM...");
         --  Play the audio back out through the speaker
         --  Using SAADC sample rate: 11004 Hz
         Microbit.PWM.Play_PCM
           (Parrot_Data.Buffer'Address, Parrot_Data.Buffer'Length, 11004);

         --  Wait for playback to finish
         Now := Clock;
         delay until Now + Milliseconds (3100);

         Microbit.Console.Put_Line ("System Ready.");
         Microbit.Display.Show (Idle_Icon);
      end if;

      delay until Now + Milliseconds (50);
   end loop;
end Parrot;
