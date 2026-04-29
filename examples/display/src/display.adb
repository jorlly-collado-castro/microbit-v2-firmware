with Microbit.Display;
with Microbit.Buttons; use Microbit.Buttons;
with Ada.Real_Time; use Ada.Real_Time;

procedure Display is
   -- We'll create a simple animation loop that moves a dot and toggles heart
   -- based on button A being pressed.

   X, Y : Integer := 0;
   Dir_X, Dir_Y : Integer := 1;
   
   Next_Time : Time := Clock;
   Period    : constant Time_Span := Milliseconds (200);
begin
   Microbit.Display.Initialize;
   Microbit.Buttons.Initialize;

   Microbit.Display.Show (Microbit.Display.Heart);
   
   -- Wait 2 seconds showing heart
   delay until Clock + Seconds (2);
   Microbit.Display.Clear;

   loop
      -- Move a bouncing pixel
      Microbit.Display.Clear;
      
      -- If button A is pressed, draw a heart, else bouncing pixel
      if Microbit.Buttons.State (Microbit.Buttons.Button_A) = Microbit.Buttons.Pressed then
         Microbit.Display.Show (Microbit.Display.Heart);
      else
         Microbit.Display.Set_Pixel (X, Y, True);
         
         X := X + Dir_X;
         if X = 4 then
            Dir_X := -1;
         elsif X = 0 then
            Dir_X := 1;
         end if;
         
         Y := Y + Dir_Y;
         if Y = 4 then
            Dir_Y := -1;
         elsif Y = 0 then
            Dir_Y := 1;
         end if;
      end if;

      Next_Time := Next_Time + Period;
      delay until Next_Time;
   end loop;
end Display;