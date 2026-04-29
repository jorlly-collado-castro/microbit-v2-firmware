with Interfaces; use Interfaces;

package Microbit.Magnetometer is

   --  Magnetometer X, Y, Z axes in raw integers
   type Axis_Data is record
      X : Integer_16;
      Y : Integer_16;
      Z : Integer_16;
   end record;

   --  Initialize the LSM303AGR magnetometer on the internal I2C bus
   procedure Initialize;

   --  Read the current magnetic field values
   function Read_Data return Axis_Data;

end Microbit.Magnetometer;