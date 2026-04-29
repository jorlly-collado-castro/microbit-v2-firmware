with Microbit.Pins;
with Microbit.Console;
with Ada.Real_Time; use Ada.Real_Time;

procedure Blinky is
   -- The micro:bit v2 LED matrix is row-col multiplexed.
   -- Let's just try to drive one row and one column directly to turn on an LED.
   -- Based on micro:bit v2 schematic:
   -- Row 1 is P0.21
   -- Col 1 is P0.28
   -- For a bare minimum test, we will just use the Pins module.
   
   Row1 : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 21);
   Col1 : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 28);
   
   Next_Time : Time := Clock;
   Period    : constant Time_Span := Milliseconds (500);
begin
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("Starting Blinky Example!");

   Microbit.Pins.Configure (Row1, Mode => Microbit.Pins.Output);
   Microbit.Pins.Configure (Col1, Mode => Microbit.Pins.Output);
   
   -- To turn on the top-left LED (Row 1, Col 1), we usually drive Row HIGH and Col LOW.
   Microbit.Pins.Clear (Col1);

   loop
      Microbit.Console.Put_Line ("Tick");
      Microbit.Pins.Toggle (Row1);
      
      Next_Time := Next_Time + Period;
      delay until Next_Time;
   end loop;
end Blinky;