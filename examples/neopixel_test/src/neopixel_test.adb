pragma SPARK_Mode (On);

with Microbit.Neopixel;
with Microbit.Pins;
with Microbit.Console;
with Ada.Real_Time; use Ada.Real_Time;

procedure Neopixel_Test is

   Number_Of_LEDs : constant := 4;
   Colors : Microbit.Neopixel.Color_Array (0 .. Number_Of_LEDs - 1);

   Period : constant Time_Span := Milliseconds (500);
   Cycle : Integer range 0 .. 2 := 0;
begin
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("Starting NeoPixel Test...");

   Microbit.Neopixel.Initialize (Microbit.Pins.P0);

   loop
      --  Rotate colors
      if Cycle = 0 then
         Colors := [others => (R => 50, G => 0, B => 0)];
         Microbit.Console.Put_Line ("Red");
      elsif Cycle = 1 then
         Colors := [others => (R => 0, G => 50, B => 0)];
         Microbit.Console.Put_Line ("Green");
      else
         Colors := [others => (R => 0, G => 0, B => 50)];
         Microbit.Console.Put_Line ("Blue");
      end if;

      Microbit.Neopixel.Show (Colors);

      if Cycle = 2 then
         Cycle := 0;
      else
         Cycle := @ + 1;
      end if;

      declare
         Now : constant Time := Clock;
      begin
         delay until Now + Period;
      end;
   end loop;

end Neopixel_Test;