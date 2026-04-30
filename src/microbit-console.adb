pragma SPARK_Mode (Off);
with NRF52833_SVD.UARTE; use NRF52833_SVD.UARTE;
with NRF52833_SVD;       use NRF52833_SVD;
with System.Storage_Elements;

package body Microbit.Console is

   Initialized : Boolean := False;

   procedure Initialize
     (TX_Pin : Microbit.Pins.Pin_Id := Microbit.Pins.UART_TX;
      RX_Pin : Microbit.Pins.Pin_Id := Microbit.Pins.UART_RX)
   is
   begin
      --  1. Configure GPIO pins
      Microbit.Pins.Configure (TX_Pin, Mode => Microbit.Pins.Output);
      Microbit.Pins.Configure (RX_Pin, Mode => Microbit.Pins.Input, Pull => Microbit.Pins.Disabled);

      --  2. Configure UARTE0
      UARTE0_Periph.ENABLE := (ENABLE => Disabled, Others => <>);

      UARTE0_Periph.PSEL.TXD :=
        (PIN     => TXD_PSEL_PIN_Field (TX_Pin.Pin),
         PORT    => NRF52833_SVD.Bit (Microbit.Pins.Port_Id'Pos (TX_Pin.Port)),
         CONNECT => Connected,
         Others  => <>);

      UARTE0_Periph.PSEL.RXD :=
        (PIN     => RXD_PSEL_PIN_Field (RX_Pin.Pin),
         PORT    => NRF52833_SVD.Bit (Microbit.Pins.Port_Id'Pos (RX_Pin.Port)),
         CONNECT => Connected,
         Others  => <>);

      --  115200 baud (0x01D7E000 based on Nordic UARTE specs)
      UARTE0_Periph.BAUDRATE := 16#01D7E000#;

      --  Enable UARTE0
      UARTE0_Periph.ENABLE := (ENABLE => Enabled, Others => <>);
      
      Initialized := True;
   end Initialize;

   procedure Put (C : Character) is
      use System.Storage_Elements;
      Byte_Val : constant Byte := Character'Pos (C);
      
      -- EasyDMA requires a buffer in RAM
      Temp_Buf : aliased Byte := Byte_Val with Volatile;
   begin
      if not Initialized then
         return;
      end if;

      UARTE0_Periph.EVENTS_ENDTX := (EVENTS_ENDTX => NotGenerated, Others => <>);
      UARTE0_Periph.TXD.PTR := UInt32 (To_Integer (Temp_Buf'Address));
      UARTE0_Periph.TXD.MAXCNT := (MAXCNT => 1, Others => <>);
      
      UARTE0_Periph.TASKS_STARTTX := (TASKS_STARTTX => Trigger, Others => <>);
      
      while UARTE0_Periph.EVENTS_ENDTX.EVENTS_ENDTX = NotGenerated loop
         null; -- wait for transmission to complete
      end loop;
   end Put;

   procedure Put (S : String) is
   begin
      for C of S loop
         Put (C);
      end loop;
   end Put;

   procedure Put_Line (S : String) is
   begin
      Put (S);
      Put (ASCII.CR);
      Put (ASCII.LF);
   end Put_Line;

end Microbit.Console;
