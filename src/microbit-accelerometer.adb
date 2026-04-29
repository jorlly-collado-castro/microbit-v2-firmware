with Microbit.I2C;

package body Microbit.Accelerometer is

   --  LSM303AGR Accelerometer Registers
   CTRL_REG1_A : constant Unsigned_8 := 16#20#;
   CTRL_REG4_A : constant Unsigned_8 := 16#23#;
   OUT_X_L_A   : constant Unsigned_8 := 16#28#;
   
   WHO_AM_I_A  : constant Unsigned_8 := 16#0F#;
   
   --  I2C Address
   Address     : constant Unsigned_8 := Microbit.I2C.Default_Accel_Address;

   procedure Initialize is
      Who_Am_I : aliased Unsigned_8 := 0;
   begin
      --  Initialize I2C bus if not already done. 
      --  Assuming the user or system calls Microbit.I2C.Initialize before.

      --  Read WHO_AM_I to verify sensor presence
      Microbit.I2C.Read_Register (Address, WHO_AM_I_A, Who_Am_I'Address, 1);
      
      --  If Who_Am_I is not 16#33#, the accelerometer is either not LSM303AGR or not communicating properly.
      --  But we continue and attempt configuration anyway.

      --  Configure CTRL_REG1_A: 100 Hz ODR, Normal mode, X/Y/Z axes enabled
      --  ODR = 0101 (100 Hz), LPen = 0, Z, Y, X = 1
      --  Val: 16#57#
      Microbit.I2C.Write_Register (Address, CTRL_REG1_A, 16#57#);
      
      --  Configure CTRL_REG4_A: High resolution mode, BDU enabled (optional)
      --  BDU = 1, HR = 1
      --  Val: 16#88#
      Microbit.I2C.Write_Register (Address, CTRL_REG4_A, 16#88#);
   end Initialize;

   function Read_Data return Axis_Data is
      --  Data buffer for X_L, X_H, Y_L, Y_H, Z_L, Z_H
      Buf : aliased array (1 .. 6) of Unsigned_8 := (others => 0);
      Result : Axis_Data;
   begin
      --  Set MSB of register address to 1 to enable auto-increment for reading multiple bytes
      Microbit.I2C.Read_Register (Address, OUT_X_L_A or 16#80#, Buf'Address, 6);

      --  Convert 8-bit registers to 16-bit integers
      Result.X := Integer_16 (Buf (2)) * 256 + Integer_16 (Buf (1));
      Result.Y := Integer_16 (Buf (4)) * 256 + Integer_16 (Buf (3));
      Result.Z := Integer_16 (Buf (6)) * 256 + Integer_16 (Buf (5));

      return Result;
   end Read_Data;

end Microbit.Accelerometer;