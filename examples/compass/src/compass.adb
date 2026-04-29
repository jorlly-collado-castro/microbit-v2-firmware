with Microbit.Console;
with Microbit.I2C;
with Microbit.Magnetometer;
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
begin
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("Compass Example Started");

   Microbit.I2C.Initialize;
   Microbit.Magnetometer.Initialize;

   Microbit.Console.Put_Line ("--- CALIBRATION PHASE ---");
   Microbit.Console.Put_Line
     ("Please rotate the board in horizontal circles for 10 seconds.");

   --  Initialize Min/Max with first reading
   Mag_Data := Microbit.Magnetometer.Read_Data;
   Min_X := Integer (Mag_Data.X);
   Max_X := Integer (Mag_Data.X);
   Min_Y := Integer (Mag_Data.Y);
   Max_Y := Integer (Mag_Data.Y);

   End_Cal := Clock + Cal_Time;

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

      delay until Clock + Milliseconds (50);
   end loop;

   Offset_X := Float (Max_X + Min_X) / 2.0;
   Offset_Y := Float (Max_Y + Min_Y) / 2.0;

   Microbit.Console.Put_Line ("Calibration Complete!");
   Microbit.Console.Put ("Offset X: ");
   Microbit.Console.Put_Line (Integer'Image (Integer (Offset_X)));
   Microbit.Console.Put ("Offset Y: ");
   Microbit.Console.Put_Line (Integer'Image (Integer (Offset_Y)));

   loop
      Mag_Data := Microbit.Magnetometer.Read_Data;

      --  Subtract hard iron offsets
      Cal_X := Float (Mag_Data.X) - Offset_X;
      Cal_Y := Float (Mag_Data.Y) - Offset_Y;

      --  Calculate heading using Arctan (Y, X)
      --  Arctan returns -PI to +PI.
      Heading := Arctan (Cal_Y, Cal_X) * 180.0 / Pi;

      --  Normalize to 0-360
      if Heading < 0.0 then
         Heading := Heading + 360.0;
      end if;

      Microbit.Console.Put ("Heading: ");
      Microbit.Console.Put (Integer'Image (Integer (Heading)));
      Microbit.Console.Put_Line (" degrees");

      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;
end Compass;