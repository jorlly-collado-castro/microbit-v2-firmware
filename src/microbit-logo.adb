pragma SPARK_Mode (Off);

with NRF52833_SVD.GPIOTE;
with NRF52833_SVD.PPI;
with NRF52833_SVD.TIMER;
with System.Storage_Elements; use System.Storage_Elements;
with NRF52833_SVD; use NRF52833_SVD;
with Microbit.Pins;
with Ada.Real_Time; use Ada.Real_Time;

package body Microbit.Logo is

   Baseline_Time : Natural := 0;

   protected Shared_State is
      procedure Set (Value : Boolean);
      function Get return Boolean;
   private
      Current : Boolean := False;
   end Shared_State;

   protected body Shared_State is
      procedure Set (Value : Boolean) is
      begin
         Current := Value;
      end Set;

      function Get return Boolean is
      begin
         return Current;
      end Get;
   end Shared_State;

   use type NRF52833_SVD.GPIOTE.EVENTS_IN_EVENTS_IN_Field;

   function Measure_Charge_Time return Natural is
      Time_Taken : Natural := 0;
   begin
      --  State 1: Drain
      Microbit.Pins.Configure ((Microbit.Pins.Port_1, 4), Microbit.Pins.Output, Microbit.Pins.Disabled);
      Microbit.Pins.Clear ((Microbit.Pins.Port_1, 4));

      for J in 1 .. 10_000 loop
         null;
      end loop;

      --  State 2: Charge & Measure
      NRF52833_SVD.TIMER.TIMER1_Periph.TASKS_CLEAR := (TASKS_CLEAR => NRF52833_SVD.TIMER.Trigger, others => <>);
      NRF52833_SVD.GPIOTE.GPIOTE_Periph.EVENTS_IN (0).EVENTS_IN := NRF52833_SVD.GPIOTE.NotGenerated;
      NRF52833_SVD.GPIOTE.GPIOTE_Periph.CONFIG (0).MODE := NRF52833_SVD.GPIOTE.Event;

      NRF52833_SVD.TIMER.TIMER1_Periph.TASKS_START := (TASKS_START => NRF52833_SVD.TIMER.Trigger, others => <>);

      Microbit.Pins.Configure ((Microbit.Pins.Port_1, 4), Microbit.Pins.Input, Microbit.Pins.Disabled);

      for I in 1 .. 5000 loop
         if NRF52833_SVD.GPIOTE.GPIOTE_Periph.EVENTS_IN (0).EVENTS_IN = NRF52833_SVD.GPIOTE.Generated then
            exit;
         end if;
         for J in 1 .. 10 loop
            null;
         end loop;
      end loop;

      NRF52833_SVD.TIMER.TIMER1_Periph.TASKS_STOP := (TASKS_STOP => NRF52833_SVD.TIMER.Trigger, others => <>);
      NRF52833_SVD.TIMER.TIMER1_Periph.TASKS_CAPTURE (0) := (TASKS_CAPTURE => NRF52833_SVD.TIMER.Trigger, others => <>);
      
      Time_Taken := Natural (NRF52833_SVD.TIMER.TIMER1_Periph.CC (0));

      NRF52833_SVD.GPIOTE.GPIOTE_Periph.CONFIG (0).MODE := NRF52833_SVD.GPIOTE.Disabled;

      return Time_Taken;
   end Measure_Charge_Time;

   procedure Initialize is
      Sum : Natural := 0;
   begin
      --  Configure TIMER1 for 1 MHz, 32-bit
      NRF52833_SVD.TIMER.TIMER1_Periph.BITMODE.BITMODE := NRF52833_SVD.TIMER.Val_32Bit;
      NRF52833_SVD.TIMER.TIMER1_Periph.PRESCALER.PRESCALER := 4; -- 16MHz / 2^4 = 1MHz

      --  Configure GPIOTE Channel 0 for P1.04, LoToHi
      NRF52833_SVD.GPIOTE.GPIOTE_Periph.CONFIG (0).PORT := 1;
      NRF52833_SVD.GPIOTE.GPIOTE_Periph.CONFIG (0).PSEL := 4;
      NRF52833_SVD.GPIOTE.GPIOTE_Periph.CONFIG (0).POLARITY := NRF52833_SVD.GPIOTE.LoToHi;
      NRF52833_SVD.GPIOTE.GPIOTE_Periph.CONFIG (0).MODE := NRF52833_SVD.GPIOTE.Disabled;

      --  Configure PPI Channel 2
      NRF52833_SVD.PPI.PPI_Periph.CH (2).EEP := 
         UInt32 (To_Integer (NRF52833_SVD.GPIOTE.GPIOTE_Periph.EVENTS_IN (0)'Address));
      NRF52833_SVD.PPI.PPI_Periph.CH (2).TEP := 
         UInt32 (To_Integer (NRF52833_SVD.TIMER.TIMER1_Periph.TASKS_CAPTURE (0)'Address));
         
      --  Enable PPI Channel 2
      NRF52833_SVD.PPI.PPI_Periph.CHENSET.Arr (2) := NRF52833_SVD.PPI.Set;

      --  Calibration / Baseline calculation
      for I in 1 .. 10 loop
         Sum := Sum + Measure_Charge_Time;
         for J in 1 .. 50_000 loop
            null;
         end loop;
      end loop;
      Baseline_Time := Sum / 10;
   end Initialize;

   task Logo_Sampler is
      pragma Priority (10);
   end Logo_Sampler;

   task body Logo_Sampler is
      Time_Taken : Natural;
      Next_Time  : Time;
   begin
      Next_Time := Clock + Milliseconds (50);
      loop
         if Baseline_Time > 0 then
            Time_Taken := Measure_Charge_Time;
            if Time_Taken > Baseline_Time + (Baseline_Time / 2) then
               Shared_State.Set (True);
            else
               Shared_State.Set (False);
            end if;
         end if;
         delay until Next_Time;
         Next_Time := Next_Time + Milliseconds (50);
      end loop;
   end Logo_Sampler;

   function Is_Touched return Boolean is
   begin
      return Shared_State.Get;
   end Is_Touched;

end Microbit.Logo;
