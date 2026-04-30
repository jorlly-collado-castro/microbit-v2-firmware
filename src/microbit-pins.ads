pragma SPARK_Mode (On);
package Microbit.Pins is

   type Port_Id is (Port_0, Port_1);
   type Pin_Number is range 0 .. 31;

   type Pin_Id is record
      Port : Port_Id;
      Pin  : Pin_Number;
   end record;

   type Pin_Mode is (Input, Output);
   type Pull_Resistor is (Disabled, Pull_Down, Pull_Up);

   procedure Configure (Pin  : Pin_Id;
                        Mode : Pin_Mode;
                        Pull : Pull_Resistor := Disabled);

   procedure Set (Pin : Pin_Id);
   procedure Clear (Pin : Pin_Id);
   procedure Toggle (Pin : Pin_Id);

   function Read (Pin : Pin_Id) return Boolean with Volatile_Function, Global => null;

   ------------------------------------
   -- Micro:bit v2 Specific Pin Maps --
   ------------------------------------

   -- Interface MCU UART
   UART_TX : constant Pin_Id := (Port_0, 6);
   UART_RX : constant Pin_Id := (Port_1, 8);

   -- Basic GPIO / Edge Connector
   P0  : constant Pin_Id := (Port_0, 2);
   P1  : constant Pin_Id := (Port_0, 3);
   P2  : constant Pin_Id := (Port_0, 4);

end Microbit.Pins;
