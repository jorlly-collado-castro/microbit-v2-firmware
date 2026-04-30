pragma SPARK_Mode (On);
with Interfaces; use Interfaces;

package Microbit.Accelerometer is

   --  Accelerometer X, Y, Z axes in raw integers
   type Axis_Data is record
      X : Integer_16;
      Y : Integer_16;
      Z : Integer_16;
   end record;

   --  Accelerometer X, Y, Z axes in milli-g (mg)
   type Float_Axis_Data is record
      X : Float;
      Y : Float;
      Z : Float;
   end record;

   --  Initialize the LSM303AGR accelerometer on the internal I2C bus
   procedure Initialize;

   --  Read the current acceleration values in raw format
   procedure Read_Data (Result : out Axis_Data);

   --  Convert raw axis data to milli-g
   function To_Milli_G (Raw : Axis_Data) return Float_Axis_Data;

end Microbit.Accelerometer;
