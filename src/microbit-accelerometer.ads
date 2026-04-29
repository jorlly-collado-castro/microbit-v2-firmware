with Interfaces; use Interfaces;

package Microbit.Accelerometer is

   --  Accelerometer X, Y, Z axes
   type Axis_Data is record
      X : Integer_16;
      Y : Integer_16;
      Z : Integer_16;
   end record;

   --  Initialize the LSM303AGR accelerometer on the internal I2C bus
   procedure Initialize;

   --  Read the current acceleration values
   function Read_Data return Axis_Data;

end Microbit.Accelerometer;