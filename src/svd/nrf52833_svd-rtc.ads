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

package NRF52833_SVD.RTC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start RTC COUNTER
   type TASKS_START_TASKS_START_Field is
     (--  Reset value for the field
      TASKS_START_TASKS_START_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_START_TASKS_START_Field use
     (TASKS_START_TASKS_START_Field_Reset => 0,
      Trigger => 1);

   --  Start RTC COUNTER
   type TASKS_START_Register is record
      --  Write-only. Start RTC COUNTER
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

   --  Stop RTC COUNTER
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop RTC COUNTER
   type TASKS_STOP_Register is record
      --  Write-only. Stop RTC COUNTER
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

   --  Clear RTC COUNTER
   type TASKS_CLEAR_TASKS_CLEAR_Field is
     (--  Reset value for the field
      TASKS_CLEAR_TASKS_CLEAR_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CLEAR_TASKS_CLEAR_Field use
     (TASKS_CLEAR_TASKS_CLEAR_Field_Reset => 0,
      Trigger => 1);

   --  Clear RTC COUNTER
   type TASKS_CLEAR_Register is record
      --  Write-only. Clear RTC COUNTER
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

   --  Set COUNTER to 0xFFFFF0
   type TASKS_TRIGOVRFLW_TASKS_TRIGOVRFLW_Field is
     (--  Reset value for the field
      TASKS_TRIGOVRFLW_TASKS_TRIGOVRFLW_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_TRIGOVRFLW_TASKS_TRIGOVRFLW_Field use
     (TASKS_TRIGOVRFLW_TASKS_TRIGOVRFLW_Field_Reset => 0,
      Trigger => 1);

   --  Set COUNTER to 0xFFFFF0
   type TASKS_TRIGOVRFLW_Register is record
      --  Write-only. Set COUNTER to 0xFFFFF0
      TASKS_TRIGOVRFLW : TASKS_TRIGOVRFLW_TASKS_TRIGOVRFLW_Field :=
                          TASKS_TRIGOVRFLW_TASKS_TRIGOVRFLW_Field_Reset;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_TRIGOVRFLW_Register use record
      TASKS_TRIGOVRFLW at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Event on COUNTER increment
   type EVENTS_TICK_EVENTS_TICK_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_TICK_EVENTS_TICK_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Event on COUNTER increment
   type EVENTS_TICK_Register is record
      --  Event on COUNTER increment
      EVENTS_TICK   : EVENTS_TICK_EVENTS_TICK_Field :=
                       NRF52833_SVD.RTC.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_TICK_Register use record
      EVENTS_TICK   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Event on COUNTER overflow
   type EVENTS_OVRFLW_EVENTS_OVRFLW_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_OVRFLW_EVENTS_OVRFLW_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Event on COUNTER overflow
   type EVENTS_OVRFLW_Register is record
      --  Event on COUNTER overflow
      EVENTS_OVRFLW : EVENTS_OVRFLW_EVENTS_OVRFLW_Field :=
                       NRF52833_SVD.RTC.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_OVRFLW_Register use record
      EVENTS_OVRFLW at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

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
                        NRF52833_SVD.RTC.NotGenerated;
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
   type EVENTS_COMPARE_Registers is array (0 .. 3) of EVENTS_COMPARE_Register;

   --  Write '1' to enable interrupt for event TICK
   type INTENSET_TICK_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TICK_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event TICK
   type INTENSET_TICK_Field_1 is
     (--  Reset value for the field
      INTENSET_TICK_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TICK_Field_1 use
     (INTENSET_TICK_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event OVRFLW
   type INTENSET_OVRFLW_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_OVRFLW_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event OVRFLW
   type INTENSET_OVRFLW_Field_1 is
     (--  Reset value for the field
      INTENSET_OVRFLW_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_OVRFLW_Field_1 use
     (INTENSET_OVRFLW_Field_Reset => 0,
      Set => 1);

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
   type INTENSET_COMPARE_Field_Array is array (0 .. 3)
     of INTENSET_COMPARE0_Field_1
     with Component_Size => 1, Size => 4;

   --  Type definition for INTENSET_COMPARE
   type INTENSET_COMPARE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMPARE as a value
            Val : NRF52833_SVD.UInt4;
         when True =>
            --  COMPARE as an array
            Arr : INTENSET_COMPARE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for INTENSET_COMPARE_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event TICK
      TICK           : INTENSET_TICK_Field_1 := INTENSET_TICK_Field_Reset;
      --  Write '1' to enable interrupt for event OVRFLW
      OVRFLW         : INTENSET_OVRFLW_Field_1 := INTENSET_OVRFLW_Field_Reset;
      --  unspecified
      Reserved_2_15  : NRF52833_SVD.UInt14 := 16#0#;
      --  Write '1' to enable interrupt for event COMPARE[0]
      COMPARE        : INTENSET_COMPARE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : NRF52833_SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      TICK           at 0 range 0 .. 0;
      OVRFLW         at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      COMPARE        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Write '1' to disable interrupt for event TICK
   type INTENCLR_TICK_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TICK_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event TICK
   type INTENCLR_TICK_Field_1 is
     (--  Reset value for the field
      INTENCLR_TICK_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TICK_Field_1 use
     (INTENCLR_TICK_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event OVRFLW
   type INTENCLR_OVRFLW_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_OVRFLW_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event OVRFLW
   type INTENCLR_OVRFLW_Field_1 is
     (--  Reset value for the field
      INTENCLR_OVRFLW_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_OVRFLW_Field_1 use
     (INTENCLR_OVRFLW_Field_Reset => 0,
      Clear => 1);

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
   type INTENCLR_COMPARE_Field_Array is array (0 .. 3)
     of INTENCLR_COMPARE0_Field_1
     with Component_Size => 1, Size => 4;

   --  Type definition for INTENCLR_COMPARE
   type INTENCLR_COMPARE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMPARE as a value
            Val : NRF52833_SVD.UInt4;
         when True =>
            --  COMPARE as an array
            Arr : INTENCLR_COMPARE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for INTENCLR_COMPARE_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event TICK
      TICK           : INTENCLR_TICK_Field_1 := INTENCLR_TICK_Field_Reset;
      --  Write '1' to disable interrupt for event OVRFLW
      OVRFLW         : INTENCLR_OVRFLW_Field_1 := INTENCLR_OVRFLW_Field_Reset;
      --  unspecified
      Reserved_2_15  : NRF52833_SVD.UInt14 := 16#0#;
      --  Write '1' to disable interrupt for event COMPARE[0]
      COMPARE        : INTENCLR_COMPARE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : NRF52833_SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      TICK           at 0 range 0 .. 0;
      OVRFLW         at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      COMPARE        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Enable or disable event routing for event TICK
   type EVTEN_TICK_Field is
     (--  Disable
      Disabled,
      --  Disable
      Enabled)
     with Size => 1;
   for EVTEN_TICK_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable event routing for event OVRFLW
   type EVTEN_OVRFLW_Field is
     (--  Disable
      Disabled,
      --  Disable
      Enabled)
     with Size => 1;
   for EVTEN_OVRFLW_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable event routing for event COMPARE[0]
   type EVTEN_COMPARE0_Field is
     (--  Disable
      Disabled,
      --  Disable
      Enabled)
     with Size => 1;
   for EVTEN_COMPARE0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  EVTEN_COMPARE array
   type EVTEN_COMPARE_Field_Array is array (0 .. 3) of EVTEN_COMPARE0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for EVTEN_COMPARE
   type EVTEN_COMPARE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMPARE as a value
            Val : NRF52833_SVD.UInt4;
         when True =>
            --  COMPARE as an array
            Arr : EVTEN_COMPARE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EVTEN_COMPARE_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Enable or disable event routing
   type EVTEN_Register is record
      --  Enable or disable event routing for event TICK
      TICK           : EVTEN_TICK_Field := NRF52833_SVD.RTC.Disabled;
      --  Enable or disable event routing for event OVRFLW
      OVRFLW         : EVTEN_OVRFLW_Field := NRF52833_SVD.RTC.Disabled;
      --  unspecified
      Reserved_2_15  : NRF52833_SVD.UInt14 := 16#0#;
      --  Enable or disable event routing for event COMPARE[0]
      COMPARE        : EVTEN_COMPARE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : NRF52833_SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVTEN_Register use record
      TICK           at 0 range 0 .. 0;
      OVRFLW         at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      COMPARE        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Write '1' to enable event routing for event TICK
   type EVTENSET_TICK_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for EVTENSET_TICK_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable event routing for event TICK
   type EVTENSET_TICK_Field_1 is
     (--  Reset value for the field
      EVTENSET_TICK_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for EVTENSET_TICK_Field_1 use
     (EVTENSET_TICK_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable event routing for event OVRFLW
   type EVTENSET_OVRFLW_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for EVTENSET_OVRFLW_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable event routing for event OVRFLW
   type EVTENSET_OVRFLW_Field_1 is
     (--  Reset value for the field
      EVTENSET_OVRFLW_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for EVTENSET_OVRFLW_Field_1 use
     (EVTENSET_OVRFLW_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable event routing for event COMPARE[0]
   type EVTENSET_COMPARE0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for EVTENSET_COMPARE0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable event routing for event COMPARE[0]
   type EVTENSET_COMPARE0_Field_1 is
     (--  Reset value for the field
      EVTENSET_COMPARE0_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for EVTENSET_COMPARE0_Field_1 use
     (EVTENSET_COMPARE0_Field_Reset => 0,
      Set => 1);

   --  EVTENSET_COMPARE array
   type EVTENSET_COMPARE_Field_Array is array (0 .. 3)
     of EVTENSET_COMPARE0_Field_1
     with Component_Size => 1, Size => 4;

   --  Type definition for EVTENSET_COMPARE
   type EVTENSET_COMPARE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMPARE as a value
            Val : NRF52833_SVD.UInt4;
         when True =>
            --  COMPARE as an array
            Arr : EVTENSET_COMPARE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EVTENSET_COMPARE_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Enable event routing
   type EVTENSET_Register is record
      --  Write '1' to enable event routing for event TICK
      TICK           : EVTENSET_TICK_Field_1 := EVTENSET_TICK_Field_Reset;
      --  Write '1' to enable event routing for event OVRFLW
      OVRFLW         : EVTENSET_OVRFLW_Field_1 := EVTENSET_OVRFLW_Field_Reset;
      --  unspecified
      Reserved_2_15  : NRF52833_SVD.UInt14 := 16#0#;
      --  Write '1' to enable event routing for event COMPARE[0]
      COMPARE        : EVTENSET_COMPARE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : NRF52833_SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVTENSET_Register use record
      TICK           at 0 range 0 .. 0;
      OVRFLW         at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      COMPARE        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Write '1' to disable event routing for event TICK
   type EVTENCLR_TICK_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for EVTENCLR_TICK_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable event routing for event TICK
   type EVTENCLR_TICK_Field_1 is
     (--  Reset value for the field
      EVTENCLR_TICK_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for EVTENCLR_TICK_Field_1 use
     (EVTENCLR_TICK_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable event routing for event OVRFLW
   type EVTENCLR_OVRFLW_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for EVTENCLR_OVRFLW_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable event routing for event OVRFLW
   type EVTENCLR_OVRFLW_Field_1 is
     (--  Reset value for the field
      EVTENCLR_OVRFLW_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for EVTENCLR_OVRFLW_Field_1 use
     (EVTENCLR_OVRFLW_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable event routing for event COMPARE[0]
   type EVTENCLR_COMPARE0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for EVTENCLR_COMPARE0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable event routing for event COMPARE[0]
   type EVTENCLR_COMPARE0_Field_1 is
     (--  Reset value for the field
      EVTENCLR_COMPARE0_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for EVTENCLR_COMPARE0_Field_1 use
     (EVTENCLR_COMPARE0_Field_Reset => 0,
      Clear => 1);

   --  EVTENCLR_COMPARE array
   type EVTENCLR_COMPARE_Field_Array is array (0 .. 3)
     of EVTENCLR_COMPARE0_Field_1
     with Component_Size => 1, Size => 4;

   --  Type definition for EVTENCLR_COMPARE
   type EVTENCLR_COMPARE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMPARE as a value
            Val : NRF52833_SVD.UInt4;
         when True =>
            --  COMPARE as an array
            Arr : EVTENCLR_COMPARE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for EVTENCLR_COMPARE_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Disable event routing
   type EVTENCLR_Register is record
      --  Write '1' to disable event routing for event TICK
      TICK           : EVTENCLR_TICK_Field_1 := EVTENCLR_TICK_Field_Reset;
      --  Write '1' to disable event routing for event OVRFLW
      OVRFLW         : EVTENCLR_OVRFLW_Field_1 := EVTENCLR_OVRFLW_Field_Reset;
      --  unspecified
      Reserved_2_15  : NRF52833_SVD.UInt14 := 16#0#;
      --  Write '1' to disable event routing for event COMPARE[0]
      COMPARE        : EVTENCLR_COMPARE_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_31 : NRF52833_SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVTENCLR_Register use record
      TICK           at 0 range 0 .. 0;
      OVRFLW         at 0 range 1 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      COMPARE        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype COUNTER_COUNTER_Field is NRF52833_SVD.UInt24;

   --  Current COUNTER value
   type COUNTER_Register is record
      --  Read-only. Counter value
      COUNTER        : COUNTER_COUNTER_Field;
      --  unspecified
      Reserved_24_31 : NRF52833_SVD.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COUNTER_Register use record
      COUNTER        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype PRESCALER_PRESCALER_Field is NRF52833_SVD.UInt12;

   --  12 bit prescaler for COUNTER frequency (32768/(PRESCALER+1)).Must be
   --  written when RTC is stopped
   type PRESCALER_Register is record
      --  Prescaler value
      PRESCALER      : PRESCALER_PRESCALER_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : NRF52833_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESCALER_Register use record
      PRESCALER      at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CC_COMPARE_Field is NRF52833_SVD.UInt24;

   --  Description collection: Compare register n
   type CC_Register is record
      --  Compare value
      COMPARE        : CC_COMPARE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : NRF52833_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC_Register use record
      COMPARE        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Description collection: Compare register n
   type CC_Registers is array (0 .. 3) of CC_Register;

   -----------------
   -- Peripherals --
   -----------------

   --  Real time counter 0
   type RTC_Peripheral is record
      --  Start RTC COUNTER
      TASKS_START      : aliased TASKS_START_Register;
      --  Stop RTC COUNTER
      TASKS_STOP       : aliased TASKS_STOP_Register;
      --  Clear RTC COUNTER
      TASKS_CLEAR      : aliased TASKS_CLEAR_Register;
      --  Set COUNTER to 0xFFFFF0
      TASKS_TRIGOVRFLW : aliased TASKS_TRIGOVRFLW_Register;
      --  Event on COUNTER increment
      EVENTS_TICK      : aliased EVENTS_TICK_Register;
      --  Event on COUNTER overflow
      EVENTS_OVRFLW    : aliased EVENTS_OVRFLW_Register;
      --  Description collection: Compare event on CC[n] match
      EVENTS_COMPARE   : aliased EVENTS_COMPARE_Registers;
      --  Enable interrupt
      INTENSET         : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR         : aliased INTENCLR_Register;
      --  Enable or disable event routing
      EVTEN            : aliased EVTEN_Register;
      --  Enable event routing
      EVTENSET         : aliased EVTENSET_Register;
      --  Disable event routing
      EVTENCLR         : aliased EVTENCLR_Register;
      --  Current COUNTER value
      COUNTER          : aliased COUNTER_Register;
      --  12 bit prescaler for COUNTER frequency (32768/(PRESCALER+1)).Must be
      --  written when RTC is stopped
      PRESCALER        : aliased PRESCALER_Register;
      --  Description collection: Compare register n
      CC               : aliased CC_Registers;
   end record
     with Volatile;

   for RTC_Peripheral use record
      TASKS_START      at 16#0# range 0 .. 31;
      TASKS_STOP       at 16#4# range 0 .. 31;
      TASKS_CLEAR      at 16#8# range 0 .. 31;
      TASKS_TRIGOVRFLW at 16#C# range 0 .. 31;
      EVENTS_TICK      at 16#100# range 0 .. 31;
      EVENTS_OVRFLW    at 16#104# range 0 .. 31;
      EVENTS_COMPARE   at 16#140# range 0 .. 127;
      INTENSET         at 16#304# range 0 .. 31;
      INTENCLR         at 16#308# range 0 .. 31;
      EVTEN            at 16#340# range 0 .. 31;
      EVTENSET         at 16#344# range 0 .. 31;
      EVTENCLR         at 16#348# range 0 .. 31;
      COUNTER          at 16#504# range 0 .. 31;
      PRESCALER        at 16#508# range 0 .. 31;
      CC               at 16#540# range 0 .. 127;
   end record;

   --  Real time counter 0
   RTC0_Periph : aliased RTC_Peripheral
     with Import, Address => RTC0_Base;

   --  Real time counter 1
   RTC1_Periph : aliased RTC_Peripheral
     with Import, Address => RTC1_Base;

   --  Real time counter 2
   RTC2_Periph : aliased RTC_Peripheral
     with Import, Address => RTC2_Base;

end NRF52833_SVD.RTC;
