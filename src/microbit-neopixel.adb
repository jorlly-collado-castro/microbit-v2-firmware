pragma SPARK_Mode (Off);

with NRF52833_SVD.PWM;  use NRF52833_SVD.PWM;
with NRF52833_SVD;      use NRF52833_SVD;
with System.Storage_Elements;

package body Microbit.Neopixel is

   use type Microbit.Pins.Port_Id;
   use System.Storage_Elements;

   Bit_0 : constant Interfaces.Unsigned_16 := 16#8006#; -- High for 6 ticks (~0.375us)
   Bit_1 : constant Interfaces.Unsigned_16 := 16#800D#; -- High for 13 ticks (~0.81us)
   Pad   : constant Interfaces.Unsigned_16 := 16#8000#; -- Always low (reset pulse)
   Padding_Length : constant := 40;

   --  Raw 16-bit PWM sequence buffer type
   type PWM_Buffer is array (Natural range <>) of Interfaces.Unsigned_16;

   pragma Warnings (Off, "Internal_Buffer");
   Internal_Buffer : aliased PWM_Buffer (0 .. (Max_LEDs * 24) + Padding_Length - 1) := [others => Pad];
   pragma Volatile (Internal_Buffer);
   pragma Warnings (On, "Internal_Buffer");

   procedure Initialize (Pin : Microbit.Pins.Pin_Id := Microbit.Pins.P0) is
   begin
      --  Configure pin as output
      Microbit.Pins.Configure (Pin, Microbit.Pins.Output);

      --  Disable PWM1 before config
      PWM1_Periph.ENABLE := (ENABLE => Disabled, Reserved_1_31 => 0);

      --  Route PWM1 CH0 to the selected pin
      PWM1_Periph.PSEL.OUT_k (0) :=
        (PIN => OUT_PSEL_PIN_Field (Pin.Pin),
         PORT => OUT_PSEL_PORT_Field (if Pin.Port = Microbit.Pins.Port_0 then 0 else 1),
         CONNECT => Connected,
         others => <>);

      --  Disconnect other channels
      PWM1_Periph.PSEL.OUT_k (1) := (PIN => 31, PORT => 0, CONNECT => Disconnected, others => <>);
      PWM1_Periph.PSEL.OUT_k (2) := (PIN => 31, PORT => 0, CONNECT => Disconnected, others => <>);
      PWM1_Periph.PSEL.OUT_k (3) := (PIN => 31, PORT => 0, CONNECT => Disconnected, others => <>);

      --  Set base clock to 16 MHz
      PWM1_Periph.PRESCALER.PRESCALER := DIV_1;

      --  Set PWM mode to Up counter
      PWM1_Periph.MODE.UPDOWN := Up;

      --  Set Top Counter to 20 (1.25us per period for 800kHz)
      PWM1_Periph.COUNTERTOP.COUNTERTOP := 20;

      --  Use Common decoder mode (one 16-bit word controls all connected channels)
      PWM1_Periph.DECODER :=
        (LOAD          => Common,
         MODE          => RefreshCount,
         others        => <>);

      --  Enable PWM1
      PWM1_Periph.ENABLE := (ENABLE => Enabled, Reserved_1_31 => 0);
   end Initialize;

   procedure Set_SEQ_CNT (Value : UInt32) is
      CNT_Reg : UInt32 with Import, Volatile, Address => PWM1_Periph.SEQ (0).CNT'Address;
   begin
      CNT_Reg := Value;
   end Set_SEQ_CNT;

   procedure Show (Colors : Color_Array) is
      Idx : Natural := Internal_Buffer'First;
      use Interfaces;
      DMA_Length : Natural;
   begin
      for C of Colors loop
         --  Encode Green (MSB first)
         for I in reverse 0 .. 7 loop
            if (C.G and Shift_Left (Unsigned_8'(1), I)) /= 0 then
               Internal_Buffer (Idx) := Bit_1;
            else
               Internal_Buffer (Idx) := Bit_0;
            end if;
            Idx := @ + 1;
         end loop;

         --  Encode Red
         for I in reverse 0 .. 7 loop
            if (C.R and Shift_Left (Unsigned_8'(1), I)) /= 0 then
               Internal_Buffer (Idx) := Bit_1;
            else
               Internal_Buffer (Idx) := Bit_0;
            end if;
            Idx := @ + 1;
         end loop;

         --  Encode Blue
         for I in reverse 0 .. 7 loop
            if (C.B and Shift_Left (Unsigned_8'(1), I)) /= 0 then
               Internal_Buffer (Idx) := Bit_1;
            else
               Internal_Buffer (Idx) := Bit_0;
            end if;
            Idx := @ + 1;
         end loop;
      end loop;

      --  Add padding
      for I in 1 .. Padding_Length loop
         Internal_Buffer (Idx) := Pad;
         Idx := @ + 1;
      end loop;

      DMA_Length := Idx - Internal_Buffer'First;

      --  Stop any ongoing sequence
      PWM1_Periph.TASKS_STOP.TASKS_STOP := Trigger;
      
      PWM1_Periph.SEQ (0).PTR := UInt32 (To_Integer (Internal_Buffer (Internal_Buffer'First)'Address));
      Set_SEQ_CNT (UInt32 (DMA_Length));
      PWM1_Periph.SEQ (0).REFRESH.CNT := Continuous;
      PWM1_Periph.SEQ (0).ENDDELAY.CNT := 0;

      --  Automatically stop PWM after one full play
      PWM1_Periph.SHORTS.SEQEND0_STOP := Enabled;

      --  Start Sequence 0
      PWM1_Periph.TASKS_SEQSTART (0).TASKS_SEQSTART := Trigger;
   end Show;

end Microbit.Neopixel;