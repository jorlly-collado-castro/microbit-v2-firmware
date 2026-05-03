pragma SPARK_Mode (On);

with Microbit.Neopixel;
with Microbit.Pins;
with Microbit.Console;
with Ada.Real_Time; use Ada.Real_Time;

procedure Neopixel_Wave is
   Number_Of_LEDs : constant := 4;
   Colors : Microbit.Neopixel.Color_Array (0 .. Number_Of_LEDs - 1);

   Period : constant Time_Span := Milliseconds (50);

   --  A simple bouncing dot state
   Position : Integer range 0 .. Number_Of_LEDs - 1 := 0;
   Direction : Integer range -1 .. 1 := 1;
begin
   Microbit.Console.Initialize;
   Microbit.Neopixel.Initialize (Microbit.Pins.P0);

   loop
      --  Clear all
      Colors := [others => (R => 0, G => 0, B => 0)];

      --  Draw dot
      Colors (Position) := (R => 0, G => 50, B => 100);

      --  Draw tail
      if Position - Direction >= 0 and then
         Position - Direction < Number_Of_LEDs
      then
         Colors (Position - Direction) := (R => 0, G => 10, B => 20);
      end if;

      Microbit.Neopixel.Show (Colors);

      --  Update position
      if Direction = 1 then
         if Position = Number_Of_LEDs - 1 then
            Direction := -1;
            Position := @ - 1;
         else
            Position := @ + 1;
         end if;
      else
         if Position = 0 then
            Direction := 1;
            Position := @ + 1;
         else
            Position := @ - 1;
         end if;
      end if;

      declare
         Now : constant Time := Clock;
      begin
         delay until Now + Period;
      end;
   end loop;
end Neopixel_Wave;
