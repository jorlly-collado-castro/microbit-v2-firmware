pragma SPARK_Mode (On);
with Interfaces; use Interfaces;

package Microbit.I2C is

   type Device_Address is new Unsigned_8
     with Static_Predicate => Device_Address <= 16#7F#;

   --  Default address for LSM303AGR Accelerometer
   Default_Accel_Address : constant Device_Address := 16#19#;
   
   type Data_Buffer is array (Natural range <>) of Unsigned_8;

   --  Initialize the internal I2C bus (TWIM0) on P0.08 (SCL) and P0.16 (SDA).
   --  It will run at 100 kbps by default.
   procedure Initialize;

   --  Write data to an I2C device
   procedure Write
     (Address : Device_Address;
      Data    : Data_Buffer)
     with Pre => Data'Length <= 65535;

   --  Read data from an I2C device
   procedure Read
     (Address : Device_Address;
      Data    : out Data_Buffer)
     with Pre => Data'Length <= 65535;

   --  Write to a specific register (common I2C sequence: write reg addr, then read/write)
   --  This effectively performs a Write(Address, [Reg, Val])
   procedure Write_Register
     (Address : Device_Address;
      Reg     : Unsigned_8;
      Val     : Unsigned_8);

   --  Read from a specific register
   procedure Read_Register
     (Address : Device_Address;
      Reg     : Unsigned_8;
      Data    : out Data_Buffer)
     with Pre => Data'Length <= 65535;

   function Check_Error return Boolean;

end Microbit.I2C;
