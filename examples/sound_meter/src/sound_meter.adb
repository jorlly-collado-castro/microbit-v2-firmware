pragma SPARK_Mode (Off);
with Microbit.Console;
with Microbit.Display;
with Microbit.Microphone;
with Microbit.Audio;
with Parrot_Data;
with Ada.Real_Time; use Ada.Real_Time;

procedure Sound_Meter is
   Now : Time;
   Level : Float;
   Leds : Integer;
   M : Microbit.Display.Matrix := (others => (others => False));
begin
   Microbit.Console.Initialize;
   Microbit.Display.Initialize;
   Microbit.Microphone.Initialize;
   
   Microbit.Console.Put_Line ("Starting Sound Level Meter...");

   loop
      Now := Clock;

      --  Record a small chunk of audio (e.g., 2000 samples = ~180ms)
      Microbit.Microphone.Record_Sync
        (Parrot_Data.Buffer'Address, 2000);

      --  Calculate Sound Level (0 - 255 scale)
      Level := Microbit.Audio.Calculate_Sound_Level (Parrot_Data.Buffer(Parrot_Data.Buffer'First .. Parrot_Data.Buffer'First + 1999));
      
      Microbit.Console.Put ("Level: ");
      Microbit.Console.Put_Line (Level'Image);
      
      --  Map level to 0..25 LEDs (Matrix is 5x5)
      Leds := Integer ((Level / 255.0) * 25.0);
      
      if Leds > 25 then
         Leds := 25;
      elsif Leds < 0 then
         Leds := 0;
      end if;
      
      --  Draw a bar graph on the matrix
      for R in 0 .. 4 loop
         for C in 0 .. 4 loop
            -- Fill bottom to top, left to right
            if (4 - R) * 5 + (C + 1) <= Leds then
               M (C, R) := True;
            else
               M (C, R) := False;
            end if;
         end loop;
      end loop;
      
      Microbit.Display.Show (M);

      delay until Now + Milliseconds (50);
   end loop;
end Sound_Meter;