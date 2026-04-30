pragma SPARK_Mode (Off);
with NRF52833_SVD.PDM;  use NRF52833_SVD.PDM;
with NRF52833_SVD;      use NRF52833_SVD;
with Microbit.Pins;
with System.Storage_Elements;

package body Microbit.Microphone is

   Run_Mic_Pin : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 20);
   Clk_Pin     : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 1);
   Data_Pin    : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 5);

   procedure Initialize is
   begin
      --  Power on the microphone
      Microbit.Pins.Configure (Run_Mic_Pin, Mode => Microbit.Pins.Output, Pull => Microbit.Pins.Disabled);
      Microbit.Pins.Set (Run_Mic_Pin);

      --  Configure PDM clock and data pins as inputs (handled by PSEL)
      Microbit.Pins.Configure (Clk_Pin, Mode => Microbit.Pins.Input, Pull => Microbit.Pins.Disabled);
      Microbit.Pins.Configure (Data_Pin, Mode => Microbit.Pins.Input, Pull => Microbit.Pins.Disabled);

      --  Connect PDM peripheral to pins
      PDM_Periph.PSEL.CLK.PIN     := CLK_PSEL_PIN_Field (Clk_Pin.Pin);
      PDM_Periph.PSEL.CLK.PORT    := 0;
      PDM_Periph.PSEL.CLK.CONNECT := Connected;

      PDM_Periph.PSEL.DIN.PIN     := DIN_PSEL_PIN_Field (Data_Pin.Pin);
      PDM_Periph.PSEL.DIN.PORT    := 0;
      PDM_Periph.PSEL.DIN.CONNECT := Connected;

      --  Set to mono mode, Left channel
      PDM_Periph.MODE.OPERATION := Mono;
      PDM_Periph.MODE.EDGE      := LeftFalling;

      --  Default PDM clock frequency (1.032 MHz)
      PDM_Periph.PDMCLKCTRL := 16#0840_0000#;
      
      --  Maximize microphone gain (+20 dB) to ensure audible recordings
      PDM_Periph.GAINL.GAINL := MaxGain;
      PDM_Periph.GAINR.GAINR := MaxGain;

      --  Enable PDM
      PDM_Periph.ENABLE.ENABLE := Enabled;
   end Initialize;

   procedure Record_Sync (Buffer_Address : System.Address; Length : Natural) is
      use System.Storage_Elements;
   begin
      --  Set up EasyDMA to point to the raw memory address
      PDM_Periph.SAMPLE.PTR := UInt32 (To_Integer (Buffer_Address));
      PDM_Periph.SAMPLE.MAXCNT.BUFFSIZE := UInt15 (Length);

      PDM_Periph.EVENTS_STARTED.EVENTS_STARTED := NotGenerated;
      PDM_Periph.EVENTS_END.EVENTS_END := NotGenerated;
      PDM_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;

      --  Start recording
      PDM_Periph.TASKS_START.TASKS_START := Trigger;

      --  Wait for buffer to fill (EVENTS_END)
      while PDM_Periph.EVENTS_END.EVENTS_END = NotGenerated loop
         null;
      end loop;

      --  Stop recording
      PDM_Periph.TASKS_STOP.TASKS_STOP := Trigger;
      
      --  Wait for peripheral to fully stop
      while PDM_Periph.EVENTS_STOPPED.EVENTS_STOPPED = NotGenerated loop
         null;
      end loop;

      PDM_Periph.EVENTS_END.EVENTS_END := NotGenerated;
      PDM_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;
   end Record_Sync;

end Microbit.Microphone;
