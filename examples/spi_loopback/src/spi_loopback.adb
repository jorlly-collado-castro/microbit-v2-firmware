pragma SPARK_Mode (On);

with Microbit.Console;
with Microbit.Display;
with Microbit.SPI;
with Interfaces; use Interfaces;
with Ada.Real_Time; use Ada.Real_Time;

procedure Spi_Loopback is
   --  Test payload (not constant, to force placement in RAM for EasyDMA)
   pragma Warnings (Off, "Tx_Buf");
   --  Test payload. Volatile ensures placement in RAM for EasyDMA.
   Tx_Buf : aliased Microbit.SPI.Data_Buffer (0 .. 4) :=
     [16#DE#, 16#AD#, 16#BE#, 16#EF#, 16#42#];
   Rx_Buf : aliased Microbit.SPI.Data_Buffer (0 .. 4) :=
     [others => 0];

   pragma Volatile (Tx_Buf);
   pragma Volatile (Rx_Buf);
   pragma Warnings (On, "Tx_Buf");

   Success : Boolean;
   Period  : constant Time_Span := Milliseconds (1000);
   Next_Tx : Time;

   Check_Mark : constant Microbit.Display.Matrix :=
     [[False, False, False, False, False],
      [False, False, False, False, True],
      [False, False, False, True,  False],
      [True,  False, True,  False, False],
      [False, True,  False, False, False]];

   Cross_Mark : constant Microbit.Display.Matrix :=
     [[True,  False, False, False, True],
      [False, True,  False, True,  False],
      [False, False, True,  False, False],
      [False, True,  False, True,  False],
      [True,  False, False, False, True]];
begin
   Microbit.Console.Initialize;
   Microbit.Display.Initialize;

   Microbit.Console.Put_Line ("SPI Loopback Example Started");
   Microbit.Console.Put_Line
     ("Please connect Pin 14 (MISO) to Pin 15 (MOSI) with a jumper wire.");

   Microbit.SPI.Initialize
     (Mode      => Microbit.SPI.Mode_0,
      Frequency => Microbit.SPI.F_1M);

   Next_Tx := Clock;

   loop
      Microbit.Console.Put_Line ("Transmitting...");

      Microbit.SPI.Transfer (Tx_Data => Tx_Buf, Rx_Data => Rx_Buf);

      Success := True;
      for I in Tx_Buf'Range loop
         if Rx_Buf (I) /= Tx_Buf (I) then
            Success := False;
         end if;
      end loop;

      if Success then
         Microbit.Console.Put_Line ("Loopback SUCCESS! Data matched.");
         Microbit.Display.Show (Check_Mark);
      else
         Microbit.Console.Put_Line ("Loopback FAILED! Data mismatched.");
         Microbit.Console.Put ("Sent: [");
         for B of Tx_Buf loop
            Microbit.Console.Put (Unsigned_8'Image (B) & " ");
         end loop;
         Microbit.Console.Put_Line ("]");

         Microbit.Console.Put ("Rcvd: [");
         for B of Rx_Buf loop
            Microbit.Console.Put (Unsigned_8'Image (B) & " ");
         end loop;
         Microbit.Console.Put_Line ("]");

         Microbit.Display.Show (Cross_Mark);
      end if;

      Next_Tx := Next_Tx + Period;
      declare
         Now : constant Time := Clock;
      begin
         delay until Now + Period; -- Wait 1 second before next transfer
      end;
   end loop;
end Spi_Loopback;