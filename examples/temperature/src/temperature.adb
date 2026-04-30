with Microbit.Console;
with Microbit.Temperature;

procedure Temperature is
   Temp_C : Float;
begin
   Microbit.Console.Put_Line ("Starting Micro:bit v2 Temperature Sensor...");

   loop
      Microbit.Temperature.Read (Temp_C);

      Microbit.Console.Put_Line ("Temperature: " & Temp_C'Image & " C");

      --  Delay for 1 second (1000 ms) using CPU loops to avoid
      --  Ravenscar scheduling issues
      for I in 1 .. 10_000_000 loop
         null;
      end loop;
   end loop;
end Temperature;
