with Microbit.Console;
with Microbit.Display;
with Microbit.Light_Sensor;
with Microbit.PWM;
with Ada.Real_Time; use Ada.Real_Time;

procedure Light_Sensor is
   Now            : Time;
   Light_Level    : Natural;
   Smoothed_Level : Float := 0.0;
   Leds           : Integer;
   M              : Microbit.Display.Matrix := [others => [others => False]];
   Print_Counter  : Integer := 0;

   --  Exponential Moving Average (EMA) tuning
   --  Range: 0.0 to 1.0 (1.0 = instant, 0.01 = very slow)
   EMA_Factor     : constant Float := 0.2;

   Freq           : Float;
   Volume         : Float;
begin
   Microbit.Console.Initialize;
   Microbit.Display.Initialize;
   Microbit.PWM.Initialize;

   Microbit.Console.Put_Line
     ("Starting Micro:bit v2 LED Matrix Light Sensor...");

   loop
      Now := Clock;

      --  Read the ambient light level using the reverse-biased
      --  LED matrix (0 to 255)
      Microbit.Light_Sensor.Read (Light_Level);

      --  Apply Exponential Moving Average (EMA) for smoother
      --  visual/audio transitions
      Smoothed_Level := EMA_Factor * Float (Light_Level) +
                        (1.0 - EMA_Factor) * Smoothed_Level;

      Print_Counter := Print_Counter + 1;
      if Print_Counter >= 10 then -- Log every ~500ms
         Microbit.Console.Put ("Brightness (0-255): ");
         Microbit.Console.Put_Line (Integer (Smoothed_Level)'Image);
         Print_Counter := 0;
      end if;

      --  Map brightness to 0..25 LEDs (Matrix is 5x5)
      Leds := Integer ((Smoothed_Level / 255.0) * 25.0);

      if Leds > 25 then
         Leds := 25;
      elsif Leds < 0 then
         Leds := 0;
      end if;

      --  Draw a bar graph on the matrix (fill bottom to top, left to right)
      for R in 0 .. 4 loop
         for C in 0 .. 4 loop
            if (4 - R) * 5 + (C + 1) <= Leds then
               M (R, C) := True;
            else
               M (R, C) := False;
            end if;
         end loop;
      end loop;

      Microbit.Display.Show (M);

      --  Audio feedback: pitch and volume scale with brightness
      --  Base pitch: 100 Hz, Max pitch: 1000 Hz
      --  Base volume (duty cycle): 0.0, Max volume: 0.5 (max power for piezo)
      Freq   := 100.0 + ((Smoothed_Level / 255.0) * 900.0);
      Volume := (Smoothed_Level / 255.0) * 0.5;

      if Volume > 0.01 then
         Microbit.PWM.Set_Tone (Freq, Volume);
      else
         Microbit.PWM.Stop; -- Mute if completely dark
      end if;

      --  Refresh at ~20 Hz (50ms) to allow the LED matrix to actually display
      --  while not pausing it too frequently for the light sensor reads.
      delay until Now + Milliseconds (50);
   end loop;
end Light_Sensor;
