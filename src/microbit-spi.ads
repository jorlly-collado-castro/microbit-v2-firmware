pragma SPARK_Mode (On);

with Microbit.Pins;
with Interfaces;

package Microbit.SPI is

   type SPI_Mode is (Mode_0, Mode_1, Mode_2, Mode_3);
   --  Mode_0: CPOL = 0, CPHA = 0 (Active High, leading edge)
   --  Mode_1: CPOL = 0, CPHA = 1 (Active High, trailing edge)
   --  Mode_2: CPOL = 1, CPHA = 0 (Active Low, leading edge)
   --  Mode_3: CPOL = 1, CPHA = 1 (Active Low, trailing edge)

   type SPI_Frequency is (F_125K, F_250K, F_500K, F_1M, F_2M, F_4M, F_8M);

   type Data_Buffer is array (Natural range <>) of Interfaces.Unsigned_8;

   --  Initialize the SPI Master using SPIM2 peripheral
   procedure Initialize
     (SCK_Pin   : Microbit.Pins.Pin_Id := Microbit.Pins.SPI_SCK;
      MOSI_Pin  : Microbit.Pins.Pin_Id := Microbit.Pins.SPI_MOSI;
      MISO_Pin  : Microbit.Pins.Pin_Id := Microbit.Pins.SPI_MISO;
      Mode      : SPI_Mode := Mode_0;
      Frequency : SPI_Frequency := F_4M);

   --  Perform a full-duplex transfer over SPI
   procedure Transfer (Tx_Data : Data_Buffer;
                       Rx_Data : out Data_Buffer)
     with Pre => Tx_Data'Length = Rx_Data'Length and then
                 Tx_Data'Length <= 32767; -- EasyDMA constraint

   --  Perform a write-only transfer
   procedure Write (Tx_Data : Data_Buffer)
     with Pre => Tx_Data'Length <= 32767;

end Microbit.SPI;