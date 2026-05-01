pragma SPARK_Mode (On);
with Microbit.I2C;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Unchecked_Conversion;

package body Microbit.Magnetometer is

   --  LSM303AGR Magnetometer Registers
   CFG_REG_A_M   : constant Unsigned_8 := 16#60#;
   CFG_REG_C_M   : constant Unsigned_8 := 16#62#;
   OUTX_L_REG_M  : constant Unsigned_8 := 16#68#;
   WHO_AM_I_M    : constant Unsigned_8 := 16#4F#;
   
   --  I2C Address
   Address       : constant Microbit.I2C.Device_Address := 16#1E#;

   function To_Int16 is new Ada.Unchecked_Conversion (Source => Unsigned_16, Target => Integer_16);

   procedure Initialize is
      Who_Am_I : aliased Microbit.I2C.Data_Buffer (1 .. 1) := [others => 0];
      Now : constant Time := Clock;
   begin
      if Now < Time_Last - Milliseconds (10) then
         delay until Now + Milliseconds (10);
      else
         delay until Time_Last;
      end if;

      --  Read WHO_AM_I to verify sensor presence
      Microbit.I2C.Read_Register (Address, WHO_AM_I_M, Who_Am_I);

      --  Configure CFG_REG_A_M: 
      --  100 Hz ODR, Continuous mode
      --  Val: 16#0C# (ODR=100Hz -> 00, COMP_TEMP_EN=0, REBOOT=0, SOFT_RST=0, LP=0, ODR1=1, ODR0=1, MD1=0, MD0=0)
      --  Wait, MD[1:0] = 00 for continuous.
      --  ODR[1:0] = 11 (100 Hz).
      --  So CFG_REG_A_M = 0x0C (0000 1100)
      Microbit.I2C.Write_Register (Address, CFG_REG_A_M, 16#0C#);
      
      --  Configure CFG_REG_C_M:
      --  BDU enabled
      --  Val: 16#10# (BDU=1 -> 00010000)
      Microbit.I2C.Write_Register (Address, CFG_REG_C_M, 16#10#);
   end Initialize;

   procedure Read_Data (Result : out Axis_Data) is
      Buf : aliased Microbit.I2C.Data_Buffer (1 .. 6) := [others => 0];
      UX, UY, UZ : Unsigned_16;
   begin
      --  Set MSB of register address to 1 for auto-increment? 
      --  The magnetometer datasheet for LSM303AGR says auto-increment is enabled by default for magnetometer.
      --  We just read 6 bytes from OUTX_L_REG_M.
      Microbit.I2C.Read_Register (Address, OUTX_L_REG_M, Buf);

      UX := Shift_Left (Unsigned_16 (Buf (2)), 8) or Unsigned_16 (Buf (1));
      UY := Shift_Left (Unsigned_16 (Buf (4)), 8) or Unsigned_16 (Buf (3));
      UZ := Shift_Left (Unsigned_16 (Buf (6)), 8) or Unsigned_16 (Buf (5));

      Result.X := To_Int16 (UX);
      Result.Y := To_Int16 (UY);
      Result.Z := To_Int16 (UZ);
   end Read_Data;

end Microbit.Magnetometer;
