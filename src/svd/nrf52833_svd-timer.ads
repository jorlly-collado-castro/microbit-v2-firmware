pragma Style_Checks (Off);

--  Copyright (c) 2010 - 2020, Nordic Semiconductor ASA All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions are met:
--
--  1. Redistributions of source code must retain the above copyright notice, this
--  list of conditions and the following disclaimer.
--
--  2. Redistributions in binary form must reproduce the above copyright
--  notice, this list of conditions and the following disclaimer in the
--  documentation and/or other materials provided with the distribution.
--
--  3. Neither the name of Nordic Semiconductor ASA nor the names of its
--  contributors may be used to endorse or promote products derived from this
--  software without specific prior written permission.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
--  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
--  IMPLIED WARRANTIES OF MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE
--  ARE DISCLAIMED. IN NO EVENT SHALL NORDIC SEMICONDUCTOR ASA OR CONTRIBUTORS BE
--  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
--  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
--  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
--  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
--  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--  POSSIBILITY OF SUCH DAMAGE.
--

--  This spec has been automatically generated from nrf52833.svd

pragma Restrictions (No_Elaboration_Code);

with NRF52833_SVD;
with System;

package NRF52833_SVD.TIMER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start Timer
   type TASKS_START_TASKS_START_Field is
     (--  Reset value for the field
      TASKS_START_TASKS_START_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_START_TASKS_START_Field use
     (TASKS_START_TASKS_START_Field_Reset => 0,
      Trigger => 1);

   --  Start Timer
   type TASKS_START_Register is record
      --  Write-only. Start Timer
      TASKS_START   : TASKS_START_TASKS_START_Field :=
                       TASKS_START_TASKS_START_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_START_Register use record
      TASKS_START   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stop Timer
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop Timer
   type TASKS_STOP_Register is record
      --  Write-only. Stop Timer
      TASKS_STOP    : TASKS_STOP_TASKS_STOP_Field :=
                       TASKS_STOP_TASKS_STOP_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STOP_Register use record
      TASKS_STOP    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Increment Timer (Counter mode only)
   type TASKS_COUNT_TASKS_COUNT_Field is
     (--  Reset value for the field
      TASKS_COUNT_TASKS_COUNT_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_COUNT_TASKS_COUNT_Field use
     (TASKS_COUNT_TASKS_COUNT_Field_Reset => 0,
      Trigger => 1);

   --  Increment Timer (Counter mode only)
   type TASKS_COUNT_Register is record
      --  Write-only. Increment Timer (Counter mode only)
      TASKS_COUNT   : TASKS_COUNT_TASKS_COUNT_Field :=
                       TASKS_COUNT_TASKS_COUNT_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_COUNT_Register use record
      TASKS_COUNT   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Clear time
   type TASKS_CLEAR_TASKS_CLEAR_Field is
     (--  Reset value for the field
      TASKS_CLEAR_TASKS_CLEAR_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CLEAR_TASKS_CLEAR_Field use
     (TASKS_CLEAR_TASKS_CLEAR_Field_Reset => 0,
      Trigger => 1);

   --  Clear time
   type TASKS_CLEAR_Register is record
      --  Write-only. Clear time
      TASKS_CLEAR   : TASKS_CLEAR_TASKS_CLEAR_Field :=
                       TASKS_CLEAR_TASKS_CLEAR_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CLEAR_Register use record
      TASKS_CLEAR   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Deprecated field - Shut down timer
   type TASKS_SHUTDOWN_TASKS_SHUTDOWN_Field is
     (--  Reset value for the field
      TASKS_SHUTDOWN_TASKS_SHUTDOWN_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_SHUTDOWN_TASKS_SHUTDOWN_Field use
     (TASKS_SHUTDOWN_TASKS_SHUTDOWN_Field_Reset => 0,
      Trigger => 1);

   --  Deprecated register - Shut down timer
   type TASKS_SHUTDOWN_Register is record
      --  Write-only. Deprecated field - Shut down timer
      TASKS_SHUTDOWN : TASKS_SHUTDOWN_TASKS_SHUTDOWN_Field :=
                        TASKS_SHUTDOWN_TASKS_SHUTDOWN_Field_Reset;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_SHUTDOWN_Register use record
      TASKS_SHUTDOWN at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Capture Timer value to CC[n] register
   type TASKS_CAPTURE_TASKS_CAPTURE_Field is
     (--  Reset value for the field
      TASKS_CAPTURE_TASKS_CAPTURE_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CAPTURE_TASKS_CAPTURE_Field use
     (TASKS_CAPTURE_TASKS_CAPTURE_Field_Reset => 0,
      Trigger => 1);

   --  Description collection: Capture Timer value to CC[n] register
   type TASKS_CAPTURE_Register is record
      --  Write-only. Capture Timer value to CC[n] register
      TASKS_CAPTURE : TASKS_CAPTURE_TASKS_CAPTURE_Field :=
                       TASKS_CAPTURE_TASKS_CAPTURE_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CAPTURE_Register use record
      TASKS_CAPTURE at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Description collection: Capture Timer value to CC[n] register
   type TASKS_CAPTURE_Registers is array (0 .. 5) of TASKS_CAPTURE_Register;

   --  Compare event on CC[n] match
   type EVENTS_COMPARE_EVENTS_COMPARE_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_COMPARE_EVENTS_COMPARE_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Description collection: Compare event on CC[n] match
   type EVENTS_COMPARE_Register is record
      --  Compare event on CC[n] match
      EVENTS_COMPARE : EVENTS_COMPARE_EVENTS_COMPARE_Field :=
                        NRF52833_SVD.TIMER.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_COMPARE_Register use record
      EVENTS_COMPARE at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Description collection: Compare event on CC[n] match
   type EVENTS_COMPARE_Registers is array (0 .. 5) of EVENTS_COMPARE_Register;

   --  Shortcut between event COMPARE[0] and task CLEAR
   type SHORTS_COMPARE0_CLEAR_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE0_CLEAR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[1] and task CLEAR
   type SHORTS_COMPARE1_CLEAR_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE1_CLEAR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[2] and task CLEAR
   type SHORTS_COMPARE2_CLEAR_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE2_CLEAR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[3] and task CLEAR
   type SHORTS_COMPARE3_CLEAR_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE3_CLEAR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[4] and task CLEAR
   type SHORTS_COMPARE4_CLEAR_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE4_CLEAR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[5] and task CLEAR
   type SHORTS_COMPARE5_CLEAR_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE5_CLEAR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[0] and task STOP
   type SHORTS_COMPARE0_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE0_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[1] and task STOP
   type SHORTS_COMPARE1_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE1_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[2] and task STOP
   type SHORTS_COMPARE2_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE2_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[3] and task STOP
   type SHORTS_COMPARE3_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE3_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[4] and task STOP
   type SHORTS_COMPARE4_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE4_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event COMPARE[5] and task STOP
   type SHORTS_COMPARE5_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_COMPARE5_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcuts between local events and tasks
   type SHORTS_Register is record
      --  Shortcut between event COMPARE[0] and task CLEAR
      COMPARE0_CLEAR : SHORTS_COMPARE0_CLEAR_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[1] and task CLEAR
      COMPARE1_CLEAR : SHORTS_COMPARE1_CLEAR_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[2] and task CLEAR
      COMPARE2_CLEAR : SHORTS_COMPARE2_CLEAR_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[3] and task CLEAR
      COMPARE3_CLEAR : SHORTS_COMPARE3_CLEAR_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[4] and task CLEAR
      COMPARE4_CLEAR : SHORTS_COMPARE4_CLEAR_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[5] and task CLEAR
      COMPARE5_CLEAR : SHORTS_COMPARE5_CLEAR_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  unspecified
      Reserved_6_7   : NRF52833_SVD.UInt2 := 16#0#;
      --  Shortcut between event COMPARE[0] and task STOP
      COMPARE0_STOP  : SHORTS_COMPARE0_STOP_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[1] and task STOP
      COMPARE1_STOP  : SHORTS_COMPARE1_STOP_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[2] and task STOP
      COMPARE2_STOP  : SHORTS_COMPARE2_STOP_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[3] and task STOP
      COMPARE3_STOP  : SHORTS_COMPARE3_STOP_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[4] and task STOP
      COMPARE4_STOP  : SHORTS_COMPARE4_STOP_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  Shortcut between event COMPARE[5] and task STOP
      COMPARE5_STOP  : SHORTS_COMPARE5_STOP_Field :=
                        NRF52833_SVD.TIMER.Disabled;
      --  unspecified
      Reserved_14_31 : NRF52833_SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      COMPARE0_CLEAR at 0 range 0 .. 0;
      COMPARE1_CLEAR at 0 range 1 .. 1;
      COMPARE2_CLEAR at 0 range 2 .. 2;
      COMPARE3_CLEAR at 0 range 3 .. 3;
      COMPARE4_CLEAR at 0 range 4 .. 4;
      COMPARE5_CLEAR at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      COMPARE0_STOP  at 0 range 8 .. 8;
      COMPARE1_STOP  at 0 range 9 .. 9;
      COMPARE2_STOP  at 0 range 10 .. 10;
      COMPARE3_STOP  at 0 range 11 .. 11;
      COMPARE4_STOP  at 0 range 12 .. 12;
      COMPARE5_STOP  at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Write '1' to enable interrupt for event COMPARE[0]
   type INTENSET_COMPARE0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_COMPARE0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event COMPARE[0]
   type INTENSET_COMPARE0_Field_1 is
     (--  Reset value for the field
      INTENSET_COMPARE0_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_COMPARE0_Field_1 use
     (INTENSET_COMPARE0_Field_Reset => 0,
      Set => 1);

   --  INTENSET_COMPARE array
   type INTENSET_COMPARE_Field_Array is array (0 .. 5)
     of INTENSET_COMPARE0_Field_1
     with Component_Size => 1, Size => 6;

   --  Type definition for INTENSET_COMPARE
   type INTENSET_COMPARE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMPARE as a value
            Val : NRF52833_SVD.UInt6;
         when True =>
            --  COMPARE as an array
            Arr : INTENSET_COMPARE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for INTENSET_COMPARE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_15  : NRF52833_SVD.UInt16 := 16#0#;
      --  Write '1' to enable interrupt for event COMPARE[0]
      COMPARE        : INTENSET_COMPARE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : NRF52833_SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      COMPARE        at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Write '1' to disable interrupt for event COMPARE[0]
   type INTENCLR_COMPARE0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_COMPARE0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event COMPARE[0]
   type INTENCLR_COMPARE0_Field_1 is
     (--  Reset value for the field
      INTENCLR_COMPARE0_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_COMPARE0_Field_1 use
     (INTENCLR_COMPARE0_Field_Reset => 0,
      Clear => 1);

   --  INTENCLR_COMPARE array
   type INTENCLR_COMPARE_Field_Array is array (0 .. 5)
     of INTENCLR_COMPARE0_Field_1
     with Component_Size => 1, Size => 6;

   --  Type definition for INTENCLR_COMPARE
   type INTENCLR_COMPARE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMPARE as a value
            Val : NRF52833_SVD.UInt6;
         when True =>
            --  COMPARE as an array
            Arr : INTENCLR_COMPARE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 6;

   for INTENCLR_COMPARE_Field use record
      Val at 0 range 0 .. 5;
      Arr at 0 range 0 .. 5;
   end record;

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_15  : NRF52833_SVD.UInt16 := 16#0#;
      --  Write '1' to disable interrupt for event COMPARE[0]
      COMPARE        : INTENCLR_COMPARE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_22_31 : NRF52833_SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      COMPARE        at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Timer mode
   type MODE_MODE_Field is
     (--  Select Timer mode
      Timer,
      --  Deprecated enumerator - Select Counter mode
      Counter,
      --  Select Low Power Counter mode
      LowPowerCounter)
     with Size => 2;
   for MODE_MODE_Field use
     (Timer => 0,
      Counter => 1,
      LowPowerCounter => 2);

   --  Timer mode selection
   type MODE_Register is record
      --  Timer mode
      MODE          : MODE_MODE_Field := NRF52833_SVD.TIMER.Timer;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      MODE          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Timer bit width
   type BITMODE_BITMODE_Field is
     (--  16 bit timer bit width
      Val_16Bit,
      --  8 bit timer bit width
      Val_08Bit,
      --  24 bit timer bit width
      Val_24Bit,
      --  32 bit timer bit width
      Val_32Bit)
     with Size => 2;
   for BITMODE_BITMODE_Field use
     (Val_16Bit => 0,
      Val_08Bit => 1,
      Val_24Bit => 2,
      Val_32Bit => 3);

   --  Configure the number of bits used by the TIMER
   type BITMODE_Register is record
      --  Timer bit width
      BITMODE       : BITMODE_BITMODE_Field := NRF52833_SVD.TIMER.Val_16Bit;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BITMODE_Register use record
      BITMODE       at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype PRESCALER_PRESCALER_Field is NRF52833_SVD.UInt4;

   --  Timer prescaler register
   type PRESCALER_Register is record
      --  Prescaler value
      PRESCALER     : PRESCALER_PRESCALER_Field := 16#4#;
      --  unspecified
      Reserved_4_31 : NRF52833_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESCALER_Register use record
      PRESCALER     at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Description collection: Capture/Compare register n

   --  Description collection: Capture/Compare register n
   type CC_Registers is array (0 .. 5) of NRF52833_SVD.UInt32;

   -----------------
   -- Peripherals --
   -----------------

   --  Timer/Counter 0
   type TIMER_Peripheral is record
      --  Start Timer
      TASKS_START    : aliased TASKS_START_Register;
      --  Stop Timer
      TASKS_STOP     : aliased TASKS_STOP_Register;
      --  Increment Timer (Counter mode only)
      TASKS_COUNT    : aliased TASKS_COUNT_Register;
      --  Clear time
      TASKS_CLEAR    : aliased TASKS_CLEAR_Register;
      --  Deprecated register - Shut down timer
      TASKS_SHUTDOWN : aliased TASKS_SHUTDOWN_Register;
      --  Description collection: Capture Timer value to CC[n] register
      TASKS_CAPTURE  : aliased TASKS_CAPTURE_Registers;
      --  Description collection: Compare event on CC[n] match
      EVENTS_COMPARE : aliased EVENTS_COMPARE_Registers;
      --  Shortcuts between local events and tasks
      SHORTS         : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET       : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR       : aliased INTENCLR_Register;
      --  Timer mode selection
      MODE           : aliased MODE_Register;
      --  Configure the number of bits used by the TIMER
      BITMODE        : aliased BITMODE_Register;
      --  Timer prescaler register
      PRESCALER      : aliased PRESCALER_Register;
      --  Description collection: Capture/Compare register n
      CC             : aliased CC_Registers;
   end record
     with Volatile;

   for TIMER_Peripheral use record
      TASKS_START    at 16#0# range 0 .. 31;
      TASKS_STOP     at 16#4# range 0 .. 31;
      TASKS_COUNT    at 16#8# range 0 .. 31;
      TASKS_CLEAR    at 16#C# range 0 .. 31;
      TASKS_SHUTDOWN at 16#10# range 0 .. 31;
      TASKS_CAPTURE  at 16#40# range 0 .. 191;
      EVENTS_COMPARE at 16#140# range 0 .. 191;
      SHORTS         at 16#200# range 0 .. 31;
      INTENSET       at 16#304# range 0 .. 31;
      INTENCLR       at 16#308# range 0 .. 31;
      MODE           at 16#504# range 0 .. 31;
      BITMODE        at 16#508# range 0 .. 31;
      PRESCALER      at 16#510# range 0 .. 31;
      CC             at 16#540# range 0 .. 191;
   end record;

   --  Timer/Counter 0
   TIMER0_Periph : aliased TIMER_Peripheral
     with Import, Address => TIMER0_Base;

   --  Timer/Counter 1
   TIMER1_Periph : aliased TIMER_Peripheral
     with Import, Address => TIMER1_Base;

   --  Timer/Counter 2
   TIMER2_Periph : aliased TIMER_Peripheral
     with Import, Address => TIMER2_Base;

   --  Timer/Counter 3
   TIMER3_Periph : aliased TIMER_Peripheral
     with Import, Address => TIMER3_Base;

   --  Timer/Counter 4
   TIMER4_Periph : aliased TIMER_Peripheral
     with Import, Address => TIMER4_Base;

end NRF52833_SVD.TIMER;
