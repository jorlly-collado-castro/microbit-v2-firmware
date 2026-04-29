with Microbit.Console;
with Microbit.I2C;
with Microbit.Accelerometer;
with Ada.Real_Time; use Ada.Real_Time;

procedure Sensors is
   Accel_Data : Microbit.Accelerometer.Axis_Data;
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

   Microbit.Console.Put_Line ("Accelerometer Initialized");

   loop
      Microbit.Console.Put_Line ("Reading accelerometer...");
      --  Read accelerometer
      Accel_Data := Microbit.Accelerometer.Read_Data;

      --  Print values in a single line (CSV-like) for easy serial plotting
      Microbit.Console.Put ("X:");
      Microbit.Console.Put (Integer'Image (Integer (Accel_Data.X)));
      Microbit.Console.Put (", Y:");
      Microbit.Console.Put (Integer'Image (Integer (Accel_Data.Y)));
      Microbit.Console.Put (", Z:");
      Microbit.Console.Put_Line (Integer'Image (Integer (Accel_Data.Z)));

      --  Wait for next period
      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;
end Sensors;