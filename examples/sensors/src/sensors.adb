with Microbit.Console;
with Microbit.I2C;
with Microbit.Accelerometer;
with Microbit.Magnetometer;
with Microbit.Buttons; use Microbit.Buttons;
with Ada.Real_Time; use Ada.Real_Time;

procedure Sensors is
   Accel_Raw   : Microbit.Accelerometer.Axis_Data;
   Accel_Mg    : Microbit.Accelerometer.Float_Axis_Data;
   Mag_Data    : Microbit.Magnetometer.Axis_Data;
   Offset_X    : Integer := 0;
   Offset_Y    : Integer := 0;
   Offset_Z    : Integer := 0;

   Next_Release : Time := Clock;
   Period : constant Time_Span := Milliseconds (500);

   --  Helper to print floats simply, since Float'Image can be wide
   procedure Put_Float (Val : Float) is
   begin
      Microbit.Console.Put (Integer'Image (Integer (Val)));
   end Put_Float;
begin
   --  Initialize Console (UART) for printing output
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("Sensors Example Started");

   Microbit.Console.Put_Line ("Init I2C...");
   Microbit.I2C.Initialize;

   Microbit.Console.Put_Line ("Init Accel...");
   Microbit.Accelerometer.Initialize;

   Microbit.Console.Put_Line ("Init Mag...");
   Microbit.Magnetometer.Initialize;

   --  Initialize Button A
   Microbit.Buttons.Initialize;

   Microbit.Console.Put_Line ("Sensors Initialized");
   Microbit.Console.Put_Line ("Press Button A to zero the Accel.");

   loop
      Accel_Raw := Microbit.Accelerometer.Read_Data;
      Accel_Mg  := Microbit.Accelerometer.To_Milli_G (Accel_Raw);
      Mag_Data  := Microbit.Magnetometer.Read_Data;

      --  If Button A is pressed, calibrate
      if State (Button_A) = Pressed then
         Offset_X := Integer (Accel_Mg.X);
         Offset_Y := Integer (Accel_Mg.Y);
         Offset_Z := Integer (Accel_Mg.Z);
         Microbit.Console.Put_Line ("*** Sensor Calibrated ***");

         --  Debounce / wait for release
         delay until Clock + Milliseconds (500);
      end if;

      if Microbit.I2C.Check_Error then
         Microbit.Console.Put_Line ("I2C Transfer Error detected!");
      else
         --  Print values
         Microbit.Console.Put ("A_X: ");
         Put_Float (Accel_Mg.X - Float (Offset_X));
         Microbit.Console.Put (" mg, A_Y: ");
         Put_Float (Accel_Mg.Y - Float (Offset_Y));
         Microbit.Console.Put (" mg, A_Z: ");
         Put_Float (Accel_Mg.Z - Float (Offset_Z));
         Microbit.Console.Put (" mg | M_X:");
         Microbit.Console.Put (Integer'Image (Integer (Mag_Data.X)));
         Microbit.Console.Put (", M_Y:");
         Microbit.Console.Put (Integer'Image (Integer (Mag_Data.Y)));
         Microbit.Console.Put (", M_Z:");
         Microbit.Console.Put_Line (Integer'Image (Integer (Mag_Data.Z)));
      end if;

      --  Wait for next period
      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;
end Sensors;