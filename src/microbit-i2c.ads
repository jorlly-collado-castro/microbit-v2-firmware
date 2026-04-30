pragma SPARK_Mode (On);
with Interfaces; use Interfaces;

package Microbit.I2C is

   --  Default address for LSM303AGR Accelerometer
   Default_Accel_Address : constant Unsigned_8 := 16#19#;
   
   type Data_Buffer is array (Natural range <>) of Unsigned_8;

   --  Initialize the internal I2C bus (TWIM0) on P0.08 (SCL) and P0.16 (SDA).
   --  It will run at 100 kbps by default.
   procedure Initialize;

   --  Write data to an I2C device
   procedure Write
     (Address : Unsigned_8;
      Data    : Data_Buffer)
     with Pre => Data'Length <= 65535;

   --  Read data from an I2C device
   procedure Read
     (Address : Unsigned_8;
      Data    : out Data_Buffer)
     with Pre => Data'Length <= 65535;

   --  Write to a specific register (common I2C sequence: write reg addr, then read/write)
   --  This effectively performs a Write(Address, [Reg, Val])
   procedure Write_Register
     (Address : Unsigned_8;
      Reg     : Unsigned_8;
      Val     : Unsigned_8);

   --  Read a specific register or block of registers.
   --  It writes the Reg address, issues a Repeated Start, and reads Data'Length bytes.
   procedure Read_Register
     (Address : Unsigned_8;
      Reg     : Unsigned_8;
      Data    : out Data_Buffer)
     with Pre => Data'Length <= 65535;

   function Check_Error return Boolean;


end Microbit.I2C;
