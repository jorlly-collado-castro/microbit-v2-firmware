with Microbit.Console;
with Microbit.I2C;
with Microbit.Accelerometer;
with Microbit.Magnetometer;
with Microbit.Temperature;
with Microbit.Light_Sensor;
with Ada.Real_Time; use Ada.Real_Time;

procedure Sensors is
   Accel_Raw   : Microbit.Accelerometer.Axis_Data;
   Accel_Mg    : Microbit.Accelerometer.Float_Axis_Data;
   Mag_Data    : Microbit.Magnetometer.Axis_Data;
   Temp_C      : Float;
   Light_Level : Natural;

   Next_Release : Time := Clock;
   Period : constant Time_Span := Milliseconds (1000);

   procedure Put_Float (Val : Float; Decimals : Natural := 4) is
      V : Float := Val;
      Int_Part : Integer;
   begin
      if V < 0.0 then
         Microbit.Console.Put ("-");
         V := -V;
      end if;
      Int_Part := Integer (Float'Truncation (V));
      Microbit.Console.Put
        (Integer'Image (Int_Part) (2 .. Integer'Image (Int_Part)'Last));
      Microbit.Console.Put (".");
      V := V - Float (Int_Part);
      for I in 1 .. Decimals loop
         V := V * 10.0;
         Int_Part := Integer (Float'Truncation (V));
         Microbit.Console.Put
           (Integer'Image (Int_Part) (2 .. Integer'Image (Int_Part)'Last));
         V := V - Float (Int_Part);
      end loop;
   end Put_Float;

begin
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("Sensors Example Started");

   Microbit.I2C.Initialize;
   Microbit.Accelerometer.Initialize;
   Microbit.Magnetometer.Initialize;

   Microbit.Console.Put_Line ("Sensors Initialized.");

   loop
      Microbit.Accelerometer.Read_Data (Accel_Raw);
      Accel_Mg := Microbit.Accelerometer.To_Milli_G (Accel_Raw);
      Microbit.Magnetometer.Read_Data (Mag_Data);
      Microbit.Temperature.Read (Temp_C);
      Microbit.Light_Sensor.Read (Light_Level);

      if Microbit.I2C.Check_Error then
         Microbit.Console.Put_Line ("I2C Transfer Error detected!");
      else
         --  Accelerometer in m/s^2
         Microbit.Console.Put ("Accelerometer(m/s^2): [X: ");
         Put_Float ((Accel_Mg.X / 1000.0) * 9.80665, 3);
         Microbit.Console.Put (", Y: ");
         Put_Float ((Accel_Mg.Y / 1000.0) * 9.80665, 3);
         Microbit.Console.Put (", Z: ");
         Put_Float ((Accel_Mg.Z / 1000.0) * 9.80665, 3);
         Microbit.Console.Put_Line ("]");

         --  Magnetometer in uT (0.15 uT / LSB)
         Microbit.Console.Put ("Magnetometer(uT): [X: ");
         Put_Float (Float (Mag_Data.X) * 0.15, 3);
         Microbit.Console.Put (", Y: ");
         Put_Float (Float (Mag_Data.Y) * 0.15, 3);
         Microbit.Console.Put (", Z: ");
         Put_Float (Float (Mag_Data.Z) * 0.15, 3);
         Microbit.Console.Put_Line ("]");

         --  Temperature in C
         Microbit.Console.Put ("Temperature(C): ");
         Put_Float (Temp_C, 2);
         Microbit.Console.Put_Line ("");

         --  Light level (0-255)
         Microbit.Console.Put ("Light(level): ");
         declare
            L_Str : constant String := Integer'Image (Light_Level);
         begin
            Microbit.Console.Put_Line (L_Str (2 .. L_Str'Last));
         end;

         --  Empty line to separate groups
         Microbit.Console.Put_Line ("");
      end if;

      Next_Release := Next_Release + Period;
      delay until Next_Release;
   end loop;
end Sensors;