pragma SPARK_Mode (Off);

with NRF52833_SVD.SPIM; use NRF52833_SVD.SPIM;
with NRF52833_SVD; use NRF52833_SVD;
with System.Storage_Elements;

package body Microbit.SPI is

   use type Microbit.Pins.Port_Id;

   function To_UInt32 (Address : System.Address) return UInt32 is
     (UInt32 (System.Storage_Elements.To_Integer (Address)));

   procedure Initialize
     (SCK_Pin   : Microbit.Pins.Pin_Id := Microbit.Pins.SPI_SCK;
      MOSI_Pin  : Microbit.Pins.Pin_Id := Microbit.Pins.SPI_MOSI;
      MISO_Pin  : Microbit.Pins.Pin_Id := Microbit.Pins.SPI_MISO;
      Mode      : SPI_Mode := Mode_0;
      Frequency : SPI_Frequency := F_4M)
   is
      CPOL : CONFIG_CPOL_Field;
      CPHA : CONFIG_CPHA_Field;
      Freq : UInt32;
   begin
      --  Configure Pins as outputs/inputs
      Microbit.Pins.Configure (SCK_Pin, Microbit.Pins.Output);
      Microbit.Pins.Configure (MOSI_Pin, Microbit.Pins.Output);
      Microbit.Pins.Configure (MISO_Pin, Microbit.Pins.Input);

      --  Disable SPIM2 before configuring
      SPIM2_Periph.ENABLE := (ENABLE => Disabled, others => <>);

      --  Set up PSEL
      SPIM2_Periph.PSEL.SCK :=
        (PIN => UInt5 (SCK_Pin.Pin),
         PORT => (if SCK_Pin.Port = Microbit.Pins.Port_0 then 0 else 1),
         CONNECT => Connected,
         others => <>);

      SPIM2_Periph.PSEL.MOSI :=
        (PIN => UInt5 (MOSI_Pin.Pin),
         PORT => (if MOSI_Pin.Port = Microbit.Pins.Port_0 then 0 else 1),
         CONNECT => Connected,
         others => <>);

      SPIM2_Periph.PSEL.MISO :=
        (PIN => UInt5 (MISO_Pin.Pin),
         PORT => (if MISO_Pin.Port = Microbit.Pins.Port_0 then 0 else 1),
         CONNECT => Connected,
         others => <>);

      --  Map SPI Mode
      case Mode is
         when Mode_0 => CPOL := ActiveHigh; CPHA := Leading;
         when Mode_1 => CPOL := ActiveHigh; CPHA := Trailing;
         when Mode_2 => CPOL := ActiveLow;  CPHA := Leading;
         when Mode_3 => CPOL := ActiveLow;  CPHA := Trailing;
      end case;

      SPIM2_Periph.CONFIG := (CPOL => CPOL, CPHA => CPHA, ORDER => MsbFirst, others => <>);

      --  Map Frequency (Using direct hex values from nRF52833 Product Spec)
      case Frequency is
         when F_125K => Freq := 16#0200_0000#;
         when F_250K => Freq := 16#0400_0000#;
         when F_500K => Freq := 16#0800_0000#;
         when F_1M   => Freq := 16#1000_0000#;
         when F_2M   => Freq := 16#2000_0000#;
         when F_4M   => Freq := 16#4000_0000#;
         when F_8M   => Freq := 16#8000_0000#;
      end case;

      SPIM2_Periph.FREQUENCY := Freq;

      --  Enable SPIM2
      SPIM2_Periph.ENABLE := (ENABLE => Enabled, others => <>);
   end Initialize;

   procedure Transfer (Tx_Data : Data_Buffer;
                       Rx_Data : out Data_Buffer)
   is
      Timeout : Natural := 10_000_000;
   begin
      --  Initialize Rx_Data to avoid uninitialized variable warnings
      Rx_Data := [others => 0];

      SPIM2_Periph.EVENTS_END := (EVENTS_END => NotGenerated, others => <>);

      SPIM2_Periph.TXD.PTR := To_UInt32 (Tx_Data (Tx_Data'First)'Address);
      SPIM2_Periph.TXD.MAXCNT := (MAXCNT => MAXCNT_TXD_MAXCNT_Field (Tx_Data'Length), others => <>);

      SPIM2_Periph.RXD.PTR := To_UInt32 (Rx_Data (Rx_Data'First)'Address);
      SPIM2_Periph.RXD.MAXCNT := (MAXCNT => MAXCNT_RXD_MAXCNT_Field (Rx_Data'Length), others => <>);

      SPIM2_Periph.TASKS_START := (TASKS_START => Trigger, others => <>);

      --  Wait for transfer to complete using tight polling
      while SPIM2_Periph.EVENTS_END.EVENTS_END = NotGenerated and then Timeout > 0 loop
         Timeout := @ - 1;
      end loop;

      SPIM2_Periph.EVENTS_END := (EVENTS_END => NotGenerated, others => <>);
   end Transfer;

   procedure Write (Tx_Data : Data_Buffer)
   is
      Timeout : Natural := 10_000_000;
   begin
      SPIM2_Periph.EVENTS_END := (EVENTS_END => NotGenerated, others => <>);

      SPIM2_Periph.TXD.PTR := To_UInt32 (Tx_Data (Tx_Data'First)'Address);
      SPIM2_Periph.TXD.MAXCNT := (MAXCNT => MAXCNT_TXD_MAXCNT_Field (Tx_Data'Length), others => <>);

      --  No Rx Data
      SPIM2_Periph.RXD.PTR := 0;
      SPIM2_Periph.RXD.MAXCNT := (MAXCNT => 0, others => <>);

      SPIM2_Periph.TASKS_START := (TASKS_START => Trigger, others => <>);

      while SPIM2_Periph.EVENTS_END.EVENTS_END = NotGenerated and then Timeout > 0 loop
         Timeout := @ - 1;
      end loop;

      SPIM2_Periph.EVENTS_END := (EVENTS_END => NotGenerated, others => <>);
   end Write;

end Microbit.SPI;