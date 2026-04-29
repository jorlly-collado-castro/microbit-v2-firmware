with Microbit.Console;
with Ada.Real_Time; use Ada.Real_Time;

procedure Console is
   Next_Time : Time := Clock;
   Period    : constant Time_Span := Milliseconds (1000);
   Count     : Natural := 0;
begin
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("===============================");
   Microbit.Console.Put_Line ("Starting Serial Console Example");
   Microbit.Console.Put_Line ("===============================");

   loop
      Count := Count + 1;
      Microbit.Console.Put_Line ("Uptime Tick: " & Natural'Image (Count));
      
      Next_Time := Next_Time + Period;
      delay until Next_Time;
   end loop;
end Console;