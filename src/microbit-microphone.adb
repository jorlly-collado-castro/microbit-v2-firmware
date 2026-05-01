pragma SPARK_Mode (Off);
with NRF52833_SVD.SAADC; use NRF52833_SVD.SAADC;
with NRF52833_SVD.GPIO;  use NRF52833_SVD.GPIO;
with NRF52833_SVD;       use NRF52833_SVD;
with Microbit.Pins;
with System.Storage_Elements;
with Ada.Real_Time;      use Ada.Real_Time;

package body Microbit.Microphone is

   Run_Mic_Pin : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 20);

   procedure Initialize is
      -- We must use GPIO_Periph for port 0 since Run_Mic_Pin is Port_0
      GPIO0 : GPIO_Peripheral with Import, Address => P0_Base;
   begin
      --  Configure the microphone power pin but leave it off
      Microbit.Pins.Configure (Run_Mic_Pin, Mode => Microbit.Pins.Output, Pull => Microbit.Pins.Disabled);
      --  Set high drive to ensure power regulator works properly
      GPIO0.PIN_CNF (Natural (Run_Mic_Pin.Pin)).DRIVE := H0H1;
      Microbit.Pins.Clear (Run_Mic_Pin);

      --  Enable SAADC
      SAADC_Periph.ENABLE.ENABLE := Enabled;

      --  Configure Channel 0 for Microphone (AIN3 which is P0.05)
      --  Microphone is connected to AIN3 (P0.05)
      SAADC_Periph.CH (0).PSELP.PSELP := AnalogInput3;
      SAADC_Periph.CH (0).PSELN.PSELN := NC;
      
      --  Configure Gain, Reference, and Acquisition Time
      --  Microphone is analog so we use internal reference, e.g. VDD/4.
      --  Use Gain4 (4x gain) to amplify the tiny AC-coupled microphone signal.
      --  With VDD/4 ref and Gain4, full scale is VDD/16 (~0.206V).
      --  This is perfect since the mic bias is ~0.088V.
      SAADC_Periph.CH (0).CONFIG.REFSEL := VDD1_4;
      SAADC_Periph.CH (0).CONFIG.GAIN   := Gain4;
      SAADC_Periph.CH (0).CONFIG.TACQ   := Val_3us;
      SAADC_Periph.CH (0).CONFIG.MODE   := SE; -- Single ended

      --  Configure Resolution
      --  We want 12-bit resolution to fit in our 16-bit PCM buffer nicely
      SAADC_Periph.RESOLUTION.VAL := Val_12bit;

      --  Configure Sample Rate to ~11 kHz
      --  16 MHz / 1454 = 11004 Hz
      SAADC_Periph.SAMPLERATE.MODE := Timers;
      SAADC_Periph.SAMPLERATE.CC   := 1454;
   end Initialize;

   procedure Record_Sync (Buffer_Address : System.Address; Length : Natural) is
      use System.Storage_Elements;
   begin
      --  Power on the microphone and wait for it to stabilize
      Microbit.Pins.Set (Run_Mic_Pin);
      delay until Clock + Milliseconds (3);

      --  Set up EasyDMA
      SAADC_Periph.RESULT.PTR := UInt32 (To_Integer (Buffer_Address));
      SAADC_Periph.RESULT.MAXCNT.MAXCNT := UInt15 (Length);

      SAADC_Periph.EVENTS_END.EVENTS_END := NotGenerated;
      SAADC_Periph.EVENTS_STARTED.EVENTS_STARTED := NotGenerated;
      SAADC_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;

      --  Start SAADC (starts EasyDMA)
      SAADC_Periph.TASKS_START.TASKS_START := Trigger;
      while SAADC_Periph.EVENTS_STARTED.EVENTS_STARTED = NotGenerated loop
         null;
      end loop;
      SAADC_Periph.EVENTS_STARTED.EVENTS_STARTED := NotGenerated;

      --  Start continuous sampling
      SAADC_Periph.TASKS_SAMPLE.TASKS_SAMPLE := Trigger;

      --  Wait for buffer to fill
      --  Yield the CPU occasionally so background tasks (like Matrix Display) can run
      while SAADC_Periph.EVENTS_END.EVENTS_END = NotGenerated loop
         delay until Clock + Milliseconds (10);
      end loop;

      --  Stop SAADC
      SAADC_Periph.TASKS_STOP.TASKS_STOP := Trigger;
      while SAADC_Periph.EVENTS_STOPPED.EVENTS_STOPPED = NotGenerated loop
         null;
      end loop;

      SAADC_Periph.EVENTS_END.EVENTS_END := NotGenerated;
      SAADC_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;
      
      --  Power off the microphone to save power and turn off the LED indicator
      Microbit.Pins.Clear (Run_Mic_Pin);
   end Record_Sync;

end Microbit.Microphone;
