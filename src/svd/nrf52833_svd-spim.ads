pragma Warnings (Off);
pragma SPARK_Mode (Off);
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

package NRF52833_SVD.SPIM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start SPI transaction
   type TASKS_START_TASKS_START_Field is
     (--  Reset value for the field
      TASKS_START_TASKS_START_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_START_TASKS_START_Field use
     (TASKS_START_TASKS_START_Field_Reset => 0,
      Trigger => 1);

   --  Start SPI transaction
   type TASKS_START_Register is record
      --  Write-only. Start SPI transaction
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

   --  Stop SPI transaction
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop SPI transaction
   type TASKS_STOP_Register is record
      --  Write-only. Stop SPI transaction
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

   --  Suspend SPI transaction
   type TASKS_SUSPEND_TASKS_SUSPEND_Field is
     (--  Reset value for the field
      TASKS_SUSPEND_TASKS_SUSPEND_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_SUSPEND_TASKS_SUSPEND_Field use
     (TASKS_SUSPEND_TASKS_SUSPEND_Field_Reset => 0,
      Trigger => 1);

   --  Suspend SPI transaction
   type TASKS_SUSPEND_Register is record
      --  Write-only. Suspend SPI transaction
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

   --  Resume SPI transaction
   type TASKS_RESUME_TASKS_RESUME_Field is
     (--  Reset value for the field
      TASKS_RESUME_TASKS_RESUME_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_RESUME_TASKS_RESUME_Field use
     (TASKS_RESUME_TASKS_RESUME_Field_Reset => 0,
      Trigger => 1);

   --  Resume SPI transaction
   type TASKS_RESUME_Register is record
      --  Write-only. Resume SPI transaction
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

   --  SPI transaction has stopped
   type EVENTS_STOPPED_EVENTS_STOPPED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_STOPPED_EVENTS_STOPPED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  SPI transaction has stopped
   type EVENTS_STOPPED_Register is record
      --  SPI transaction has stopped
      EVENTS_STOPPED : EVENTS_STOPPED_EVENTS_STOPPED_Field :=
                        NRF52833_SVD.SPIM.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_STOPPED_Register use record
      EVENTS_STOPPED at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  End of RXD buffer reached
   type EVENTS_ENDRX_EVENTS_ENDRX_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ENDRX_EVENTS_ENDRX_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  End of RXD buffer reached
   type EVENTS_ENDRX_Register is record
      --  End of RXD buffer reached
      EVENTS_ENDRX  : EVENTS_ENDRX_EVENTS_ENDRX_Field :=
                       NRF52833_SVD.SPIM.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ENDRX_Register use record
      EVENTS_ENDRX  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  End of RXD buffer and TXD buffer reached
   type EVENTS_END_EVENTS_END_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_END_EVENTS_END_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  End of RXD buffer and TXD buffer reached
   type EVENTS_END_Register is record
      --  End of RXD buffer and TXD buffer reached
      EVENTS_END    : EVENTS_END_EVENTS_END_Field :=
                       NRF52833_SVD.SPIM.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_END_Register use record
      EVENTS_END    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  End of TXD buffer reached
   type EVENTS_ENDTX_EVENTS_ENDTX_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ENDTX_EVENTS_ENDTX_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  End of TXD buffer reached
   type EVENTS_ENDTX_Register is record
      --  End of TXD buffer reached
      EVENTS_ENDTX  : EVENTS_ENDTX_EVENTS_ENDTX_Field :=
                       NRF52833_SVD.SPIM.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ENDTX_Register use record
      EVENTS_ENDTX  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Transaction started
   type EVENTS_STARTED_EVENTS_STARTED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_STARTED_EVENTS_STARTED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Transaction started
   type EVENTS_STARTED_Register is record
      --  Transaction started
      EVENTS_STARTED : EVENTS_STARTED_EVENTS_STARTED_Field :=
                        NRF52833_SVD.SPIM.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_STARTED_Register use record
      EVENTS_STARTED at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Shortcut between event END and task START
   type SHORTS_END_START_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_END_START_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcuts between local events and tasks
   type SHORTS_Register is record
      --  unspecified
      Reserved_0_16  : NRF52833_SVD.UInt17 := 16#0#;
      --  Shortcut between event END and task START
      END_START      : SHORTS_END_START_Field := NRF52833_SVD.SPIM.Disabled;
      --  unspecified
      Reserved_18_31 : NRF52833_SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      Reserved_0_16  at 0 range 0 .. 16;
      END_START      at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
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

   --  Write '1' to enable interrupt for event ENDRX
   type INTENSET_ENDRX_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDRX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event ENDRX
   type INTENSET_ENDRX_Field_1 is
     (--  Reset value for the field
      INTENSET_ENDRX_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDRX_Field_1 use
     (INTENSET_ENDRX_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event END
   type INTENSET_END_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_END_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event END
   type INTENSET_END_Field_1 is
     (--  Reset value for the field
      INTENSET_END_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_END_Field_1 use
     (INTENSET_END_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event ENDTX
   type INTENSET_ENDTX_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDTX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event ENDTX
   type INTENSET_ENDTX_Field_1 is
     (--  Reset value for the field
      INTENSET_ENDTX_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDTX_Field_1 use
     (INTENSET_ENDTX_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event STARTED
   type INTENSET_STARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_STARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event STARTED
   type INTENSET_STARTED_Field_1 is
     (--  Reset value for the field
      INTENSET_STARTED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_STARTED_Field_1 use
     (INTENSET_STARTED_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_0   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to enable interrupt for event STOPPED
      STOPPED        : INTENSET_STOPPED_Field_1 :=
                        INTENSET_STOPPED_Field_Reset;
      --  unspecified
      Reserved_2_3   : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to enable interrupt for event ENDRX
      ENDRX          : INTENSET_ENDRX_Field_1 := INTENSET_ENDRX_Field_Reset;
      --  unspecified
      Reserved_5_5   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to enable interrupt for event END
      END_k          : INTENSET_END_Field_1 := INTENSET_END_Field_Reset;
      --  unspecified
      Reserved_7_7   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to enable interrupt for event ENDTX
      ENDTX          : INTENSET_ENDTX_Field_1 := INTENSET_ENDTX_Field_Reset;
      --  unspecified
      Reserved_9_18  : NRF52833_SVD.UInt10 := 16#0#;
      --  Write '1' to enable interrupt for event STARTED
      STARTED        : INTENSET_STARTED_Field_1 :=
                        INTENSET_STARTED_Field_Reset;
      --  unspecified
      Reserved_20_31 : NRF52833_SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ENDRX          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      END_k          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ENDTX          at 0 range 8 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      STARTED        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
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

   --  Write '1' to disable interrupt for event ENDRX
   type INTENCLR_ENDRX_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDRX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event ENDRX
   type INTENCLR_ENDRX_Field_1 is
     (--  Reset value for the field
      INTENCLR_ENDRX_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDRX_Field_1 use
     (INTENCLR_ENDRX_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event END
   type INTENCLR_END_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_END_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event END
   type INTENCLR_END_Field_1 is
     (--  Reset value for the field
      INTENCLR_END_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_END_Field_1 use
     (INTENCLR_END_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event ENDTX
   type INTENCLR_ENDTX_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDTX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event ENDTX
   type INTENCLR_ENDTX_Field_1 is
     (--  Reset value for the field
      INTENCLR_ENDTX_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDTX_Field_1 use
     (INTENCLR_ENDTX_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event STARTED
   type INTENCLR_STARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_STARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event STARTED
   type INTENCLR_STARTED_Field_1 is
     (--  Reset value for the field
      INTENCLR_STARTED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_STARTED_Field_1 use
     (INTENCLR_STARTED_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_0   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to disable interrupt for event STOPPED
      STOPPED        : INTENCLR_STOPPED_Field_1 :=
                        INTENCLR_STOPPED_Field_Reset;
      --  unspecified
      Reserved_2_3   : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to disable interrupt for event ENDRX
      ENDRX          : INTENCLR_ENDRX_Field_1 := INTENCLR_ENDRX_Field_Reset;
      --  unspecified
      Reserved_5_5   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to disable interrupt for event END
      END_k          : INTENCLR_END_Field_1 := INTENCLR_END_Field_Reset;
      --  unspecified
      Reserved_7_7   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to disable interrupt for event ENDTX
      ENDTX          : INTENCLR_ENDTX_Field_1 := INTENCLR_ENDTX_Field_Reset;
      --  unspecified
      Reserved_9_18  : NRF52833_SVD.UInt10 := 16#0#;
      --  Write '1' to disable interrupt for event STARTED
      STARTED        : INTENCLR_STARTED_Field_1 :=
                        INTENCLR_STARTED_Field_Reset;
      --  unspecified
      Reserved_20_31 : NRF52833_SVD.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      STOPPED        at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ENDRX          at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      END_k          at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ENDTX          at 0 range 8 .. 8;
      Reserved_9_18  at 0 range 9 .. 18;
      STARTED        at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Stall status for EasyDMA RAM reads
   type STALLSTAT_TX_Field is
     (--  No stall
      NOSTALL,
      --  A stall has occurred
      STALL)
     with Size => 1;
   for STALLSTAT_TX_Field use
     (NOSTALL => 0,
      STALL => 1);

   --  Stall status for EasyDMA RAM writes
   type STALLSTAT_RX_Field is
     (--  No stall
      NOSTALL,
      --  A stall has occurred
      STALL)
     with Size => 1;
   for STALLSTAT_RX_Field use
     (NOSTALL => 0,
      STALL => 1);

   --  Stall status for EasyDMA RAM accesses. The fields in this register is
   --  set to STALL by hardware whenever a stall occurres and can be cleared
   --  (set to NOSTALL) by the CPU.
   type STALLSTAT_Register is record
      --  Stall status for EasyDMA RAM reads
      TX            : STALLSTAT_TX_Field := NRF52833_SVD.SPIM.NOSTALL;
      --  Stall status for EasyDMA RAM writes
      RX            : STALLSTAT_RX_Field := NRF52833_SVD.SPIM.NOSTALL;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STALLSTAT_Register use record
      TX            at 0 range 0 .. 0;
      RX            at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Enable or disable SPIM
   type ENABLE_ENABLE_Field is
     (--  Disable SPIM
      Disabled,
      --  Enable SPIM
      Enabled)
     with Size => 4;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 7);

   --  Enable SPIM
   type ENABLE_Register is record
      --  Enable or disable SPIM
      ENABLE        : ENABLE_ENABLE_Field := NRF52833_SVD.SPIM.Disabled;
      --  unspecified
      Reserved_4_31 : NRF52833_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   -----------------------------------
   -- SPIM_PSEL cluster's Registers --
   -----------------------------------

   subtype SCK_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype SCK_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type SCK_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for SCK_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for SCK
   type SCK_PSEL_Register is record
      --  Pin number
      PIN           : SCK_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : SCK_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : SCK_CONNECT_Field := NRF52833_SVD.SPIM.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCK_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype MOSI_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype MOSI_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type MOSI_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for MOSI_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for MOSI signal
   type MOSI_PSEL_Register is record
      --  Pin number
      PIN           : MOSI_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : MOSI_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : MOSI_CONNECT_Field := NRF52833_SVD.SPIM.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MOSI_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype MISO_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype MISO_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type MISO_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for MISO_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for MISO signal
   type MISO_PSEL_Register is record
      --  Pin number
      PIN           : MISO_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : MISO_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : MISO_CONNECT_Field := NRF52833_SVD.SPIM.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MISO_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype CSN_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype CSN_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type CSN_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for CSN_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for CSN
   type CSN_PSEL_Register is record
      --  Pin number
      PIN           : CSN_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : CSN_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : CSN_CONNECT_Field := NRF52833_SVD.SPIM.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSN_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type SPIM_PSEL_Cluster is record
      --  Pin select for SCK
      SCK  : aliased SCK_PSEL_Register;
      --  Pin select for MOSI signal
      MOSI : aliased MOSI_PSEL_Register;
      --  Pin select for MISO signal
      MISO : aliased MISO_PSEL_Register;
      --  Pin select for CSN
      CSN  : aliased CSN_PSEL_Register;
   end record
     with Size => 128;

   for SPIM_PSEL_Cluster use record
      SCK  at 16#0# range 0 .. 31;
      MOSI at 16#4# range 0 .. 31;
      MISO at 16#8# range 0 .. 31;
      CSN  at 16#C# range 0 .. 31;
   end record;

   ----------------------------------
   -- SPIM_RXD cluster's Registers --
   ----------------------------------

   subtype MAXCNT_RXD_MAXCNT_Field is NRF52833_SVD.UInt16;

   --  Maximum number of bytes in receive buffer
   type MAXCNT_RXD_Register is record
      --  Maximum number of bytes in receive buffer
      MAXCNT         : MAXCNT_RXD_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : NRF52833_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_RXD_Register use record
      MAXCNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AMOUNT_RXD_AMOUNT_Field is NRF52833_SVD.UInt16;

   --  Number of bytes transferred in the last transaction
   type AMOUNT_RXD_Register is record
      --  Read-only. Number of bytes transferred in the last transaction
      AMOUNT         : AMOUNT_RXD_AMOUNT_Field;
      --  unspecified
      Reserved_16_31 : NRF52833_SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_RXD_Register use record
      AMOUNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  List type
   type LIST_LIST_Field is
     (--  Disable EasyDMA list
      Disabled,
      --  Use array list
      ArrayList)
     with Size => 2;
   for LIST_LIST_Field use
     (Disabled => 0,
      ArrayList => 1);

   --  EasyDMA list type
   type LIST_RXD_Register is record
      --  List type
      LIST          : LIST_LIST_Field := NRF52833_SVD.SPIM.Disabled;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIST_RXD_Register use record
      LIST          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  RXD EasyDMA channel
   type SPIM_RXD_Cluster is record
      --  Data pointer
      PTR    : aliased NRF52833_SVD.UInt32;
      --  Maximum number of bytes in receive buffer
      MAXCNT : aliased MAXCNT_RXD_Register;
      --  Number of bytes transferred in the last transaction
      AMOUNT : aliased AMOUNT_RXD_Register;
      --  EasyDMA list type
      LIST   : aliased LIST_RXD_Register;
   end record
     with Size => 128;

   for SPIM_RXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
      LIST   at 16#C# range 0 .. 31;
   end record;

   ----------------------------------
   -- SPIM_TXD cluster's Registers --
   ----------------------------------

   subtype MAXCNT_TXD_MAXCNT_Field is NRF52833_SVD.UInt16;

   --  Number of bytes in transmit buffer
   type MAXCNT_TXD_Register is record
      --  Maximum number of bytes in transmit buffer
      MAXCNT         : MAXCNT_TXD_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : NRF52833_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_TXD_Register use record
      MAXCNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype AMOUNT_TXD_AMOUNT_Field is NRF52833_SVD.UInt16;

   --  Number of bytes transferred in the last transaction
   type AMOUNT_TXD_Register is record
      --  Read-only. Number of bytes transferred in the last transaction
      AMOUNT         : AMOUNT_TXD_AMOUNT_Field;
      --  unspecified
      Reserved_16_31 : NRF52833_SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_TXD_Register use record
      AMOUNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EasyDMA list type
   type LIST_TXD_Register is record
      --  List type
      LIST          : LIST_LIST_Field := NRF52833_SVD.SPIM.Disabled;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIST_TXD_Register use record
      LIST          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  TXD EasyDMA channel
   type SPIM_TXD_Cluster is record
      --  Data pointer
      PTR    : aliased NRF52833_SVD.UInt32;
      --  Number of bytes in transmit buffer
      MAXCNT : aliased MAXCNT_TXD_Register;
      --  Number of bytes transferred in the last transaction
      AMOUNT : aliased AMOUNT_TXD_Register;
      --  EasyDMA list type
      LIST   : aliased LIST_TXD_Register;
   end record
     with Size => 128;

   for SPIM_TXD_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
      LIST   at 16#C# range 0 .. 31;
   end record;

   --  Bit order
   type CONFIG_ORDER_Field is
     (--  Most significant bit shifted out first
      MsbFirst,
      --  Least significant bit shifted out first
      LsbFirst)
     with Size => 1;
   for CONFIG_ORDER_Field use
     (MsbFirst => 0,
      LsbFirst => 1);

   --  Serial clock (SCK) phase
   type CONFIG_CPHA_Field is
     (--  Sample on leading edge of clock, shift serial data on trailing edge
      Leading,
      --  Sample on trailing edge of clock, shift serial data on leading edge
      Trailing)
     with Size => 1;
   for CONFIG_CPHA_Field use
     (Leading => 0,
      Trailing => 1);

   --  Serial clock (SCK) polarity
   type CONFIG_CPOL_Field is
     (--  Active high
      ActiveHigh,
      --  Active low
      ActiveLow)
     with Size => 1;
   for CONFIG_CPOL_Field use
     (ActiveHigh => 0,
      ActiveLow => 1);

   --  Configuration register
   type CONFIG_Register is record
      --  Bit order
      ORDER         : CONFIG_ORDER_Field := NRF52833_SVD.SPIM.MsbFirst;
      --  Serial clock (SCK) phase
      CPHA          : CONFIG_CPHA_Field := NRF52833_SVD.SPIM.Leading;
      --  Serial clock (SCK) polarity
      CPOL          : CONFIG_CPOL_Field := NRF52833_SVD.SPIM.ActiveHigh;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      ORDER         at 0 range 0 .. 0;
      CPHA          at 0 range 1 .. 1;
      CPOL          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   ---------------------------------------
   -- SPIM_IFTIMING cluster's Registers --
   ---------------------------------------

   subtype RXDELAY_IFTIMING_RXDELAY_Field is NRF52833_SVD.UInt3;

   --  Sample delay for input serial data on MISO
   type RXDELAY_IFTIMING_Register is record
      --  Sample delay for input serial data on MISO. The value specifies the
      --  number of 64 MHz clock cycles (15.625 ns) delay from the the sampling
      --  edge of SCK (leading edge for CONFIG.CPHA = 0, trailing edge for
      --  CONFIG.CPHA = 1) until the input serial data is sampled. As en
      --  example, if RXDELAY = 0 and CONFIG.CPHA = 0, the input serial data is
      --  sampled on the rising edge of SCK.
      RXDELAY       : RXDELAY_IFTIMING_RXDELAY_Field := 16#2#;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDELAY_IFTIMING_Register use record
      RXDELAY       at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CSNDUR_IFTIMING_CSNDUR_Field is NRF52833_SVD.Byte;

   --  Minimum duration between edge of CSN and edge of SCK and minimum
   --  duration CSN must stay high between transactions
   type CSNDUR_IFTIMING_Register is record
      --  Minimum duration between edge of CSN and edge of SCK and minimum
      --  duration CSN must stay high between transactions. The value is
      --  specified in number of 64 MHz clock cycles (15.625 ns).
      CSNDUR        : CSNDUR_IFTIMING_CSNDUR_Field := 16#2#;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSNDUR_IFTIMING_Register use record
      CSNDUR        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Unspecified
   type SPIM_IFTIMING_Cluster is record
      --  Sample delay for input serial data on MISO
      RXDELAY : aliased RXDELAY_IFTIMING_Register;
      --  Minimum duration between edge of CSN and edge of SCK and minimum
      --  duration CSN must stay high between transactions
      CSNDUR  : aliased CSNDUR_IFTIMING_Register;
   end record
     with Size => 64;

   for SPIM_IFTIMING_Cluster use record
      RXDELAY at 16#0# range 0 .. 31;
      CSNDUR  at 16#4# range 0 .. 31;
   end record;

   --  Polarity of CSN output
   type CSNPOL_CSNPOL_Field is
     (--  Active low (idle state high)
      LOW,
      --  Active high (idle state low)
      HIGH)
     with Size => 1;
   for CSNPOL_CSNPOL_Field use
     (LOW => 0,
      HIGH => 1);

   --  Polarity of CSN output
   type CSNPOL_Register is record
      --  Polarity of CSN output
      CSNPOL        : CSNPOL_CSNPOL_Field := NRF52833_SVD.SPIM.LOW;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSNPOL_Register use record
      CSNPOL        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PSELDCX_PIN_Field is NRF52833_SVD.UInt5;
   subtype PSELDCX_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type PSELDCX_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for PSELDCX_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for DCX signal
   type PSELDCX_Register is record
      --  Pin number
      PIN           : PSELDCX_PIN_Field := 16#1F#;
      --  Port number
      PORT          : PSELDCX_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : PSELDCX_CONNECT_Field := NRF52833_SVD.SPIM.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSELDCX_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype DCXCNT_DCXCNT_Field is NRF52833_SVD.UInt4;

   --  DCX configuration
   type DCXCNT_Register is record
      --  This register specifies the number of command bytes preceding the
      --  data bytes. The PSEL.DCX line will be low during transmission of
      --  command bytes and high during transmission of data bytes. Value 0xF
      --  indicates that all bytes are command bytes.
      DCXCNT        : DCXCNT_DCXCNT_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : NRF52833_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCXCNT_Register use record
      DCXCNT        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ORC_ORC_Field is NRF52833_SVD.Byte;

   --  Byte transmitted after TXD.MAXCNT bytes have been transmitted in the
   --  case when RXD.MAXCNT is greater than TXD.MAXCNT
   type ORC_Register is record
      --  Byte transmitted after TXD.MAXCNT bytes have been transmitted in the
      --  case when RXD.MAXCNT is greater than TXD.MAXCNT.
      ORC           : ORC_ORC_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ORC_Register use record
      ORC           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------------------------
   -- SPIM_PSEL cluster's Registers --
   -----------------------------------

   ----------------------------------
   -- SPIM_RXD cluster's Registers --
   ----------------------------------

   ----------------------------------
   -- SPIM_TXD cluster's Registers --
   ----------------------------------

   ---------------------------------------
   -- SPIM_IFTIMING cluster's Registers --
   ---------------------------------------

   -----------------------------------
   -- SPIM_PSEL cluster's Registers --
   -----------------------------------

   ----------------------------------
   -- SPIM_RXD cluster's Registers --
   ----------------------------------

   ----------------------------------
   -- SPIM_TXD cluster's Registers --
   ----------------------------------

   ---------------------------------------
   -- SPIM_IFTIMING cluster's Registers --
   ---------------------------------------

   -----------------------------------
   -- SPIM_PSEL cluster's Registers --
   -----------------------------------

   ----------------------------------
   -- SPIM_RXD cluster's Registers --
   ----------------------------------

   ----------------------------------
   -- SPIM_TXD cluster's Registers --
   ----------------------------------

   ---------------------------------------
   -- SPIM_IFTIMING cluster's Registers --
   ---------------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  Serial Peripheral Interface Master with EasyDMA 0
   type SPIM_Peripheral is record
      --  Start SPI transaction
      TASKS_START    : aliased TASKS_START_Register;
      --  Stop SPI transaction
      TASKS_STOP     : aliased TASKS_STOP_Register;
      --  Suspend SPI transaction
      TASKS_SUSPEND  : aliased TASKS_SUSPEND_Register;
      --  Resume SPI transaction
      TASKS_RESUME   : aliased TASKS_RESUME_Register;
      --  SPI transaction has stopped
      EVENTS_STOPPED : aliased EVENTS_STOPPED_Register;
      --  End of RXD buffer reached
      EVENTS_ENDRX   : aliased EVENTS_ENDRX_Register;
      --  End of RXD buffer and TXD buffer reached
      EVENTS_END     : aliased EVENTS_END_Register;
      --  End of TXD buffer reached
      EVENTS_ENDTX   : aliased EVENTS_ENDTX_Register;
      --  Transaction started
      EVENTS_STARTED : aliased EVENTS_STARTED_Register;
      --  Shortcuts between local events and tasks
      SHORTS         : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET       : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR       : aliased INTENCLR_Register;
      --  Stall status for EasyDMA RAM accesses. The fields in this register is
      --  set to STALL by hardware whenever a stall occurres and can be cleared
      --  (set to NOSTALL) by the CPU.
      STALLSTAT      : aliased STALLSTAT_Register;
      --  Enable SPIM
      ENABLE         : aliased ENABLE_Register;
      --  Unspecified
      PSEL           : aliased SPIM_PSEL_Cluster;
      --  SPI frequency. Accuracy depends on the HFCLK source selected.
      FREQUENCY      : aliased NRF52833_SVD.UInt32;
      --  RXD EasyDMA channel
      RXD            : aliased SPIM_RXD_Cluster;
      --  TXD EasyDMA channel
      TXD            : aliased SPIM_TXD_Cluster;
      --  Configuration register
      CONFIG         : aliased CONFIG_Register;
      --  Unspecified
      IFTIMING       : aliased SPIM_IFTIMING_Cluster;
      --  Polarity of CSN output
      CSNPOL         : aliased CSNPOL_Register;
      --  Pin select for DCX signal
      PSELDCX        : aliased PSELDCX_Register;
      --  DCX configuration
      DCXCNT         : aliased DCXCNT_Register;
      --  Byte transmitted after TXD.MAXCNT bytes have been transmitted in the
      --  case when RXD.MAXCNT is greater than TXD.MAXCNT
      ORC            : aliased ORC_Register;
   end record
     with Volatile;

   for SPIM_Peripheral use record
      TASKS_START    at 16#10# range 0 .. 31;
      TASKS_STOP     at 16#14# range 0 .. 31;
      TASKS_SUSPEND  at 16#1C# range 0 .. 31;
      TASKS_RESUME   at 16#20# range 0 .. 31;
      EVENTS_STOPPED at 16#104# range 0 .. 31;
      EVENTS_ENDRX   at 16#110# range 0 .. 31;
      EVENTS_END     at 16#118# range 0 .. 31;
      EVENTS_ENDTX   at 16#120# range 0 .. 31;
      EVENTS_STARTED at 16#14C# range 0 .. 31;
      SHORTS         at 16#200# range 0 .. 31;
      INTENSET       at 16#304# range 0 .. 31;
      INTENCLR       at 16#308# range 0 .. 31;
      STALLSTAT      at 16#400# range 0 .. 31;
      ENABLE         at 16#500# range 0 .. 31;
      PSEL           at 16#508# range 0 .. 127;
      FREQUENCY      at 16#524# range 0 .. 31;
      RXD            at 16#534# range 0 .. 127;
      TXD            at 16#544# range 0 .. 127;
      CONFIG         at 16#554# range 0 .. 31;
      IFTIMING       at 16#560# range 0 .. 63;
      CSNPOL         at 16#568# range 0 .. 31;
      PSELDCX        at 16#56C# range 0 .. 31;
      DCXCNT         at 16#570# range 0 .. 31;
      ORC            at 16#5C0# range 0 .. 31;
   end record;

   --  Serial Peripheral Interface Master with EasyDMA 0
   SPIM0_Periph : aliased SPIM_Peripheral
     with Import, Address => SPIM0_Base;

   --  Serial Peripheral Interface Master with EasyDMA 1
   SPIM1_Periph : aliased SPIM_Peripheral
     with Import, Address => SPIM1_Base;

   --  Serial Peripheral Interface Master with EasyDMA 2
   SPIM2_Periph : aliased SPIM_Peripheral
     with Import, Address => SPIM2_Base;

   --  Serial Peripheral Interface Master with EasyDMA 3
   SPIM3_Periph : aliased SPIM_Peripheral
     with Import, Address => SPIM3_Base;

end NRF52833_SVD.SPIM;
