with NRF52833_SVD.TWIM; use NRF52833_SVD.TWIM;
with NRF52833_SVD;     use NRF52833_SVD;
with Microbit.Pins;
with System.Storage_Elements;

package body Microbit.I2C is

   SCL_Pin : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 8);
   SDA_Pin : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 16);

   procedure Initialize is
   begin
      --  Configure Pins as inputs with pullups initially,
      --  though TWIM will take over their function.
      Microbit.Pins.Configure (SCL_Pin, Mode => Microbit.Pins.Input, Pull => Microbit.Pins.Pull_Up);
      Microbit.Pins.Configure (SDA_Pin, Mode => Microbit.Pins.Input, Pull => Microbit.Pins.Pull_Up);

      --  Disable TWIM0 before configuration
      TWIM0_Periph.ENABLE.ENABLE := Disabled;

      --  Set SCL and SDA pins
      TWIM0_Periph.PSEL.SCL :=
        (PIN  => SCL_PSEL_PIN_Field (SCL_Pin.Pin),
         PORT => NRF52833_SVD.Bit (Microbit.Pins.Port_Id'Pos (SCL_Pin.Port)),
         CONNECT => Connected,
         others => <>);

      TWIM0_Periph.PSEL.SDA :=
        (PIN  => SDA_PSEL_PIN_Field (SDA_Pin.Pin),
         PORT => NRF52833_SVD.Bit (Microbit.Pins.Port_Id'Pos (SDA_Pin.Port)),
         CONNECT => Connected,
         others => <>);

      --  Set frequency to 100 kbps (0x01980000)
      TWIM0_Periph.FREQUENCY := 16#01980000#;

      --  Enable TWIM0
      TWIM0_Periph.ENABLE.ENABLE := Enabled;
   end Initialize;

   procedure Write
     (Address : Unsigned_8;
      Data    : System.Address;
      Length  : Natural)
   is
      use System.Storage_Elements;
   begin
      --  Wait until any previous stop or error is handled
      --  Not needed in typical bare-metal sequential unless interrupts are mixed
      TWIM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;
      TWIM0_Periph.EVENTS_ERROR.EVENTS_ERROR := NotGenerated;

      TWIM0_Periph.ADDRESS.ADDRESS := ADDRESS_ADDRESS_Field (Address mod 128);

      TWIM0_Periph.TXD.PTR := UInt32 (To_Integer (Data));
      TWIM0_Periph.TXD.MAXCNT.MAXCNT := MAXCNT_TXD_MAXCNT_Field (Length);

      --  Shortcut LASTTX -> STOP
      TWIM0_Periph.SHORTS :=
        (LASTTX_STOP => Enabled,
         Others      => <>);

      --  Start Transmission
      TWIM0_Periph.TASKS_STARTTX.TASKS_STARTTX := Trigger;

      --  Wait for STOPPED or ERROR
      while TWIM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED = NotGenerated and then
            TWIM0_Periph.EVENTS_ERROR.EVENTS_ERROR = NotGenerated
      loop
         null;
      end loop;
   end Write;

   procedure Read
     (Address : Unsigned_8;
      Data    : System.Address;
      Length  : Natural)
   is
      use System.Storage_Elements;
   begin
      TWIM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;
      TWIM0_Periph.EVENTS_ERROR.EVENTS_ERROR := NotGenerated;

      TWIM0_Periph.ADDRESS.ADDRESS := ADDRESS_ADDRESS_Field (Address mod 128);

      TWIM0_Periph.RXD.PTR := UInt32 (To_Integer (Data));
      TWIM0_Periph.RXD.MAXCNT.MAXCNT := MAXCNT_RXD_MAXCNT_Field (Length);

      --  Shortcut LASTRX -> STOP
      TWIM0_Periph.SHORTS :=
        (LASTRX_STOP => Enabled,
         Others      => <>);

      --  Start Reception
      TWIM0_Periph.TASKS_STARTRX.TASKS_STARTRX := Trigger;

      --  Wait for STOPPED or ERROR
      while TWIM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED = NotGenerated and then
            TWIM0_Periph.EVENTS_ERROR.EVENTS_ERROR = NotGenerated
      loop
         null;
      end loop;
   end Read;

   procedure Write_Register
     (Address : Unsigned_8;
      Reg     : Unsigned_8;
      Val     : Unsigned_8)
   is
      --  EasyDMA needs data in RAM, so we copy it to a local array
      Buf : aliased array (1 .. 2) of Unsigned_8 := (Reg, Val) with Volatile;
   begin
      Write (Address, Buf'Address, 2);
   end Write_Register;

   procedure Read_Register
     (Address : Unsigned_8;
      Reg     : Unsigned_8;
      Data    : System.Address;
      Length  : Natural)
   is
      use System.Storage_Elements;
      --  We write the register address, then do a repeated start to read
      Reg_Buf : aliased Unsigned_8 := Reg with Volatile;
   begin
      TWIM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;
      TWIM0_Periph.EVENTS_ERROR.EVENTS_ERROR := NotGenerated;

      TWIM0_Periph.ADDRESS.ADDRESS := ADDRESS_ADDRESS_Field (Address mod 128);

      --  Setup TXD (1 byte: Register address)
      TWIM0_Periph.TXD.PTR := UInt32 (To_Integer (Reg_Buf'Address));
      TWIM0_Periph.TXD.MAXCNT.MAXCNT := 1;

      --  Setup RXD (Length bytes: Data)
      TWIM0_Periph.RXD.PTR := UInt32 (To_Integer (Data));
      TWIM0_Periph.RXD.MAXCNT.MAXCNT := MAXCNT_RXD_MAXCNT_Field (Length);

      --  Shortcuts: LASTTX -> STARTRX (Repeated Start) and LASTRX -> STOP
      TWIM0_Periph.SHORTS :=
        (LASTTX_STARTRX => Enabled,
         LASTRX_STOP    => Enabled,
         Others         => <>);

      --  Trigger TX (which will auto-trigger RX via shortcut)
      TWIM0_Periph.TASKS_STARTTX.TASKS_STARTTX := Trigger;

      --  Wait for STOPPED or ERROR
      while TWIM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED = NotGenerated and then
            TWIM0_Periph.EVENTS_ERROR.EVENTS_ERROR = NotGenerated
      loop
         null;
      end loop;
   end Read_Register;

end Microbit.I2C;