with NRF52833_SVD.PWM;  use NRF52833_SVD.PWM;
with NRF52833_SVD;      use NRF52833_SVD;
with Microbit.Pins;
with System.Storage_Elements;
with Ada.Unchecked_Conversion;

package body Microbit.PWM is

   Speaker_Pin : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 0);
   
   Seq_Data : aliased UInt16 := 0;

   function To_CNT is new Ada.Unchecked_Conversion (Source => UInt15, Target => CNT_CNT_Field);

   procedure Initialize is
      use System.Storage_Elements;
   begin
      Microbit.Pins.Configure (Speaker_Pin, Mode => Microbit.Pins.Output, Pull => Microbit.Pins.Disabled);

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
      PWM0_Periph.SEQ (0).CNT.CNT := To_CNT (1);
      PWM0_Periph.SEQ (0).REFRESH.CNT := Continuous;
      PWM0_Periph.SEQ (0).ENDDELAY.CNT := 0;
   end Initialize;
   
   procedure Set_Tone (Frequency : Float; Duty_Cycle : Float := 0.5) is
      Clock_Freq : constant Float := 16_000_000.0;
      Countertop : Float;
      Duty       : Float;
   begin
      if Frequency = 0.0 or Duty_Cycle = 0.0 then
         Seq_Data := 16#8000#; 
         PWM0_Periph.TASKS_SEQSTART (0).TASKS_SEQSTART := Trigger;
         return;
      end if;
      
      Countertop := Clock_Freq / Frequency;
      if Countertop > 32767.0 then
         Countertop := 32767.0;
      end if;
      
      PWM0_Periph.COUNTERTOP.COUNTERTOP := COUNTERTOP_COUNTERTOP_Field (Countertop);
      
      Duty := Countertop * Duty_Cycle;
      Seq_Data := UInt16 (Duty);
      
      PWM0_Periph.TASKS_SEQSTART (0).TASKS_SEQSTART := Trigger;
   end Set_Tone;

   procedure Stop is
   begin
      PWM0_Periph.TASKS_STOP.TASKS_STOP := Trigger;
   end Stop;

end Microbit.PWM;