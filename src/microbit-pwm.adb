pragma SPARK_Mode (Off);
with NRF52833_SVD.PWM;  use NRF52833_SVD.PWM;
with NRF52833_SVD.GPIO; use NRF52833_SVD.GPIO;
with NRF52833_SVD;      use NRF52833_SVD;
with Microbit.Pins;
with System.Storage_Elements;

package body Microbit.PWM is

   Speaker_Pin : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 0);
   
   Seq_Data : aliased UInt16 := 0;

   --  Helper to bypass SVD enumeration bug for SEQ.CNT
   procedure Set_SEQ_CNT (Seq_Idx : Natural; Value : UInt32) is
      CNT_Reg : UInt32 with Import, Volatile, Address => PWM0_Periph.SEQ (Seq_Idx).CNT'Address;
   begin
      CNT_Reg := Value;
   end Set_SEQ_CNT;

   --  Helper to bypass SVD enumeration bug for SEQ.REFRESH
   procedure Set_SEQ_REFRESH (Seq_Idx : Natural; Value : UInt32) is
      REFRESH_Reg : UInt32 with Import, Volatile, Address => PWM0_Periph.SEQ (Seq_Idx).REFRESH'Address;
   begin
      REFRESH_Reg := Value;
   end Set_SEQ_REFRESH;

   procedure Initialize is
      use System.Storage_Elements;
      GPIO0 : GPIO_Peripheral with Import, Address => P0_Base;
   begin
      Microbit.Pins.Configure (Speaker_Pin, Mode => Microbit.Pins.Output, Pull => Microbit.Pins.Disabled);
      --  Set Speaker pin to High Drive to ensure sufficient current for the magnetic coil
      GPIO0.PIN_CNF (Natural (Speaker_Pin.Pin)).DRIVE := H0H1;

      PWM0_Periph.PSEL.OUT_k (0).PIN     := OUT_PSEL_PIN_Field (Speaker_Pin.Pin);
      PWM0_Periph.PSEL.OUT_k (0).PORT    := OUT_PSEL_PORT_Field (Microbit.Pins.Port_Id'Pos (Speaker_Pin.Port));
      PWM0_Periph.PSEL.OUT_k (0).CONNECT := Connected;

      PWM0_Periph.PSEL.OUT_k (1) := (PIN => 31, PORT => 0, CONNECT => Disconnected, others => <>);
      PWM0_Periph.PSEL.OUT_k (2) := (PIN => 31, PORT => 0, CONNECT => Disconnected, others => <>);
      PWM0_Periph.PSEL.OUT_k (3) := (PIN => 31, PORT => 0, CONNECT => Disconnected, others => <>);

      PWM0_Periph.ENABLE := (ENABLE => Enabled, Reserved_1_31 => 0);

      PWM0_Periph.MODE.UPDOWN := Up;
      PWM0_Periph.PRESCALER.PRESCALER := DIV_1; 

      PWM0_Periph.DECODER :=
        (LOAD          => Common,
         MODE          => RefreshCount,
         Reserved_2_7  => 0,
         Reserved_9_31 => 0);

      PWM0_Periph.SEQ (0).PTR := UInt32 (To_Integer (Seq_Data'Address));
      Set_SEQ_CNT (0, 1);
      PWM0_Periph.SEQ (0).REFRESH.CNT := Continuous;
      PWM0_Periph.SEQ (0).ENDDELAY.CNT := 0;
   end Initialize;

   
   procedure Set_Tone (Frequency : Float; Duty_Cycle : Float := 0.5) is
      Clock_Freq : constant Float := 16_000_000.0;
      Countertop : Float;
      Duty       : Float;
   begin
      if Frequency = 0.0 or Duty_Cycle = 0.0 then
         Stop;
         return;
      end if;
      
      PWM0_Periph.ENABLE.ENABLE := Enabled;
      
      Countertop := Clock_Freq / Frequency;
      if Countertop > 32767.0 then
         Countertop := 32767.0;
      end if;
      
      PWM0_Periph.COUNTERTOP.COUNTERTOP := COUNTERTOP_COUNTERTOP_Field (Countertop);
      
      Duty := Countertop * Duty_Cycle;
      Seq_Data := UInt16 (Duty);
      
      --  For continuous tone, do not stop at sequence end
      PWM0_Periph.SHORTS.SEQEND0_STOP := Disabled;
      
      PWM0_Periph.TASKS_SEQSTART (0).TASKS_SEQSTART := Trigger;
   end Set_Tone;

   procedure Play_PCM (Buffer_Address : System.Address; Length : Natural; Sample_Rate : Positive) is
      use System.Storage_Elements;
      Clock_Freq : constant Float := 16_000_000.0;
      Multiplier : constant Positive := 4; --  Multiply sample rate to get carrier frequency
      Countertop : Float;
   begin
      if Length = 0 then
         return;
      end if;
      
      PWM0_Periph.ENABLE.ENABLE := Enabled;

      --  Configure base frequency (carrier frequency = Sample_Rate * Multiplier)
      --  e.g. 11025 * 4 = 44100 Hz carrier (inaudible to human ear)
      Countertop := Clock_Freq / Float (Sample_Rate * Multiplier);
      if Countertop > 32767.0 then
         Countertop := 32767.0;
      end if;
      
      PWM0_Periph.COUNTERTOP.COUNTERTOP := COUNTERTOP_COUNTERTOP_Field (Countertop);

      PWM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;
      PWM0_Periph.TASKS_STOP.TASKS_STOP := Trigger;
      --  Give the peripheral a tiny bit of time to stop before starting a new sequence
      for I in 1 .. 1000 loop
         if PWM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED = Generated then
            exit;
         end if;
      end loop;
      PWM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;

      --  Set up EasyDMA for continuous PCM playback from flash or RAM
      PWM0_Periph.SEQ (0).PTR := UInt32 (To_Integer (Buffer_Address));
      Set_SEQ_CNT (0, UInt32 (Length));
      
      --  Keep each sample active for 'Multiplier' PWM cycles
      Set_SEQ_REFRESH (0, UInt32 (Multiplier - 1));
      
      PWM0_Periph.SEQ (0).ENDDELAY.CNT := 0;

      --  Automatically stop PWM hardware as soon as the array finishes playing
      PWM0_Periph.SHORTS.SEQEND0_STOP := Enabled;

      PWM0_Periph.TASKS_SEQSTART (0).TASKS_SEQSTART := Trigger;
   end Play_PCM;

   procedure Stop is
   begin
      PWM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;
      PWM0_Periph.TASKS_STOP.TASKS_STOP := Trigger;
      for I in 1 .. 1000 loop
         if PWM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED = Generated then
            exit;
         end if;
      end loop;
      PWM0_Periph.EVENTS_STOPPED.EVENTS_STOPPED := NotGenerated;
      
      --  Disable PWM completely to hand pins back to GPIO for absolute silence
      PWM0_Periph.ENABLE.ENABLE := Disabled;
   end Stop;

end Microbit.PWM;
