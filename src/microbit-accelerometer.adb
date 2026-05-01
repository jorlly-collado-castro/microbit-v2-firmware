pragma SPARK_Mode (On);
with Microbit.I2C;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Unchecked_Conversion;

package body Microbit.Accelerometer is

   --  LSM303AGR Accelerometer Registers
   CTRL_REG1_A : constant Unsigned_8 := 16#20#;
   CTRL_REG4_A : constant Unsigned_8 := 16#23#;
   OUT_X_L_A   : constant Unsigned_8 := 16#28#;
   WHO_AM_I_A  : constant Unsigned_8 := 16#0F#;
   
   --  I2C Address
   Address     : constant Microbit.I2C.Device_Address := Microbit.I2C.Default_Accel_Address;

   function To_Int16 is new Ada.Unchecked_Conversion (Source => Unsigned_16, Target => Integer_16);

   procedure Initialize is
      Who_Am_I : aliased Microbit.I2C.Data_Buffer (1 .. 1) := [others => 0];
      Now : constant Time := Clock;
   begin
      --  The LSM303AGR requires at least 6.4ms after power-up before it
      --  can reliably respond to I2C commands.
      if Now < Time_Last - Milliseconds (10) then
         delay until Now + Milliseconds (10);
      else
         delay until Time_Last;
      end if;

      --  Initialize I2C bus if not already done. 
      --  Assuming the user or system calls Microbit.I2C.Initialize before.

      --  Read WHO_AM_I to verify sensor presence
      Microbit.I2C.Read_Register (Address, WHO_AM_I_A, Who_Am_I);
      
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

   procedure Read_Data (Result : out Axis_Data) is
      --  Data buffer for X_L, X_H, Y_L, Y_H, Z_L, Z_H
      Buf : aliased Microbit.I2C.Data_Buffer (1 .. 6) := [others => 0];
      UX, UY, UZ : Unsigned_16;
   begin
      --  Set MSB of register address to 1 to enable auto-increment for reading multiple bytes
      Microbit.I2C.Read_Register (Address, OUT_X_L_A or 16#80#, Buf);

      --  Combine high and low bytes into 16-bit unsigned integers safely
      UX := Shift_Left (Unsigned_16 (Buf (2)), 8) or Unsigned_16 (Buf (1));
      UY := Shift_Left (Unsigned_16 (Buf (4)), 8) or Unsigned_16 (Buf (3));
      UZ := Shift_Left (Unsigned_16 (Buf (6)), 8) or Unsigned_16 (Buf (5));

      --  Unchecked conversion to 16-bit signed integers (Two's complement)
      Result.X := To_Int16 (UX);
      Result.Y := To_Int16 (UY);
      Result.Z := To_Int16 (UZ);
   end Read_Data;

   function To_Milli_G (Raw : Axis_Data) return Float_Axis_Data is
      --  In high-resolution mode (+/- 2g scale), the 12-bit data is left-justified 
      --  into a 16-bit register. That effectively multiplies the raw value by 16.
      --  At this scale, 1 LSB (of the 12-bit value) represents roughly 1 mg.
      --  Therefore, Raw / 16.0 gives the value in mg.
      Scale_Factor : constant Float := 1.0 / 16.0;
   begin
      return (X => Float (Raw.X) * Scale_Factor,
              Y => Float (Raw.Y) * Scale_Factor,
              Z => Float (Raw.Z) * Scale_Factor);
   end To_Milli_G;

end Microbit.Accelerometer;
