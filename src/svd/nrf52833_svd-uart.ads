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

package NRF52833_SVD.UART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start UART receiver
   type TASKS_STARTRX_TASKS_STARTRX_Field is
     (--  Reset value for the field
      TASKS_STARTRX_TASKS_STARTRX_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STARTRX_TASKS_STARTRX_Field use
     (TASKS_STARTRX_TASKS_STARTRX_Field_Reset => 0,
      Trigger => 1);

   --  Start UART receiver
   type TASKS_STARTRX_Register is record
      --  Write-only. Start UART receiver
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

   --  Stop UART receiver
   type TASKS_STOPRX_TASKS_STOPRX_Field is
     (--  Reset value for the field
      TASKS_STOPRX_TASKS_STOPRX_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOPRX_TASKS_STOPRX_Field use
     (TASKS_STOPRX_TASKS_STOPRX_Field_Reset => 0,
      Trigger => 1);

   --  Stop UART receiver
   type TASKS_STOPRX_Register is record
      --  Write-only. Stop UART receiver
      TASKS_STOPRX  : TASKS_STOPRX_TASKS_STOPRX_Field :=
                       TASKS_STOPRX_TASKS_STOPRX_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STOPRX_Register use record
      TASKS_STOPRX  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start UART transmitter
   type TASKS_STARTTX_TASKS_STARTTX_Field is
     (--  Reset value for the field
      TASKS_STARTTX_TASKS_STARTTX_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STARTTX_TASKS_STARTTX_Field use
     (TASKS_STARTTX_TASKS_STARTTX_Field_Reset => 0,
      Trigger => 1);

   --  Start UART transmitter
   type TASKS_STARTTX_Register is record
      --  Write-only. Start UART transmitter
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

   --  Stop UART transmitter
   type TASKS_STOPTX_TASKS_STOPTX_Field is
     (--  Reset value for the field
      TASKS_STOPTX_TASKS_STOPTX_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOPTX_TASKS_STOPTX_Field use
     (TASKS_STOPTX_TASKS_STOPTX_Field_Reset => 0,
      Trigger => 1);

   --  Stop UART transmitter
   type TASKS_STOPTX_Register is record
      --  Write-only. Stop UART transmitter
      TASKS_STOPTX  : TASKS_STOPTX_TASKS_STOPTX_Field :=
                       TASKS_STOPTX_TASKS_STOPTX_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STOPTX_Register use record
      TASKS_STOPTX  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Suspend UART
   type TASKS_SUSPEND_TASKS_SUSPEND_Field is
     (--  Reset value for the field
      TASKS_SUSPEND_TASKS_SUSPEND_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_SUSPEND_TASKS_SUSPEND_Field use
     (TASKS_SUSPEND_TASKS_SUSPEND_Field_Reset => 0,
      Trigger => 1);

   --  Suspend UART
   type TASKS_SUSPEND_Register is record
      --  Write-only. Suspend UART
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

   --  CTS is activated (set low). Clear To Send.
   type EVENTS_CTS_EVENTS_CTS_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CTS_EVENTS_CTS_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  CTS is activated (set low). Clear To Send.
   type EVENTS_CTS_Register is record
      --  CTS is activated (set low). Clear To Send.
      EVENTS_CTS    : EVENTS_CTS_EVENTS_CTS_Field :=
                       NRF52833_SVD.UART.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CTS_Register use record
      EVENTS_CTS    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  CTS is deactivated (set high). Not Clear To Send.
   type EVENTS_NCTS_EVENTS_NCTS_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_NCTS_EVENTS_NCTS_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  CTS is deactivated (set high). Not Clear To Send.
   type EVENTS_NCTS_Register is record
      --  CTS is deactivated (set high). Not Clear To Send.
      EVENTS_NCTS   : EVENTS_NCTS_EVENTS_NCTS_Field :=
                       NRF52833_SVD.UART.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_NCTS_Register use record
      EVENTS_NCTS   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Data received in RXD
   type EVENTS_RXDRDY_EVENTS_RXDRDY_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_RXDRDY_EVENTS_RXDRDY_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Data received in RXD
   type EVENTS_RXDRDY_Register is record
      --  Data received in RXD
      EVENTS_RXDRDY : EVENTS_RXDRDY_EVENTS_RXDRDY_Field :=
                       NRF52833_SVD.UART.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_RXDRDY_Register use record
      EVENTS_RXDRDY at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Data sent from TXD
   type EVENTS_TXDRDY_EVENTS_TXDRDY_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_TXDRDY_EVENTS_TXDRDY_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Data sent from TXD
   type EVENTS_TXDRDY_Register is record
      --  Data sent from TXD
      EVENTS_TXDRDY : EVENTS_TXDRDY_EVENTS_TXDRDY_Field :=
                       NRF52833_SVD.UART.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_TXDRDY_Register use record
      EVENTS_TXDRDY at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Error detected
   type EVENTS_ERROR_EVENTS_ERROR_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ERROR_EVENTS_ERROR_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Error detected
   type EVENTS_ERROR_Register is record
      --  Error detected
      EVENTS_ERROR  : EVENTS_ERROR_EVENTS_ERROR_Field :=
                       NRF52833_SVD.UART.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ERROR_Register use record
      EVENTS_ERROR  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Receiver timeout
   type EVENTS_RXTO_EVENTS_RXTO_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_RXTO_EVENTS_RXTO_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Receiver timeout
   type EVENTS_RXTO_Register is record
      --  Receiver timeout
      EVENTS_RXTO   : EVENTS_RXTO_EVENTS_RXTO_Field :=
                       NRF52833_SVD.UART.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_RXTO_Register use record
      EVENTS_RXTO   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Shortcut between event CTS and task STARTRX
   type SHORTS_CTS_STARTRX_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_CTS_STARTRX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event NCTS and task STOPRX
   type SHORTS_NCTS_STOPRX_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_NCTS_STOPRX_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcuts between local events and tasks
   type SHORTS_Register is record
      --  unspecified
      Reserved_0_2  : NRF52833_SVD.UInt3 := 16#0#;
      --  Shortcut between event CTS and task STARTRX
      CTS_STARTRX   : SHORTS_CTS_STARTRX_Field := NRF52833_SVD.UART.Disabled;
      --  Shortcut between event NCTS and task STOPRX
      NCTS_STOPRX   : SHORTS_NCTS_STOPRX_Field := NRF52833_SVD.UART.Disabled;
      --  unspecified
      Reserved_5_31 : NRF52833_SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      Reserved_0_2  at 0 range 0 .. 2;
      CTS_STARTRX   at 0 range 3 .. 3;
      NCTS_STOPRX   at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Write '1' to enable interrupt for event CTS
   type INTENSET_CTS_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CTS
   type INTENSET_CTS_Field_1 is
     (--  Reset value for the field
      INTENSET_CTS_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CTS_Field_1 use
     (INTENSET_CTS_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event NCTS
   type INTENSET_NCTS_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_NCTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event NCTS
   type INTENSET_NCTS_Field_1 is
     (--  Reset value for the field
      INTENSET_NCTS_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_NCTS_Field_1 use
     (INTENSET_NCTS_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event RXDRDY
   type INTENSET_RXDRDY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event RXDRDY
   type INTENSET_RXDRDY_Field_1 is
     (--  Reset value for the field
      INTENSET_RXDRDY_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXDRDY_Field_1 use
     (INTENSET_RXDRDY_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event TXDRDY
   type INTENSET_TXDRDY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event TXDRDY
   type INTENSET_TXDRDY_Field_1 is
     (--  Reset value for the field
      INTENSET_TXDRDY_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TXDRDY_Field_1 use
     (INTENSET_TXDRDY_Field_Reset => 0,
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

   --  Write '1' to enable interrupt for event RXTO
   type INTENSET_RXTO_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXTO_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event RXTO
   type INTENSET_RXTO_Field_1 is
     (--  Reset value for the field
      INTENSET_RXTO_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXTO_Field_1 use
     (INTENSET_RXTO_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event CTS
      CTS            : INTENSET_CTS_Field_1 := INTENSET_CTS_Field_Reset;
      --  Write '1' to enable interrupt for event NCTS
      NCTS           : INTENSET_NCTS_Field_1 := INTENSET_NCTS_Field_Reset;
      --  Write '1' to enable interrupt for event RXDRDY
      RXDRDY         : INTENSET_RXDRDY_Field_1 := INTENSET_RXDRDY_Field_Reset;
      --  unspecified
      Reserved_3_6   : NRF52833_SVD.UInt4 := 16#0#;
      --  Write '1' to enable interrupt for event TXDRDY
      TXDRDY         : INTENSET_TXDRDY_Field_1 := INTENSET_TXDRDY_Field_Reset;
      --  unspecified
      Reserved_8_8   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to enable interrupt for event ERROR
      ERROR          : INTENSET_ERROR_Field_1 := INTENSET_ERROR_Field_Reset;
      --  unspecified
      Reserved_10_16 : NRF52833_SVD.UInt7 := 16#0#;
      --  Write '1' to enable interrupt for event RXTO
      RXTO           : INTENSET_RXTO_Field_1 := INTENSET_RXTO_Field_Reset;
      --  unspecified
      Reserved_18_31 : NRF52833_SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      CTS            at 0 range 0 .. 0;
      NCTS           at 0 range 1 .. 1;
      RXDRDY         at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      TXDRDY         at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      RXTO           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Write '1' to disable interrupt for event CTS
   type INTENCLR_CTS_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CTS
   type INTENCLR_CTS_Field_1 is
     (--  Reset value for the field
      INTENCLR_CTS_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CTS_Field_1 use
     (INTENCLR_CTS_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event NCTS
   type INTENCLR_NCTS_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_NCTS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event NCTS
   type INTENCLR_NCTS_Field_1 is
     (--  Reset value for the field
      INTENCLR_NCTS_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_NCTS_Field_1 use
     (INTENCLR_NCTS_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event RXDRDY
   type INTENCLR_RXDRDY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event RXDRDY
   type INTENCLR_RXDRDY_Field_1 is
     (--  Reset value for the field
      INTENCLR_RXDRDY_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXDRDY_Field_1 use
     (INTENCLR_RXDRDY_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event TXDRDY
   type INTENCLR_TXDRDY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TXDRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event TXDRDY
   type INTENCLR_TXDRDY_Field_1 is
     (--  Reset value for the field
      INTENCLR_TXDRDY_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TXDRDY_Field_1 use
     (INTENCLR_TXDRDY_Field_Reset => 0,
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

   --  Write '1' to disable interrupt for event RXTO
   type INTENCLR_RXTO_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXTO_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event RXTO
   type INTENCLR_RXTO_Field_1 is
     (--  Reset value for the field
      INTENCLR_RXTO_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXTO_Field_1 use
     (INTENCLR_RXTO_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event CTS
      CTS            : INTENCLR_CTS_Field_1 := INTENCLR_CTS_Field_Reset;
      --  Write '1' to disable interrupt for event NCTS
      NCTS           : INTENCLR_NCTS_Field_1 := INTENCLR_NCTS_Field_Reset;
      --  Write '1' to disable interrupt for event RXDRDY
      RXDRDY         : INTENCLR_RXDRDY_Field_1 := INTENCLR_RXDRDY_Field_Reset;
      --  unspecified
      Reserved_3_6   : NRF52833_SVD.UInt4 := 16#0#;
      --  Write '1' to disable interrupt for event TXDRDY
      TXDRDY         : INTENCLR_TXDRDY_Field_1 := INTENCLR_TXDRDY_Field_Reset;
      --  unspecified
      Reserved_8_8   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to disable interrupt for event ERROR
      ERROR          : INTENCLR_ERROR_Field_1 := INTENCLR_ERROR_Field_Reset;
      --  unspecified
      Reserved_10_16 : NRF52833_SVD.UInt7 := 16#0#;
      --  Write '1' to disable interrupt for event RXTO
      RXTO           : INTENCLR_RXTO_Field_1 := INTENCLR_RXTO_Field_Reset;
      --  unspecified
      Reserved_18_31 : NRF52833_SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      CTS            at 0 range 0 .. 0;
      NCTS           at 0 range 1 .. 1;
      RXDRDY         at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      TXDRDY         at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      ERROR          at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      RXTO           at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Overrun error
   type ERRORSRC_OVERRUN_Field is
     (--  Read: error not present
      NotPresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_OVERRUN_Field use
     (NotPresent => 0,
      Present => 1);

   --  Parity error
   type ERRORSRC_PARITY_Field is
     (--  Read: error not present
      NotPresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_PARITY_Field use
     (NotPresent => 0,
      Present => 1);

   --  Framing error occurred
   type ERRORSRC_FRAMING_Field is
     (--  Read: error not present
      NotPresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_FRAMING_Field use
     (NotPresent => 0,
      Present => 1);

   --  Break condition
   type ERRORSRC_BREAK_Field is
     (--  Read: error not present
      NotPresent,
      --  Read: error present
      Present)
     with Size => 1;
   for ERRORSRC_BREAK_Field use
     (NotPresent => 0,
      Present => 1);

   --  Error source
   type ERRORSRC_Register is record
      --  Overrun error
      OVERRUN       : ERRORSRC_OVERRUN_Field := NRF52833_SVD.UART.NotPresent;
      --  Parity error
      PARITY        : ERRORSRC_PARITY_Field := NRF52833_SVD.UART.NotPresent;
      --  Framing error occurred
      FRAMING       : ERRORSRC_FRAMING_Field := NRF52833_SVD.UART.NotPresent;
      --  Break condition
      BREAK         : ERRORSRC_BREAK_Field := NRF52833_SVD.UART.NotPresent;
      --  unspecified
      Reserved_4_31 : NRF52833_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRORSRC_Register use record
      OVERRUN       at 0 range 0 .. 0;
      PARITY        at 0 range 1 .. 1;
      FRAMING       at 0 range 2 .. 2;
      BREAK         at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Enable or disable UART
   type ENABLE_ENABLE_Field is
     (--  Disable UART
      Disabled,
      --  Enable UART
      Enabled)
     with Size => 4;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 4);

   --  Enable UART
   type ENABLE_Register is record
      --  Enable or disable UART
      ENABLE        : ENABLE_ENABLE_Field := NRF52833_SVD.UART.Disabled;
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
   -- UART_PSEL cluster's Registers --
   -----------------------------------

   subtype RTS_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype RTS_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type RTS_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for RTS_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for RTS
   type RTS_PSEL_Register is record
      --  Pin number
      PIN           : RTS_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : RTS_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : RTS_CONNECT_Field := NRF52833_SVD.UART.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RTS_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype TXD_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype TXD_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type TXD_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for TXD_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for TXD
   type TXD_PSEL_Register is record
      --  Pin number
      PIN           : TXD_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : TXD_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : TXD_CONNECT_Field := NRF52833_SVD.UART.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXD_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype CTS_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype CTS_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type CTS_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for CTS_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for CTS
   type CTS_PSEL_Register is record
      --  Pin number
      PIN           : CTS_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : CTS_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : CTS_CONNECT_Field := NRF52833_SVD.UART.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTS_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype RXD_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype RXD_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type RXD_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for RXD_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin select for RXD
   type RXD_PSEL_Register is record
      --  Pin number
      PIN           : RXD_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : RXD_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : RXD_CONNECT_Field := NRF52833_SVD.UART.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXD_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type UART_PSEL_Cluster is record
      --  Pin select for RTS
      RTS : aliased RTS_PSEL_Register;
      --  Pin select for TXD
      TXD : aliased TXD_PSEL_Register;
      --  Pin select for CTS
      CTS : aliased CTS_PSEL_Register;
      --  Pin select for RXD
      RXD : aliased RXD_PSEL_Register;
   end record
     with Size => 128;

   for UART_PSEL_Cluster use record
      RTS at 16#0# range 0 .. 31;
      TXD at 16#4# range 0 .. 31;
      CTS at 16#8# range 0 .. 31;
      RXD at 16#C# range 0 .. 31;
   end record;

   subtype RXD_RXD_Field is NRF52833_SVD.Byte;

   --  RXD register
   type RXD_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. RX data received in previous transfers, double buffered
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
      --  Write-only. TX data to be transferred
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

   --  Hardware flow control
   type CONFIG_HWFC_Field is
     (--  Disabled
      Disabled,
      --  Enabled
      Enabled)
     with Size => 1;
   for CONFIG_HWFC_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Parity
   type CONFIG_PARITY_Field is
     (--  Exclude parity bit
      Excluded,
      --  Include parity bit
      Included)
     with Size => 3;
   for CONFIG_PARITY_Field use
     (Excluded => 0,
      Included => 7);

   --  Stop bits
   type CONFIG_STOP_Field is
     (--  One stop bit
      One,
      --  Two stop bits
      Two)
     with Size => 1;
   for CONFIG_STOP_Field use
     (One => 0,
      Two => 1);

   --  Even or odd parity type
   type CONFIG_PARITYTYPE_Field is
     (--  Even parity
      Even,
      --  Odd parity
      Odd)
     with Size => 1;
   for CONFIG_PARITYTYPE_Field use
     (Even => 0,
      Odd => 1);

   --  Configuration of parity and hardware flow control
   type CONFIG_Register is record
      --  Hardware flow control
      HWFC          : CONFIG_HWFC_Field := NRF52833_SVD.UART.Disabled;
      --  Parity
      PARITY        : CONFIG_PARITY_Field := NRF52833_SVD.UART.Excluded;
      --  Stop bits
      STOP          : CONFIG_STOP_Field := NRF52833_SVD.UART.One;
      --  unspecified
      Reserved_5_7  : NRF52833_SVD.UInt3 := 16#0#;
      --  Even or odd parity type
      PARITYTYPE    : CONFIG_PARITYTYPE_Field := NRF52833_SVD.UART.Even;
      --  unspecified
      Reserved_9_31 : NRF52833_SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      HWFC          at 0 range 0 .. 0;
      PARITY        at 0 range 1 .. 3;
      STOP          at 0 range 4 .. 4;
      Reserved_5_7  at 0 range 5 .. 7;
      PARITYTYPE    at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Asynchronous Receiver/Transmitter
   type UART_Peripheral is record
      --  Start UART receiver
      TASKS_STARTRX : aliased TASKS_STARTRX_Register;
      --  Stop UART receiver
      TASKS_STOPRX  : aliased TASKS_STOPRX_Register;
      --  Start UART transmitter
      TASKS_STARTTX : aliased TASKS_STARTTX_Register;
      --  Stop UART transmitter
      TASKS_STOPTX  : aliased TASKS_STOPTX_Register;
      --  Suspend UART
      TASKS_SUSPEND : aliased TASKS_SUSPEND_Register;
      --  CTS is activated (set low). Clear To Send.
      EVENTS_CTS    : aliased EVENTS_CTS_Register;
      --  CTS is deactivated (set high). Not Clear To Send.
      EVENTS_NCTS   : aliased EVENTS_NCTS_Register;
      --  Data received in RXD
      EVENTS_RXDRDY : aliased EVENTS_RXDRDY_Register;
      --  Data sent from TXD
      EVENTS_TXDRDY : aliased EVENTS_TXDRDY_Register;
      --  Error detected
      EVENTS_ERROR  : aliased EVENTS_ERROR_Register;
      --  Receiver timeout
      EVENTS_RXTO   : aliased EVENTS_RXTO_Register;
      --  Shortcuts between local events and tasks
      SHORTS        : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET      : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR      : aliased INTENCLR_Register;
      --  Error source
      ERRORSRC      : aliased ERRORSRC_Register;
      --  Enable UART
      ENABLE        : aliased ENABLE_Register;
      --  Unspecified
      PSEL          : aliased UART_PSEL_Cluster;
      --  RXD register
      RXD           : aliased RXD_Register;
      --  TXD register
      TXD           : aliased TXD_Register;
      --  Baud rate. Accuracy depends on the HFCLK source selected.
      BAUDRATE      : aliased NRF52833_SVD.UInt32;
      --  Configuration of parity and hardware flow control
      CONFIG        : aliased CONFIG_Register;
   end record
     with Volatile;

   for UART_Peripheral use record
      TASKS_STARTRX at 16#0# range 0 .. 31;
      TASKS_STOPRX  at 16#4# range 0 .. 31;
      TASKS_STARTTX at 16#8# range 0 .. 31;
      TASKS_STOPTX  at 16#C# range 0 .. 31;
      TASKS_SUSPEND at 16#1C# range 0 .. 31;
      EVENTS_CTS    at 16#100# range 0 .. 31;
      EVENTS_NCTS   at 16#104# range 0 .. 31;
      EVENTS_RXDRDY at 16#108# range 0 .. 31;
      EVENTS_TXDRDY at 16#11C# range 0 .. 31;
      EVENTS_ERROR  at 16#124# range 0 .. 31;
      EVENTS_RXTO   at 16#144# range 0 .. 31;
      SHORTS        at 16#200# range 0 .. 31;
      INTENSET      at 16#304# range 0 .. 31;
      INTENCLR      at 16#308# range 0 .. 31;
      ERRORSRC      at 16#480# range 0 .. 31;
      ENABLE        at 16#500# range 0 .. 31;
      PSEL          at 16#508# range 0 .. 127;
      RXD           at 16#518# range 0 .. 31;
      TXD           at 16#51C# range 0 .. 31;
      BAUDRATE      at 16#524# range 0 .. 31;
      CONFIG        at 16#56C# range 0 .. 31;
   end record;

   --  Universal Asynchronous Receiver/Transmitter
   UART0_Periph : aliased UART_Peripheral
     with Import, Address => UART0_Base;

end NRF52833_SVD.UART;
