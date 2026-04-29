with Microbit.Pins;

package Microbit.Console is

   --  Initializes the UART (UARTE0) for the interface MCU at 115200 8N1.
   --  By default, uses the standard Micro:bit v2 TX and RX pins.
   procedure Initialize
     (TX_Pin : Microbit.Pins.Pin_Id := Microbit.Pins.UART_TX;
      RX_Pin : Microbit.Pins.Pin_Id := Microbit.Pins.UART_RX);

   procedure Put (C : Character);
   procedure Put (S : String);
   procedure Put_Line (S : String);

end Microbit.Console;