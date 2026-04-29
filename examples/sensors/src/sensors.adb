with Microbit.Console;
with Microbit.I2C;
with Microbit.Accelerometer;
with Microbit.Buttons; use Microbit.Buttons;
with Ada.Real_Time; use Ada.Real_Time;

procedure Sensors is
   Accel_Data : Microbit.Accelerometer.Axis_Data;
   Offset_X   : Integer := 0;
   Offset_Y   : Integer := 0;
   Offset_Z   : Integer := 0;

   Next_Release : Time := Clock;
   Period : constant Time_Span := Milliseconds (500);
begin
   --  Initialize Console (UART) for printing output
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("Sensors Example Started");

   Microbit.Console.Put_Line ("Init I2C...");
   --  Initialize I2C bus and Accelerometer
   Microbit.I2C.Initialize;
   Microbit.Console.Put_Line ("I2C Init Done. Init Accel...");
   Microbit.Accelerometer.Initialize;

   --  Initialize Button A
   Microbit.Buttons.Initialize;

   Microbit.Console.Put_Line ("Accelerometer Initialized");
   Microbit.Console.Put_Line ("Press Button A to calibrate");

   loop
      --  Read accelerometer
      Accel_Data := Microbit.Accelerometer.Read_Data;

      --  If Button A is pressed, calibrate
      if State (Button_A) = Pressed then
         Offset_X := Integer (Accel_Data.X);
         Offset_Y := Integer (Accel_Data.Y);
         Offset_Z := Integer (Accel_Data.Z);
         Microbit.Console.Put_Line ("*** Sensor Calibrated ***");

         --  Debounce / wait for release
         delay until Clock + Milliseconds (500);
      end if;

      if Microbit.I2C.Check_Error then
         Microbit.Console.Put_Line ("I2C Transfer Error detected!");
      else
         --  Print values
         Microbit.Console.Put ("X:");
         Microbit.Console.Put
           (Integer'Image (Integer (Accel_Data.X) - Offset_X));
         Microbit.Console.Put (", Y:");
         Microbit.Console.Put
           (Integer'Image (Integer (Accel_Data.Y) - Offset_Y));
         Microbit.Console.Put (", Z:");
         Microbit.Console.Put_Line
           (Integer'Image (Integer (Accel_Data.Z) - Offset_Z));
      end if;

      --  Wait for next period
      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;
end Sensors;