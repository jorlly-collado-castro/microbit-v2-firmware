with Microbit.Console;
with Microbit.I2C;
with Microbit.Magnetometer;
with Microbit.Display;
with Microbit.Buttons; use Microbit.Buttons;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Numerics; use Ada.Numerics;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

procedure Compass is
   Mag_Data : Microbit.Magnetometer.Axis_Data;

   Min_X, Max_X : Integer := 0;
   Min_Y, Max_Y : Integer := 0;

   Offset_X, Offset_Y : Float := 0.0;
   Cal_X, Cal_Y : Float;

   Heading : Float;

   Next_Release : Time := Clock;
   Period : constant Time_Span := Milliseconds (250);

   Cal_Time : constant Time_Span := Milliseconds (10_000);
   End_Cal  : Time;

   Arrow_N : constant Microbit.Display.Matrix :=
     [[False, False, True,  False, False],
      [False, True,  True,  True,  False],
      [True,  False, True,  False, True],
      [False, False, True,  False, False],
      [False, False, True,  False, False]];

   Arrow_NE : constant Microbit.Display.Matrix :=
     [[False, False, True,  True,  True],
      [False, False, False, True,  True],
      [False, False, True,  False, True],
      [False, True,  False, False, False],
      [True,  False, False, False, False]];

   Arrow_E : constant Microbit.Display.Matrix :=
     [[False, False, True,  False, False],
      [False, False, False, True,  False],
      [True,  True,  True,  True,  True],
      [False, False, False, True,  False],
      [False, False, True,  False, False]];

   Arrow_SE : constant Microbit.Display.Matrix :=
     [[True,  False, False, False, False],
      [False, True,  False, False, False],
      [False, False, True,  False, True],
      [False, False, False, True,  True],
      [False, False, True,  True,  True]];

   Arrow_S : constant Microbit.Display.Matrix :=
     [[False, False, True,  False, False],
      [False, False, True,  False, False],
      [True,  False, True,  False, True],
      [False, True,  True,  True,  False],
      [False, False, True,  False, False]];

   Arrow_SW : constant Microbit.Display.Matrix :=
     [[False, False, False, False, True],
      [False, False, False, True,  False],
      [True,  False, True,  False, False],
      [True,  True,  False, False, False],
      [True,  True,  True,  False, False]];

   Arrow_W : constant Microbit.Display.Matrix :=
     [[False, False, True,  False, False],
      [False, True,  False, False, False],
      [True,  True,  True,  True,  True],
      [False, True,  False, False, False],
      [False, False, True,  False, False]];

   Arrow_NW : constant Microbit.Display.Matrix :=
     [[True,  True,  True,  False, False],
      [True,  True,  False, False, False],
      [True,  False, True,  False, False],
      [False, False, False, True,  False],
      [False, False, False, False, True]];

   Full_On : constant Microbit.Display.Matrix :=
     [[True, True, True, True, True],
      [True, True, True, True, True],
      [True, True, True, True, True],
      [True, True, True, True, True],
      [True, True, True, True, True]];

   Full_Off : constant Microbit.Display.Matrix :=
     [[False, False, False, False, False],
      [False, False, False, False, False],
      [False, False, False, False, False],
      [False, False, False, False, False],
      [False, False, False, False, False]];

begin
   Microbit.Console.Initialize;
   Microbit.Display.Initialize;
   Microbit.Buttons.Initialize;
   Microbit.Console.Put_Line ("Compass Example Started");

   Microbit.I2C.Initialize;
   Microbit.Magnetometer.Initialize;

   Microbit.Console.Put_Line ("--- CALIBRATION PHASE ---");
   Microbit.Console.Put_Line ("Press Button A or B to start calibration.");
   Microbit.Display.Show (Full_On);

   loop
      exit when State (Button_A) = Pressed
        or else State (Button_B) = Pressed;
      delay until Clock + Milliseconds (50);
   end loop;

   Microbit.Console.Put_Line
     ("Please rotate the board in horizontal circles for 10 seconds.");

   --  Initialize Min/Max with first reading
   Mag_Data := Microbit.Magnetometer.Read_Data;
   Min_X := Integer (Mag_Data.X);
   Max_X := Integer (Mag_Data.X);
   Min_Y := Integer (Mag_Data.Y);
   Max_Y := Integer (Mag_Data.Y);

   End_Cal := Clock + Cal_Time;

   declare
      Next_Blink : Time := Clock + Milliseconds (250);
      Led_State  : Boolean := True;
   begin
      while Clock < End_Cal loop
         Mag_Data := Microbit.Magnetometer.Read_Data;

         if Integer (Mag_Data.X) < Min_X then
            Min_X := Integer (Mag_Data.X);
         end if;
         if Integer (Mag_Data.X) > Max_X then
            Max_X := Integer (Mag_Data.X);
         end if;
         if Integer (Mag_Data.Y) < Min_Y then
            Min_Y := Integer (Mag_Data.Y);
         end if;
         if Integer (Mag_Data.Y) > Max_Y then
            Max_Y := Integer (Mag_Data.Y);
         end if;

         if Clock >= Next_Blink then
            Led_State := not Led_State;
            if Led_State then
               Microbit.Display.Show (Full_On);
            else
               Microbit.Display.Show (Full_Off);
            end if;
            Next_Blink := Next_Blink + Milliseconds (250);
         end if;

         delay until Clock + Milliseconds (50);
      end loop;
   end;

   Offset_X := Float (Max_X + Min_X) / 2.0;
   Offset_Y := Float (Max_Y + Min_Y) / 2.0;

   Microbit.Console.Put_Line ("Calibration Complete!");
   Microbit.Console.Put ("Min X: ");
   Microbit.Console.Put (Integer'Image (Min_X));
   Microbit.Console.Put (" Max X: ");
   Microbit.Console.Put_Line (Integer'Image (Max_X));
   Microbit.Console.Put ("Min Y: ");
   Microbit.Console.Put (Integer'Image (Min_Y));
   Microbit.Console.Put (" Max Y: ");
   Microbit.Console.Put_Line (Integer'Image (Max_Y));
   Microbit.Console.Put ("Offset X: ");
   Microbit.Console.Put_Line (Integer'Image (Integer (Offset_X)));
   Microbit.Console.Put ("Offset Y: ");
   Microbit.Console.Put_Line (Integer'Image (Integer (Offset_Y)));

   loop
      Mag_Data := Microbit.Magnetometer.Read_Data;

      --  Subtract hard iron offsets
      Cal_X := Float (Mag_Data.X) - Offset_X;
      Cal_Y := Float (Mag_Data.Y) - Offset_Y;

      --  Calculate heading using Arctan
      --  Assuming X points Right and Y points Forward (Up).
      --  Earth's magnetic field points North.
      --  To get the arrow to point towards North relative to the board:
      Heading := Arctan (Y => Cal_X, X => Cal_Y) * 180.0 / Pi;

      --  Normalize to 0-360
      if Heading < 0.0 then
         Heading := Heading + 360.0;
      end if;

      if Heading >= 337.5 or else Heading < 22.5 then
         Microbit.Display.Show (Arrow_N);
      elsif Heading >= 22.5 and then Heading < 67.5 then
         Microbit.Display.Show (Arrow_NE);
      elsif Heading >= 67.5 and then Heading < 112.5 then
         Microbit.Display.Show (Arrow_E);
      elsif Heading >= 112.5 and then Heading < 157.5 then
         Microbit.Display.Show (Arrow_SE);
      elsif Heading >= 157.5 and then Heading < 202.5 then
         Microbit.Display.Show (Arrow_S);
      elsif Heading >= 202.5 and then Heading < 247.5 then
         Microbit.Display.Show (Arrow_SW);
      elsif Heading >= 247.5 and then Heading < 292.5 then
         Microbit.Display.Show (Arrow_W);
      else
         Microbit.Display.Show (Arrow_NW);
      end if;

      Microbit.Console.Put ("Raw: (");
      Microbit.Console.Put (Integer'Image (Integer (Mag_Data.X)));
      Microbit.Console.Put (", ");
      Microbit.Console.Put (Integer'Image (Integer (Mag_Data.Y)));
      Microbit.Console.Put (", ");
      Microbit.Console.Put (Integer'Image (Integer (Mag_Data.Z)));
      Microbit.Console.Put (") ");

      Microbit.Console.Put ("Heading: ");
      Microbit.Console.Put (Integer'Image (Integer (Heading)));
      Microbit.Console.Put_Line (" degrees");

      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;
end Compass;