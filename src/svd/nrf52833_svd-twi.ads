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

package NRF52833_SVD.TWI is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start TWI receive sequence
   type TASKS_STARTRX_TASKS_STARTRX_Field is
     (--  Reset value for the field
      TASKS_STARTRX_TASKS_STARTRX_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STARTRX_TASKS_STARTRX_Field use
     (TASKS_STARTRX_TASKS_STARTRX_Field_Reset => 0,
      Trigger => 1);

   --  Start TWI receive sequence
   type TASKS_STARTRX_Register is record
      --  Write-only. Start TWI receive sequence
      TASKS_STARTRX : TASKS_STARTRX_TASKS_STARTRX_Field :=
                       TASKS_STARTRX_TASKS_STARTRX_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STARTRX_Register use record
      TASKS_STARTRX at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start TWI transmit sequence
   type TASKS_STARTTX_TASKS_STARTTX_Field is
     (--  Reset value for the field
      TASKS_STARTTX_TASKS_STARTTX_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STARTTX_TASKS_STARTTX_Field use
     (TASKS_STARTTX_TASKS_STARTTX_Field_Reset => 0,
      Trigger => 1);

   --  Start TWI transmit sequence
   type TASKS_STARTTX_Register is record
      --  Write-only. Start TWI transmit sequence
      TASKS_STARTTX : TASKS_STARTTX_TASKS_STARTTX_Field :=
                       TASKS_STARTTX_TASKS_STARTTX_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STARTTX_Register use record
      TASKS_STARTTX at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stop TWI transaction
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop TWI transaction
   type TASKS_STOP_Register is record
      --  Write-only. Stop TWI transaction
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

   --  Suspend TWI transaction
   type TASKS_SUSPEND_TASKS_SUSPEND_Field is
     (--  Reset value for the field
      TASKS_SUSPEND_TASKS_SUSPEND_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_SUSPEND_TASKS_SUSPEND_Field use
     (TASKS_SUSPEND_TASKS_SUSPEND_Field_Reset => 0,
      Trigger => 1);

   --  Suspend TWI transaction
   type TASKS_SUSPEND_Register is record
      --  Write-only. Suspend TWI transaction
      TASKS_SUSPEND : TASKS_SUSPEND_TASKS_SUSPEND_Field :=
                       TASKS_SUSPEND_TASKS_SUSPEND_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_SUSPEND_Register use record
      TASKS_SUSPEND at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Resume TWI transaction
   type TASKS_RESUME_TASKS_RESUME_Field is
     (--  Reset value for the field
      TASKS_RESUME_TASKS_RESUME_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_RESUME_TASKS_RESUME_Field use
     (TASKS_RESUME_TASKS_RESUME_Field_Reset => 0,
      Trigger => 1);

   --  Resume TWI transaction
   type TASKS_RESUME_Register is record
      --  Write-only. Resume TWI transaction
      TASKS_RESUME  : TASKS_RESUME_TASKS_RESUME_Field :=
                       TASKS_RESUME_TASKS_RESUME_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_RESUME_Register use record
      TASKS_RESUME  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  TWI stopped
   type EVENTS_STOPPED_EVENTS_STOPPED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_STOPPED_EVENTS_STOPPED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  TWI stopped
   type EVENTS_STOPPED_Register is record
      --  TWI stopped
      EVENTS_STOPPED : EVENTS_STOPPED_EVENTS_STOPPED_Field :=
                        NRF52833_SVD.TWI.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_STOPPED_Register use record
      EVENTS_STOPPED at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  TWI RXD byte received
   type EVENTS_RXDREADY_EVENTS_RXDREADY_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_RXDREADY_EVENTS_RXDREADY_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  TWI RXD byte received
   type EVENTS_RXDREADY_Register is record
      --  TWI RXD byte received
      EVENTS_RXDREADY : EVENTS_RXDREADY_EVENTS_RXDREADY_Field :=
                         NRF52833_SVD.TWI.NotGenerated;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_RXDREADY_Register use record
      EVENTS_RXDREADY at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  TWI TXD byte sent
   type EVENTS_TXDSENT_EVENTS_TXDSENT_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_TXDSENT_EVENTS_TXDSENT_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  TWI TXD byte sent
   type EVENTS_TXDSENT_Register is record
      --  TWI TXD byte sent
      EVENTS_TXDSENT : EVENTS_TXDSENT_EVENTS_TXDSENT_Field :=
                        NRF52833_SVD.TWI.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_TXDSENT_Register use record
      EVENTS_TXDSENT at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  TWI error
   type EVENTS_ERROR_EVENTS_ERROR_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ERROR_EVENTS_ERROR_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  TWI error
   type EVENTS_ERROR_Register is record
      --  TWI error
      EVENTS_ERROR  : EVENTS_ERROR_EVENTS_ERROR_Field :=
                       NRF52833_SVD.TWI.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ERROR_Register use record
      EVENTS_ERROR  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  TWI byte boundary, generated before each byte that is sent or received
   type EVENTS_BB_EVENTS_BB_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_BB_EVENTS_BB_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  TWI byte boundary, generated before each byte that is sent or received
   type EVENTS_BB_Register is record
      --  TWI byte boundary, generated before each byte that is sent or
      --  received
      EVENTS_BB     : EVENTS_BB_EVENTS_BB_Field :=
                       NRF52833_SVD.TWI.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_BB_Register use record
      EVENTS_BB     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  TWI entered the suspended state
   type EVENTS_SUSPENDED_EVENTS_SUSPENDED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_SUSPENDED_EVENTS_SUSPENDED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  TWI entered the suspended state
   type EVENTS_SUSPENDED_Register is record
      --  TWI entered the suspended state
      EVENTS_SUSPENDED : EVENTS_SUSPENDED_EVENTS_SUSPENDED_Field :=
                          NRF52833_SVD.TWI.NotGenerated;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_SUSPENDED_Register use record
      EVENTS_SUSPENDED at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Shortcut between event BB and task SUSPEND
   type SHORTS_BB_SUSPEND_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_BB_SUSPEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event BB and task STOP
   type SHORTS_BB_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_BB_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcuts between local events and tasks
   type SHORTS_Register is record
      --  Shortcut between event BB and task SUSPEND
      BB_SUSPEND    : SHORTS_BB_SUSPEND_Field := NRF52833_SVD.TWI.Disabled;
      --  Shortcut between event BB and task STOP
      BB_STOP       : SHORTS_BB_STOP_Field := NRF52833_SVD.TWI.Disabled;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      BB_SUSPEND    at 0 range 0 .. 0;
      BB_STOP       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Write '1' to enable interrupt for event STOPPED
   type INTENSET_STOPPED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_STOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event STOPPED
   type INTENSET_STOPPED_Field_1 is
     (--  Reset value for the field
      INTENSET_STOPPED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_STOPPED_Field_1 use
     (INTENSET_STOPPED_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event RXDREADY
   type INTENSET_RXDREADY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXDREADY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event RXDREADY
   type INTENSET_RXDREADY_Field_1 is
     (--  Reset value for the field
      INTENSET_RXDREADY_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXDREADY_Field_1 use
     (INTENSET_RXDREADY_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event TXDSENT
   type INTENSET_TXDSENT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TXDSENT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event TXDSENT
   type INTENSET_TXDSENT_Field_1 is
     (--  Reset value for the field
      INTENSET_TXDSENT_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TXDSENT_Field_1 use
     (INTENSET_TXDSENT_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event ERROR
   type INTENSET_ERROR_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event ERROR
   type INTENSET_ERROR_Field_1 is
     (--  Reset value for the field
      INTENSET_ERROR_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ERROR_Field_1 use
     (INTENSET_ERROR_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event BB
   type INTENSET_BB_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_BB_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event BB
   type INTENSET_BB_Field_1 is
     (--  Reset value for the field
      INTENSET_BB_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_BB_Field_1 use
     (INTENSET_BB_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event SUSPENDED
   type INTENSET_SUSPENDED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SUSPENDED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event SUSPENDED
   type INTENSET_SUSPENDED_Field_1 is
     (--  Reset value for the field
      INTENSET_SUSPENDED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SUSPENDED_Field_1 use
     (INTENSET_SUSPENDED_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_0   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to enable interrupt for event STOPPED
      STOPPED        : INTENSET_STOPPED_Field_1 :=
                        INTENSET_STOPPED_Field_Reset;
      --  Write '1' to enable interrupt for event RXDREADY
      RXDREADY       : INTENSET_RXDREADY_Field_1 :=
                        INTENSET_RXDREADY_Field_Reset;
      --  unspecified
      Reserved_3_6   : NRF52833_SVD.UInt4 := 16#0#;
      --  Write '1' to enable interrupt for event TXDSENT
      TXDSENT        : INTENSET_TXDSENT_Field_1 :=
                        INTENSET_TXDSENT_Field_Reset;
      --  unspecified
      Reserved_8_8   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to enable interrupt for event ERROR
      ERROR          : INTENSET_ERROR_Field_1 := INTENSET_ERROR_Field_Reset;
      --  unspecified
      Reserved_10_13 : NRF52833_SVD.UInt4 := 16#0#;
      --  Write '1' to enable interrupt for event BB
      BB             : INTENSET_BB_Field_1 := INTENSET_BB_Field_Reset;
      --  unspecified
      Reserved_15_17 : NRF52833_SVD.UInt3 := 16#0#;
      --  Write '1' to enable interrupt for event SUSPENDED
      SUSPENDED      : INTENSET_SUSPENDED_Field_1 :=
                        INTENSET_SUSPENDED_Field_Reset;
      --  unspecified
      Reserved_19_31 : NRF52833_SVD.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      RXDREADY       at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      TXDSENT        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      BB             at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      SUSPENDED      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Write '1' to disable interrupt for event STOPPED
   type INTENCLR_STOPPED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_STOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event STOPPED
   type INTENCLR_STOPPED_Field_1 is
     (--  Reset value for the field
      INTENCLR_STOPPED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_STOPPED_Field_1 use
     (INTENCLR_STOPPED_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event RXDREADY
   type INTENCLR_RXDREADY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXDREADY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event RXDREADY
   type INTENCLR_RXDREADY_Field_1 is
     (--  Reset value for the field
      INTENCLR_RXDREADY_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXDREADY_Field_1 use
     (INTENCLR_RXDREADY_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event TXDSENT
   type INTENCLR_TXDSENT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TXDSENT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event TXDSENT
   type INTENCLR_TXDSENT_Field_1 is
     (--  Reset value for the field
      INTENCLR_TXDSENT_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TXDSENT_Field_1 use
     (INTENCLR_TXDSENT_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event ERROR
   type INTENCLR_ERROR_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event ERROR
   type INTENCLR_ERROR_Field_1 is
     (--  Reset value for the field
      INTENCLR_ERROR_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ERROR_Field_1 use
     (INTENCLR_ERROR_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event BB
   type INTENCLR_BB_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_BB_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event BB
   type INTENCLR_BB_Field_1 is
     (--  Reset value for the field
      INTENCLR_BB_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_BB_Field_1 use
     (INTENCLR_BB_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event SUSPENDED
   type INTENCLR_SUSPENDED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SUSPENDED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event SUSPENDED
   type INTENCLR_SUSPENDED_Field_1 is
     (--  Reset value for the field
      INTENCLR_SUSPENDED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SUSPENDED_Field_1 use
     (INTENCLR_SUSPENDED_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_0   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to disable interrupt for event STOPPED
      STOPPED        : INTENCLR_STOPPED_Field_1 :=
                        INTENCLR_STOPPED_Field_Reset;
      --  Write '1' to disable interrupt for event RXDREADY
      RXDREADY       : INTENCLR_RXDREADY_Field_1 :=
                        INTENCLR_RXDREADY_Field_Reset;
      --  unspecified
      Reserved_3_6   : NRF52833_SVD.UInt4 := 16#0#;
      --  Write '1' to disable interrupt for event TXDSENT
      TXDSENT        : INTENCLR_TXDSENT_Field_1 :=
                        INTENCLR_TXDSENT_Field_Reset;
      --  unspecified
      Reserved_8_8   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to disable interrupt for event ERROR
      ERROR          : INTENCLR_ERROR_Field_1 := INTENCLR_ERROR_Field_Reset;
      --  unspecified
      Reserved_10_13 : NRF52833_SVD.UInt4 := 16#0#;
      --  Write '1' to disable interrupt for event BB
      BB             : INTENCLR_BB_Field_1 := INTENCLR_BB_Field_Reset;
      --  unspecified
      Reserved_15_17 : NRF52833_SVD.UInt3 := 16#0#;
      --  Write '1' to disable interrupt for event SUSPENDED
      SUSPENDED      : INTENCLR_SUSPENDED_Field_1 :=
                        INTENCLR_SUSPENDED_Field_Reset;
      --  unspecified
      Reserved_19_31 : NRF52833_SVD.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      RXDREADY       at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      TXDSENT        at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_13 at 0 range 10 .. 13;
      BB             at 0 range 14 .. 14;
      Reserved_15_17 at 0 range 15 .. 17;
      SUSPENDED      at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Overrun error
   type ERRORSRC_OVERRUN_Field is
     (--  Read: no overrun occured
      NotPresent,
      --  Read: overrun occured
      Present)
     with Size => 1;
   for ERRORSRC_OVERRUN_Field use
     (NotPresent => 0,
      Present => 1);

   --  NACK received after sending the address (write '1' to clear)
   type ERRORSRC_ANACK_Field is
     (--  Read: error not present
      NotPresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_ANACK_Field use
     (NotPresent => 0,
      Present => 1);

   --  NACK received after sending a data byte (write '1' to clear)
   type ERRORSRC_DNACK_Field is
     (--  Read: error not present
      NotPresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_DNACK_Field use
     (NotPresent => 0,
      Present => 1);

   --  Error source
   type ERRORSRC_Register is record
      --  Overrun error
      OVERRUN       : ERRORSRC_OVERRUN_Field := NRF52833_SVD.TWI.NotPresent;
      --  NACK received after sending the address (write '1' to clear)
      ANACK         : ERRORSRC_ANACK_Field := NRF52833_SVD.TWI.NotPresent;
      --  NACK received after sending a data byte (write '1' to clear)
      DNACK         : ERRORSRC_DNACK_Field := NRF52833_SVD.TWI.NotPresent;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRORSRC_Register use record
      OVERRUN       at 0 range 0 .. 0;
      ANACK         at 0 range 1 .. 1;
      DNACK         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Enable or disable TWI
   type ENABLE_ENABLE_Field is
     (--  Disable TWI
      Disabled,
      --  Enable TWI
      Enabled)
     with Size => 4;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 5);

   --  Enable TWI
   type ENABLE_Register is record
      --  Enable or disable TWI
      ENABLE        : ENABLE_ENABLE_Field := NRF52833_SVD.TWI.Disabled;
      --  unspecified
      Reserved_4_31 : NRF52833_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   ----------------------------------
   -- TWI_PSEL cluster's Registers --
   ----------------------------------

   subtype SCL_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype SCL_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type SCL_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for SCL_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for SCL
   type SCL_PSEL_Register is record
      --  Pin number
      PIN           : SCL_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : SCL_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : SCL_CONNECT_Field := NRF52833_SVD.TWI.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCL_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype SDA_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype SDA_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type SDA_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for SDA_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for SDA
   type SDA_PSEL_Register is record
      --  Pin number
      PIN           : SDA_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : SDA_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : SDA_CONNECT_Field := NRF52833_SVD.TWI.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDA_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type TWI_PSEL_Cluster is record
      --  Pin select for SCL
      SCL : aliased SCL_PSEL_Register;
      --  Pin select for SDA
      SDA : aliased SDA_PSEL_Register;
   end record
     with Size => 64;

   for TWI_PSEL_Cluster use record
      SCL at 16#0# range 0 .. 31;
      SDA at 16#4# range 0 .. 31;
   end record;

   subtype RXD_RXD_Field is NRF52833_SVD.Byte;

   --  RXD register
   type RXD_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. RXD register
      RXD           : RXD_RXD_Field;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXD_Register use record
      RXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype TXD_TXD_Field is NRF52833_SVD.Byte;

   --  TXD register
   type TXD_Register is record
      --  TXD register
      TXD           : TXD_TXD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXD_Register use record
      TXD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ADDRESS_ADDRESS_Field is NRF52833_SVD.UInt7;

   --  Address used in the TWI transfer
   type ADDRESS_Register is record
      --  Address used in the TWI transfer
      ADDRESS       : ADDRESS_ADDRESS_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : NRF52833_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADDRESS_Register use record
      ADDRESS       at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   ----------------------------------
   -- TWI_PSEL cluster's Registers --
   ----------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  I2C compatible Two-Wire Interface 0
   type TWI_Peripheral is record
      --  Start TWI receive sequence
      TASKS_STARTRX    : aliased TASKS_STARTRX_Register;
      --  Start TWI transmit sequence
      TASKS_STARTTX    : aliased TASKS_STARTTX_Register;
      --  Stop TWI transaction
      TASKS_STOP       : aliased TASKS_STOP_Register;
      --  Suspend TWI transaction
      TASKS_SUSPEND    : aliased TASKS_SUSPEND_Register;
      --  Resume TWI transaction
      TASKS_RESUME     : aliased TASKS_RESUME_Register;
      --  TWI stopped
      EVENTS_STOPPED   : aliased EVENTS_STOPPED_Register;
      --  TWI RXD byte received
      EVENTS_RXDREADY  : aliased EVENTS_RXDREADY_Register;
      --  TWI TXD byte sent
      EVENTS_TXDSENT   : aliased EVENTS_TXDSENT_Register;
      --  TWI error
      EVENTS_ERROR     : aliased EVENTS_ERROR_Register;
      --  TWI byte boundary, generated before each byte that is sent or
      --  received
      EVENTS_BB        : aliased EVENTS_BB_Register;
      --  TWI entered the suspended state
      EVENTS_SUSPENDED : aliased EVENTS_SUSPENDED_Register;
      --  Shortcuts between local events and tasks
      SHORTS           : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET         : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR         : aliased INTENCLR_Register;
      --  Error source
      ERRORSRC         : aliased ERRORSRC_Register;
      --  Enable TWI
      ENABLE           : aliased ENABLE_Register;
      --  Unspecified
      PSEL             : aliased TWI_PSEL_Cluster;
      --  RXD register
      RXD              : aliased RXD_Register;
      --  TXD register
      TXD              : aliased TXD_Register;
      --  TWI frequency. Accuracy depends on the HFCLK source selected.
      FREQUENCY        : aliased NRF52833_SVD.UInt32;
      --  Address used in the TWI transfer
      ADDRESS          : aliased ADDRESS_Register;
   end record
     with Volatile;

   for TWI_Peripheral use record
      TASKS_STARTRX    at 16#0# range 0 .. 31;
      TASKS_STARTTX    at 16#8# range 0 .. 31;
      TASKS_STOP       at 16#14# range 0 .. 31;
      TASKS_SUSPEND    at 16#1C# range 0 .. 31;
      TASKS_RESUME     at 16#20# range 0 .. 31;
      EVENTS_STOPPED   at 16#104# range 0 .. 31;
      EVENTS_RXDREADY  at 16#108# range 0 .. 31;
      EVENTS_TXDSENT   at 16#11C# range 0 .. 31;
      EVENTS_ERROR     at 16#124# range 0 .. 31;
      EVENTS_BB        at 16#138# range 0 .. 31;
      EVENTS_SUSPENDED at 16#148# range 0 .. 31;
      SHORTS           at 16#200# range 0 .. 31;
      INTENSET         at 16#304# range 0 .. 31;
      INTENCLR         at 16#308# range 0 .. 31;
      ERRORSRC         at 16#4C4# range 0 .. 31;
      ENABLE           at 16#500# range 0 .. 31;
      PSEL             at 16#508# range 0 .. 63;
      RXD              at 16#518# range 0 .. 31;
      TXD              at 16#51C# range 0 .. 31;
      FREQUENCY        at 16#524# range 0 .. 31;
      ADDRESS          at 16#588# range 0 .. 31;
   end record;

   --  I2C compatible Two-Wire Interface 0
   TWI0_Periph : aliased TWI_Peripheral
     with Import, Address => TWI0_Base;

   --  I2C compatible Two-Wire Interface 1
   TWI1_Periph : aliased TWI_Peripheral
     with Import, Address => TWI1_Base;

end NRF52833_SVD.TWI;
