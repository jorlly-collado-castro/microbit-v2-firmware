with System;
with Interfaces; use Interfaces;

package Microbit.I2C is

   --  Default address for LSM303AGR Accelerometer
   Default_Accel_Address : constant Unsigned_8 := 16#19#;
   
   --  Initialize the internal I2C bus (TWIM0) on P0.08 (SCL) and P0.16 (SDA).
   --  It will run at 100 kbps by default.
   procedure Initialize;

   --  Write data to an I2C device
   procedure Write
     (Address : Unsigned_8;
      Data    : System.Address;
      Length  : Natural);

   --  Read data from an I2C device
   procedure Read
     (Address : Unsigned_8;
      Data    : System.Address;
      Length  : Natural);

   --  Write to a specific register (common I2C sequence: write reg addr, then read/write)
   --  This effectively performs a Write(Address, [Reg, Val])
   procedure Write_Register
     (Address : Unsigned_8;
      Reg     : Unsigned_8;
      Val     : Unsigned_8);

   --  Read a specific register or block of registers.
   --  It writes the Reg address, issues a Repeated Start, and reads Length bytes.
   procedure Read_Register
     (Address : Unsigned_8;
      Reg     : Unsigned_8;
      Data    : System.Address;
      Length  : Natural);

   function Check_Error return Boolean;


end Microbit.I2C;