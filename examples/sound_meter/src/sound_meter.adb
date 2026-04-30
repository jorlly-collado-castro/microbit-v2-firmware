pragma SPARK_Mode (Off);
with Microbit.Console;
with Microbit.Display;
with Microbit.Microphone;
with Sound_Meter_Data;
with Ada.Real_Time; use Ada.Real_Time;

procedure Sound_Meter is
   Now : Time;
   Level : Float;
   Smoothed_Level : Float := 0.0;
   Leds : Integer;
   M : Microbit.Display.Matrix := (others => (others => False));
   Print_Counter : Integer := 0;

   --  Exponential Moving Average (EMA) tuning
   --  Range: 0.0 to 1.0 (1.0 = instant, 0.01 = very slow)
   Attack_Factor : constant Float := 0.6;
   Decay_Factor  : constant Float := 0.1;
begin
   Microbit.Console.Initialize;
   Microbit.Display.Initialize;
   Microbit.Microphone.Initialize;
   
   Microbit.Console.Put_Line ("Starting Sound Level Meter...");
   
   -- Signal the background sampling task to start now that hardware is initialized
   Sound_Meter_Data.Sync.Start;

   loop
      Now := Clock;

      -- Read the latest volume calculated by the background task
      Level := Sound_Meter_Data.Shared_Level.Get;
      
      -- Apply Exponential Moving Average (EMA)
      -- Fast attack, slower decay
      if Level > Smoothed_Level then
         Smoothed_Level := Attack_Factor * Level + (1.0 - Attack_Factor) * Smoothed_Level;
      else
         Smoothed_Level := Decay_Factor * Level + (1.0 - Decay_Factor) * Smoothed_Level;
      end if;

      Print_Counter := Print_Counter + 1;
      if Print_Counter >= 4 then
         Microbit.Console.Put ("Level: ");
         Microbit.Console.Put_Line (Level'Image);
         Microbit.Console.Put ("Smoothed: ");
         Microbit.Console.Put_Line (Smoothed_Level'Image);
         Print_Counter := 0;
      end if;
      
      -- Map level to 0..25 LEDs (Matrix is 5x5)
      Leds := Integer ((Smoothed_Level / 255.0) * 25.0);
      
      if Leds > 25 then
         Leds := 25;
      elsif Leds < 0 then
         Leds := 0;
      end if;
      
      -- Draw a bar graph on the matrix
      for R in 0 .. 4 loop
         for C in 0 .. 4 loop
            -- Fill bottom to top, left to right
            if (4 - R) * 5 + (C + 1) <= Leds then
               M (R, C) := True;
            else
               M (R, C) := False;
            end if;
         end loop;
      end loop;
      
      Microbit.Display.Show (M);

      -- Refresh display at ~62.5 Hz (16ms)
      delay until Now + Milliseconds (16);
   end loop;
end Sound_Meter;
