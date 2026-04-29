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

package NRF52833_SVD.RADIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable RADIO in TX mode
   type TASKS_TXEN_TASKS_TXEN_Field is
     (--  Reset value for the field
      TASKS_TXEN_TASKS_TXEN_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_TXEN_TASKS_TXEN_Field use
     (TASKS_TXEN_TASKS_TXEN_Field_Reset => 0,
      Trigger => 1);

   --  Enable RADIO in TX mode
   type TASKS_TXEN_Register is record
      --  Write-only. Enable RADIO in TX mode
      TASKS_TXEN    : TASKS_TXEN_TASKS_TXEN_Field :=
                       TASKS_TXEN_TASKS_TXEN_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_TXEN_Register use record
      TASKS_TXEN    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable RADIO in RX mode
   type TASKS_RXEN_TASKS_RXEN_Field is
     (--  Reset value for the field
      TASKS_RXEN_TASKS_RXEN_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_RXEN_TASKS_RXEN_Field use
     (TASKS_RXEN_TASKS_RXEN_Field_Reset => 0,
      Trigger => 1);

   --  Enable RADIO in RX mode
   type TASKS_RXEN_Register is record
      --  Write-only. Enable RADIO in RX mode
      TASKS_RXEN    : TASKS_RXEN_TASKS_RXEN_Field :=
                       TASKS_RXEN_TASKS_RXEN_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_RXEN_Register use record
      TASKS_RXEN    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start RADIO
   type TASKS_START_TASKS_START_Field is
     (--  Reset value for the field
      TASKS_START_TASKS_START_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_START_TASKS_START_Field use
     (TASKS_START_TASKS_START_Field_Reset => 0,
      Trigger => 1);

   --  Start RADIO
   type TASKS_START_Register is record
      --  Write-only. Start RADIO
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

   --  Stop RADIO
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop RADIO
   type TASKS_STOP_Register is record
      --  Write-only. Stop RADIO
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

   --  Disable RADIO
   type TASKS_DISABLE_TASKS_DISABLE_Field is
     (--  Reset value for the field
      TASKS_DISABLE_TASKS_DISABLE_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_DISABLE_TASKS_DISABLE_Field use
     (TASKS_DISABLE_TASKS_DISABLE_Field_Reset => 0,
      Trigger => 1);

   --  Disable RADIO
   type TASKS_DISABLE_Register is record
      --  Write-only. Disable RADIO
      TASKS_DISABLE : TASKS_DISABLE_TASKS_DISABLE_Field :=
                       TASKS_DISABLE_TASKS_DISABLE_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_DISABLE_Register use record
      TASKS_DISABLE at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start the RSSI and take one single sample of the receive signal strength
   type TASKS_RSSISTART_TASKS_RSSISTART_Field is
     (--  Reset value for the field
      TASKS_RSSISTART_TASKS_RSSISTART_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_RSSISTART_TASKS_RSSISTART_Field use
     (TASKS_RSSISTART_TASKS_RSSISTART_Field_Reset => 0,
      Trigger => 1);

   --  Start the RSSI and take one single sample of the receive signal strength
   type TASKS_RSSISTART_Register is record
      --  Write-only. Start the RSSI and take one single sample of the receive
      --  signal strength
      TASKS_RSSISTART : TASKS_RSSISTART_TASKS_RSSISTART_Field :=
                         TASKS_RSSISTART_TASKS_RSSISTART_Field_Reset;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_RSSISTART_Register use record
      TASKS_RSSISTART at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Stop the RSSI measurement
   type TASKS_RSSISTOP_TASKS_RSSISTOP_Field is
     (--  Reset value for the field
      TASKS_RSSISTOP_TASKS_RSSISTOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_RSSISTOP_TASKS_RSSISTOP_Field use
     (TASKS_RSSISTOP_TASKS_RSSISTOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop the RSSI measurement
   type TASKS_RSSISTOP_Register is record
      --  Write-only. Stop the RSSI measurement
      TASKS_RSSISTOP : TASKS_RSSISTOP_TASKS_RSSISTOP_Field :=
                        TASKS_RSSISTOP_TASKS_RSSISTOP_Field_Reset;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_RSSISTOP_Register use record
      TASKS_RSSISTOP at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Start the bit counter
   type TASKS_BCSTART_TASKS_BCSTART_Field is
     (--  Reset value for the field
      TASKS_BCSTART_TASKS_BCSTART_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_BCSTART_TASKS_BCSTART_Field use
     (TASKS_BCSTART_TASKS_BCSTART_Field_Reset => 0,
      Trigger => 1);

   --  Start the bit counter
   type TASKS_BCSTART_Register is record
      --  Write-only. Start the bit counter
      TASKS_BCSTART : TASKS_BCSTART_TASKS_BCSTART_Field :=
                       TASKS_BCSTART_TASKS_BCSTART_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_BCSTART_Register use record
      TASKS_BCSTART at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stop the bit counter
   type TASKS_BCSTOP_TASKS_BCSTOP_Field is
     (--  Reset value for the field
      TASKS_BCSTOP_TASKS_BCSTOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_BCSTOP_TASKS_BCSTOP_Field use
     (TASKS_BCSTOP_TASKS_BCSTOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop the bit counter
   type TASKS_BCSTOP_Register is record
      --  Write-only. Stop the bit counter
      TASKS_BCSTOP  : TASKS_BCSTOP_TASKS_BCSTOP_Field :=
                       TASKS_BCSTOP_TASKS_BCSTOP_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_BCSTOP_Register use record
      TASKS_BCSTOP  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start the energy detect measurement used in IEEE 802.15.4 mode
   type TASKS_EDSTART_TASKS_EDSTART_Field is
     (--  Reset value for the field
      TASKS_EDSTART_TASKS_EDSTART_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_EDSTART_TASKS_EDSTART_Field use
     (TASKS_EDSTART_TASKS_EDSTART_Field_Reset => 0,
      Trigger => 1);

   --  Start the energy detect measurement used in IEEE 802.15.4 mode
   type TASKS_EDSTART_Register is record
      --  Write-only. Start the energy detect measurement used in IEEE 802.15.4
      --  mode
      TASKS_EDSTART : TASKS_EDSTART_TASKS_EDSTART_Field :=
                       TASKS_EDSTART_TASKS_EDSTART_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_EDSTART_Register use record
      TASKS_EDSTART at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stop the energy detect measurement
   type TASKS_EDSTOP_TASKS_EDSTOP_Field is
     (--  Reset value for the field
      TASKS_EDSTOP_TASKS_EDSTOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_EDSTOP_TASKS_EDSTOP_Field use
     (TASKS_EDSTOP_TASKS_EDSTOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop the energy detect measurement
   type TASKS_EDSTOP_Register is record
      --  Write-only. Stop the energy detect measurement
      TASKS_EDSTOP  : TASKS_EDSTOP_TASKS_EDSTOP_Field :=
                       TASKS_EDSTOP_TASKS_EDSTOP_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_EDSTOP_Register use record
      TASKS_EDSTOP  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start the clear channel assessment used in IEEE 802.15.4 mode
   type TASKS_CCASTART_TASKS_CCASTART_Field is
     (--  Reset value for the field
      TASKS_CCASTART_TASKS_CCASTART_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CCASTART_TASKS_CCASTART_Field use
     (TASKS_CCASTART_TASKS_CCASTART_Field_Reset => 0,
      Trigger => 1);

   --  Start the clear channel assessment used in IEEE 802.15.4 mode
   type TASKS_CCASTART_Register is record
      --  Write-only. Start the clear channel assessment used in IEEE 802.15.4
      --  mode
      TASKS_CCASTART : TASKS_CCASTART_TASKS_CCASTART_Field :=
                        TASKS_CCASTART_TASKS_CCASTART_Field_Reset;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CCASTART_Register use record
      TASKS_CCASTART at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Stop the clear channel assessment
   type TASKS_CCASTOP_TASKS_CCASTOP_Field is
     (--  Reset value for the field
      TASKS_CCASTOP_TASKS_CCASTOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CCASTOP_TASKS_CCASTOP_Field use
     (TASKS_CCASTOP_TASKS_CCASTOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop the clear channel assessment
   type TASKS_CCASTOP_Register is record
      --  Write-only. Stop the clear channel assessment
      TASKS_CCASTOP : TASKS_CCASTOP_TASKS_CCASTOP_Field :=
                       TASKS_CCASTOP_TASKS_CCASTOP_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CCASTOP_Register use record
      TASKS_CCASTOP at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  RADIO has ramped up and is ready to be started
   type EVENTS_READY_EVENTS_READY_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_READY_EVENTS_READY_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  RADIO has ramped up and is ready to be started
   type EVENTS_READY_Register is record
      --  RADIO has ramped up and is ready to be started
      EVENTS_READY  : EVENTS_READY_EVENTS_READY_Field :=
                       NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_READY_Register use record
      EVENTS_READY  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Address sent or received
   type EVENTS_ADDRESS_EVENTS_ADDRESS_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ADDRESS_EVENTS_ADDRESS_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Address sent or received
   type EVENTS_ADDRESS_Register is record
      --  Address sent or received
      EVENTS_ADDRESS : EVENTS_ADDRESS_EVENTS_ADDRESS_Field :=
                        NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ADDRESS_Register use record
      EVENTS_ADDRESS at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Packet payload sent or received
   type EVENTS_PAYLOAD_EVENTS_PAYLOAD_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_PAYLOAD_EVENTS_PAYLOAD_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Packet payload sent or received
   type EVENTS_PAYLOAD_Register is record
      --  Packet payload sent or received
      EVENTS_PAYLOAD : EVENTS_PAYLOAD_EVENTS_PAYLOAD_Field :=
                        NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_PAYLOAD_Register use record
      EVENTS_PAYLOAD at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Packet sent or received
   type EVENTS_END_EVENTS_END_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_END_EVENTS_END_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Packet sent or received
   type EVENTS_END_Register is record
      --  Packet sent or received
      EVENTS_END    : EVENTS_END_EVENTS_END_Field :=
                       NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_END_Register use record
      EVENTS_END    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  RADIO has been disabled
   type EVENTS_DISABLED_EVENTS_DISABLED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_DISABLED_EVENTS_DISABLED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  RADIO has been disabled
   type EVENTS_DISABLED_Register is record
      --  RADIO has been disabled
      EVENTS_DISABLED : EVENTS_DISABLED_EVENTS_DISABLED_Field :=
                         NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_DISABLED_Register use record
      EVENTS_DISABLED at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  A device address match occurred on the last received packet
   type EVENTS_DEVMATCH_EVENTS_DEVMATCH_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_DEVMATCH_EVENTS_DEVMATCH_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  A device address match occurred on the last received packet
   type EVENTS_DEVMATCH_Register is record
      --  A device address match occurred on the last received packet
      EVENTS_DEVMATCH : EVENTS_DEVMATCH_EVENTS_DEVMATCH_Field :=
                         NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_DEVMATCH_Register use record
      EVENTS_DEVMATCH at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  No device address match occurred on the last received packet
   type EVENTS_DEVMISS_EVENTS_DEVMISS_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_DEVMISS_EVENTS_DEVMISS_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  No device address match occurred on the last received packet
   type EVENTS_DEVMISS_Register is record
      --  No device address match occurred on the last received packet
      EVENTS_DEVMISS : EVENTS_DEVMISS_EVENTS_DEVMISS_Field :=
                        NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_DEVMISS_Register use record
      EVENTS_DEVMISS at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Sampling of receive signal strength complete
   type EVENTS_RSSIEND_EVENTS_RSSIEND_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_RSSIEND_EVENTS_RSSIEND_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Sampling of receive signal strength complete
   type EVENTS_RSSIEND_Register is record
      --  Sampling of receive signal strength complete
      EVENTS_RSSIEND : EVENTS_RSSIEND_EVENTS_RSSIEND_Field :=
                        NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_RSSIEND_Register use record
      EVENTS_RSSIEND at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Bit counter reached bit count value
   type EVENTS_BCMATCH_EVENTS_BCMATCH_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_BCMATCH_EVENTS_BCMATCH_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Bit counter reached bit count value
   type EVENTS_BCMATCH_Register is record
      --  Bit counter reached bit count value
      EVENTS_BCMATCH : EVENTS_BCMATCH_EVENTS_BCMATCH_Field :=
                        NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_BCMATCH_Register use record
      EVENTS_BCMATCH at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Packet received with CRC ok
   type EVENTS_CRCOK_EVENTS_CRCOK_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CRCOK_EVENTS_CRCOK_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Packet received with CRC ok
   type EVENTS_CRCOK_Register is record
      --  Packet received with CRC ok
      EVENTS_CRCOK  : EVENTS_CRCOK_EVENTS_CRCOK_Field :=
                       NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CRCOK_Register use record
      EVENTS_CRCOK  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Packet received with CRC error
   type EVENTS_CRCERROR_EVENTS_CRCERROR_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CRCERROR_EVENTS_CRCERROR_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Packet received with CRC error
   type EVENTS_CRCERROR_Register is record
      --  Packet received with CRC error
      EVENTS_CRCERROR : EVENTS_CRCERROR_EVENTS_CRCERROR_Field :=
                         NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CRCERROR_Register use record
      EVENTS_CRCERROR at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  IEEE 802.15.4 length field received
   type EVENTS_FRAMESTART_EVENTS_FRAMESTART_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_FRAMESTART_EVENTS_FRAMESTART_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  IEEE 802.15.4 length field received
   type EVENTS_FRAMESTART_Register is record
      --  IEEE 802.15.4 length field received
      EVENTS_FRAMESTART : EVENTS_FRAMESTART_EVENTS_FRAMESTART_Field :=
                           NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31     : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_FRAMESTART_Register use record
      EVENTS_FRAMESTART at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  Sampling of energy detection complete. A new ED sample is ready for
   --  readout from the RADIO.EDSAMPLE register
   type EVENTS_EDEND_EVENTS_EDEND_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_EDEND_EVENTS_EDEND_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Sampling of energy detection complete. A new ED sample is ready for
   --  readout from the RADIO.EDSAMPLE register
   type EVENTS_EDEND_Register is record
      --  Sampling of energy detection complete. A new ED sample is ready for
      --  readout from the RADIO.EDSAMPLE register
      EVENTS_EDEND  : EVENTS_EDEND_EVENTS_EDEND_Field :=
                       NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_EDEND_Register use record
      EVENTS_EDEND  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  The sampling of energy detection has stopped
   type EVENTS_EDSTOPPED_EVENTS_EDSTOPPED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_EDSTOPPED_EVENTS_EDSTOPPED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  The sampling of energy detection has stopped
   type EVENTS_EDSTOPPED_Register is record
      --  The sampling of energy detection has stopped
      EVENTS_EDSTOPPED : EVENTS_EDSTOPPED_EVENTS_EDSTOPPED_Field :=
                          NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_EDSTOPPED_Register use record
      EVENTS_EDSTOPPED at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Wireless medium in idle - clear to send
   type EVENTS_CCAIDLE_EVENTS_CCAIDLE_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CCAIDLE_EVENTS_CCAIDLE_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Wireless medium in idle - clear to send
   type EVENTS_CCAIDLE_Register is record
      --  Wireless medium in idle - clear to send
      EVENTS_CCAIDLE : EVENTS_CCAIDLE_EVENTS_CCAIDLE_Field :=
                        NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CCAIDLE_Register use record
      EVENTS_CCAIDLE at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Wireless medium busy - do not send
   type EVENTS_CCABUSY_EVENTS_CCABUSY_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CCABUSY_EVENTS_CCABUSY_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Wireless medium busy - do not send
   type EVENTS_CCABUSY_Register is record
      --  Wireless medium busy - do not send
      EVENTS_CCABUSY : EVENTS_CCABUSY_EVENTS_CCABUSY_Field :=
                        NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CCABUSY_Register use record
      EVENTS_CCABUSY at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  The CCA has stopped
   type EVENTS_CCASTOPPED_EVENTS_CCASTOPPED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CCASTOPPED_EVENTS_CCASTOPPED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  The CCA has stopped
   type EVENTS_CCASTOPPED_Register is record
      --  The CCA has stopped
      EVENTS_CCASTOPPED : EVENTS_CCASTOPPED_EVENTS_CCASTOPPED_Field :=
                           NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31     : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CCASTOPPED_Register use record
      EVENTS_CCASTOPPED at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  Ble_LR CI field received, receive mode is changed from Ble_LR125Kbit to
   --  Ble_LR500Kbit.
   type EVENTS_RATEBOOST_EVENTS_RATEBOOST_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_RATEBOOST_EVENTS_RATEBOOST_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Ble_LR CI field received, receive mode is changed from Ble_LR125Kbit to
   --  Ble_LR500Kbit.
   type EVENTS_RATEBOOST_Register is record
      --  Ble_LR CI field received, receive mode is changed from Ble_LR125Kbit
      --  to Ble_LR500Kbit.
      EVENTS_RATEBOOST : EVENTS_RATEBOOST_EVENTS_RATEBOOST_Field :=
                          NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_RATEBOOST_Register use record
      EVENTS_RATEBOOST at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  RADIO has ramped up and is ready to be started TX path
   type EVENTS_TXREADY_EVENTS_TXREADY_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_TXREADY_EVENTS_TXREADY_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  RADIO has ramped up and is ready to be started TX path
   type EVENTS_TXREADY_Register is record
      --  RADIO has ramped up and is ready to be started TX path
      EVENTS_TXREADY : EVENTS_TXREADY_EVENTS_TXREADY_Field :=
                        NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_TXREADY_Register use record
      EVENTS_TXREADY at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  RADIO has ramped up and is ready to be started RX path
   type EVENTS_RXREADY_EVENTS_RXREADY_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_RXREADY_EVENTS_RXREADY_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  RADIO has ramped up and is ready to be started RX path
   type EVENTS_RXREADY_Register is record
      --  RADIO has ramped up and is ready to be started RX path
      EVENTS_RXREADY : EVENTS_RXREADY_EVENTS_RXREADY_Field :=
                        NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_RXREADY_Register use record
      EVENTS_RXREADY at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  MAC header match found
   type EVENTS_MHRMATCH_EVENTS_MHRMATCH_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_MHRMATCH_EVENTS_MHRMATCH_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  MAC header match found
   type EVENTS_MHRMATCH_Register is record
      --  MAC header match found
      EVENTS_MHRMATCH : EVENTS_MHRMATCH_EVENTS_MHRMATCH_Field :=
                         NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_MHRMATCH_Register use record
      EVENTS_MHRMATCH at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Preamble indicator
   type EVENTS_SYNC_EVENTS_SYNC_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_SYNC_EVENTS_SYNC_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Preamble indicator
   type EVENTS_SYNC_Register is record
      --  Preamble indicator
      EVENTS_SYNC   : EVENTS_SYNC_EVENTS_SYNC_Field :=
                       NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_SYNC_Register use record
      EVENTS_SYNC   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Generated when last bit is sent on air, or received from air
   type EVENTS_PHYEND_EVENTS_PHYEND_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_PHYEND_EVENTS_PHYEND_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Generated when last bit is sent on air, or received from air
   type EVENTS_PHYEND_Register is record
      --  Generated when last bit is sent on air, or received from air
      EVENTS_PHYEND : EVENTS_PHYEND_EVENTS_PHYEND_Field :=
                       NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_PHYEND_Register use record
      EVENTS_PHYEND at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  CTE is present (early warning right after receiving CTEInfo byte)
   type EVENTS_CTEPRESENT_EVENTS_CTEPRESENT_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CTEPRESENT_EVENTS_CTEPRESENT_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  CTE is present (early warning right after receiving CTEInfo byte)
   type EVENTS_CTEPRESENT_Register is record
      --  CTE is present (early warning right after receiving CTEInfo byte)
      EVENTS_CTEPRESENT : EVENTS_CTEPRESENT_EVENTS_CTEPRESENT_Field :=
                           NRF52833_SVD.RADIO.NotGenerated;
      --  unspecified
      Reserved_1_31     : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CTEPRESENT_Register use record
      EVENTS_CTEPRESENT at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  Shortcut between event READY and task START
   type SHORTS_READY_START_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_READY_START_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event END and task DISABLE
   type SHORTS_END_DISABLE_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_END_DISABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event DISABLED and task TXEN
   type SHORTS_DISABLED_TXEN_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_DISABLED_TXEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event DISABLED and task RXEN
   type SHORTS_DISABLED_RXEN_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_DISABLED_RXEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event ADDRESS and task RSSISTART
   type SHORTS_ADDRESS_RSSISTART_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_ADDRESS_RSSISTART_Field use
     (Disabled => 0,
      Enabled => 1);

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

   --  Shortcut between event ADDRESS and task BCSTART
   type SHORTS_ADDRESS_BCSTART_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_ADDRESS_BCSTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event DISABLED and task RSSISTOP
   type SHORTS_DISABLED_RSSISTOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_DISABLED_RSSISTOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event RXREADY and task CCASTART
   type SHORTS_RXREADY_CCASTART_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_RXREADY_CCASTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event CCAIDLE and task TXEN
   type SHORTS_CCAIDLE_TXEN_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_CCAIDLE_TXEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event CCABUSY and task DISABLE
   type SHORTS_CCABUSY_DISABLE_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_CCABUSY_DISABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event FRAMESTART and task BCSTART
   type SHORTS_FRAMESTART_BCSTART_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_FRAMESTART_BCSTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event READY and task EDSTART
   type SHORTS_READY_EDSTART_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_READY_EDSTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event EDEND and task DISABLE
   type SHORTS_EDEND_DISABLE_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_EDEND_DISABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event CCAIDLE and task STOP
   type SHORTS_CCAIDLE_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_CCAIDLE_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event TXREADY and task START
   type SHORTS_TXREADY_START_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_TXREADY_START_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event RXREADY and task START
   type SHORTS_RXREADY_START_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_RXREADY_START_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event PHYEND and task DISABLE
   type SHORTS_PHYEND_DISABLE_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_PHYEND_DISABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event PHYEND and task START
   type SHORTS_PHYEND_START_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_PHYEND_START_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcuts between local events and tasks
   type SHORTS_Register is record
      --  Shortcut between event READY and task START
      READY_START        : SHORTS_READY_START_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event END and task DISABLE
      END_DISABLE        : SHORTS_END_DISABLE_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event DISABLED and task TXEN
      DISABLED_TXEN      : SHORTS_DISABLED_TXEN_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event DISABLED and task RXEN
      DISABLED_RXEN      : SHORTS_DISABLED_RXEN_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event ADDRESS and task RSSISTART
      ADDRESS_RSSISTART  : SHORTS_ADDRESS_RSSISTART_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event END and task START
      END_START          : SHORTS_END_START_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event ADDRESS and task BCSTART
      ADDRESS_BCSTART    : SHORTS_ADDRESS_BCSTART_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  unspecified
      Reserved_7_7       : NRF52833_SVD.Bit := 16#0#;
      --  Shortcut between event DISABLED and task RSSISTOP
      DISABLED_RSSISTOP  : SHORTS_DISABLED_RSSISTOP_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  unspecified
      Reserved_9_10      : NRF52833_SVD.UInt2 := 16#0#;
      --  Shortcut between event RXREADY and task CCASTART
      RXREADY_CCASTART   : SHORTS_RXREADY_CCASTART_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event CCAIDLE and task TXEN
      CCAIDLE_TXEN       : SHORTS_CCAIDLE_TXEN_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event CCABUSY and task DISABLE
      CCABUSY_DISABLE    : SHORTS_CCABUSY_DISABLE_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event FRAMESTART and task BCSTART
      FRAMESTART_BCSTART : SHORTS_FRAMESTART_BCSTART_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event READY and task EDSTART
      READY_EDSTART      : SHORTS_READY_EDSTART_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event EDEND and task DISABLE
      EDEND_DISABLE      : SHORTS_EDEND_DISABLE_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event CCAIDLE and task STOP
      CCAIDLE_STOP       : SHORTS_CCAIDLE_STOP_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event TXREADY and task START
      TXREADY_START      : SHORTS_TXREADY_START_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event RXREADY and task START
      RXREADY_START      : SHORTS_RXREADY_START_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event PHYEND and task DISABLE
      PHYEND_DISABLE     : SHORTS_PHYEND_DISABLE_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  Shortcut between event PHYEND and task START
      PHYEND_START       : SHORTS_PHYEND_START_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  unspecified
      Reserved_22_31     : NRF52833_SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      READY_START        at 0 range 0 .. 0;
      END_DISABLE        at 0 range 1 .. 1;
      DISABLED_TXEN      at 0 range 2 .. 2;
      DISABLED_RXEN      at 0 range 3 .. 3;
      ADDRESS_RSSISTART  at 0 range 4 .. 4;
      END_START          at 0 range 5 .. 5;
      ADDRESS_BCSTART    at 0 range 6 .. 6;
      Reserved_7_7       at 0 range 7 .. 7;
      DISABLED_RSSISTOP  at 0 range 8 .. 8;
      Reserved_9_10      at 0 range 9 .. 10;
      RXREADY_CCASTART   at 0 range 11 .. 11;
      CCAIDLE_TXEN       at 0 range 12 .. 12;
      CCABUSY_DISABLE    at 0 range 13 .. 13;
      FRAMESTART_BCSTART at 0 range 14 .. 14;
      READY_EDSTART      at 0 range 15 .. 15;
      EDEND_DISABLE      at 0 range 16 .. 16;
      CCAIDLE_STOP       at 0 range 17 .. 17;
      TXREADY_START      at 0 range 18 .. 18;
      RXREADY_START      at 0 range 19 .. 19;
      PHYEND_DISABLE     at 0 range 20 .. 20;
      PHYEND_START       at 0 range 21 .. 21;
      Reserved_22_31     at 0 range 22 .. 31;
   end record;

   --  Write '1' to enable interrupt for event READY
   type INTENSET_READY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_READY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event READY
   type INTENSET_READY_Field_1 is
     (--  Reset value for the field
      INTENSET_READY_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_READY_Field_1 use
     (INTENSET_READY_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event ADDRESS
   type INTENSET_ADDRESS_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ADDRESS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event ADDRESS
   type INTENSET_ADDRESS_Field_1 is
     (--  Reset value for the field
      INTENSET_ADDRESS_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ADDRESS_Field_1 use
     (INTENSET_ADDRESS_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PAYLOAD
   type INTENSET_PAYLOAD_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_PAYLOAD_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PAYLOAD
   type INTENSET_PAYLOAD_Field_1 is
     (--  Reset value for the field
      INTENSET_PAYLOAD_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_PAYLOAD_Field_1 use
     (INTENSET_PAYLOAD_Field_Reset => 0,
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

   --  Write '1' to enable interrupt for event DISABLED
   type INTENSET_DISABLED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_DISABLED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event DISABLED
   type INTENSET_DISABLED_Field_1 is
     (--  Reset value for the field
      INTENSET_DISABLED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_DISABLED_Field_1 use
     (INTENSET_DISABLED_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event DEVMATCH
   type INTENSET_DEVMATCH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_DEVMATCH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event DEVMATCH
   type INTENSET_DEVMATCH_Field_1 is
     (--  Reset value for the field
      INTENSET_DEVMATCH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_DEVMATCH_Field_1 use
     (INTENSET_DEVMATCH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event DEVMISS
   type INTENSET_DEVMISS_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_DEVMISS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event DEVMISS
   type INTENSET_DEVMISS_Field_1 is
     (--  Reset value for the field
      INTENSET_DEVMISS_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_DEVMISS_Field_1 use
     (INTENSET_DEVMISS_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event RSSIEND
   type INTENSET_RSSIEND_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RSSIEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event RSSIEND
   type INTENSET_RSSIEND_Field_1 is
     (--  Reset value for the field
      INTENSET_RSSIEND_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RSSIEND_Field_1 use
     (INTENSET_RSSIEND_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event BCMATCH
   type INTENSET_BCMATCH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_BCMATCH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event BCMATCH
   type INTENSET_BCMATCH_Field_1 is
     (--  Reset value for the field
      INTENSET_BCMATCH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_BCMATCH_Field_1 use
     (INTENSET_BCMATCH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CRCOK
   type INTENSET_CRCOK_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CRCOK_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CRCOK
   type INTENSET_CRCOK_Field_1 is
     (--  Reset value for the field
      INTENSET_CRCOK_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CRCOK_Field_1 use
     (INTENSET_CRCOK_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CRCERROR
   type INTENSET_CRCERROR_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CRCERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CRCERROR
   type INTENSET_CRCERROR_Field_1 is
     (--  Reset value for the field
      INTENSET_CRCERROR_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CRCERROR_Field_1 use
     (INTENSET_CRCERROR_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event FRAMESTART
   type INTENSET_FRAMESTART_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_FRAMESTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event FRAMESTART
   type INTENSET_FRAMESTART_Field_1 is
     (--  Reset value for the field
      INTENSET_FRAMESTART_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_FRAMESTART_Field_1 use
     (INTENSET_FRAMESTART_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event EDEND
   type INTENSET_EDEND_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_EDEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event EDEND
   type INTENSET_EDEND_Field_1 is
     (--  Reset value for the field
      INTENSET_EDEND_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_EDEND_Field_1 use
     (INTENSET_EDEND_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event EDSTOPPED
   type INTENSET_EDSTOPPED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_EDSTOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event EDSTOPPED
   type INTENSET_EDSTOPPED_Field_1 is
     (--  Reset value for the field
      INTENSET_EDSTOPPED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_EDSTOPPED_Field_1 use
     (INTENSET_EDSTOPPED_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CCAIDLE
   type INTENSET_CCAIDLE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CCAIDLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CCAIDLE
   type INTENSET_CCAIDLE_Field_1 is
     (--  Reset value for the field
      INTENSET_CCAIDLE_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CCAIDLE_Field_1 use
     (INTENSET_CCAIDLE_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CCABUSY
   type INTENSET_CCABUSY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CCABUSY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CCABUSY
   type INTENSET_CCABUSY_Field_1 is
     (--  Reset value for the field
      INTENSET_CCABUSY_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CCABUSY_Field_1 use
     (INTENSET_CCABUSY_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CCASTOPPED
   type INTENSET_CCASTOPPED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CCASTOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CCASTOPPED
   type INTENSET_CCASTOPPED_Field_1 is
     (--  Reset value for the field
      INTENSET_CCASTOPPED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CCASTOPPED_Field_1 use
     (INTENSET_CCASTOPPED_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event RATEBOOST
   type INTENSET_RATEBOOST_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RATEBOOST_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event RATEBOOST
   type INTENSET_RATEBOOST_Field_1 is
     (--  Reset value for the field
      INTENSET_RATEBOOST_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RATEBOOST_Field_1 use
     (INTENSET_RATEBOOST_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event TXREADY
   type INTENSET_TXREADY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_TXREADY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event TXREADY
   type INTENSET_TXREADY_Field_1 is
     (--  Reset value for the field
      INTENSET_TXREADY_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_TXREADY_Field_1 use
     (INTENSET_TXREADY_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event RXREADY
   type INTENSET_RXREADY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RXREADY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event RXREADY
   type INTENSET_RXREADY_Field_1 is
     (--  Reset value for the field
      INTENSET_RXREADY_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RXREADY_Field_1 use
     (INTENSET_RXREADY_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event MHRMATCH
   type INTENSET_MHRMATCH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_MHRMATCH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event MHRMATCH
   type INTENSET_MHRMATCH_Field_1 is
     (--  Reset value for the field
      INTENSET_MHRMATCH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_MHRMATCH_Field_1 use
     (INTENSET_MHRMATCH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event SYNC
   type INTENSET_SYNC_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SYNC_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event SYNC
   type INTENSET_SYNC_Field_1 is
     (--  Reset value for the field
      INTENSET_SYNC_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SYNC_Field_1 use
     (INTENSET_SYNC_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PHYEND
   type INTENSET_PHYEND_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_PHYEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PHYEND
   type INTENSET_PHYEND_Field_1 is
     (--  Reset value for the field
      INTENSET_PHYEND_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_PHYEND_Field_1 use
     (INTENSET_PHYEND_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CTEPRESENT
   type INTENSET_CTEPRESENT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CTEPRESENT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CTEPRESENT
   type INTENSET_CTEPRESENT_Field_1 is
     (--  Reset value for the field
      INTENSET_CTEPRESENT_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CTEPRESENT_Field_1 use
     (INTENSET_CTEPRESENT_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event READY
      READY          : INTENSET_READY_Field_1 := INTENSET_READY_Field_Reset;
      --  Write '1' to enable interrupt for event ADDRESS
      ADDRESS        : INTENSET_ADDRESS_Field_1 :=
                        INTENSET_ADDRESS_Field_Reset;
      --  Write '1' to enable interrupt for event PAYLOAD
      PAYLOAD        : INTENSET_PAYLOAD_Field_1 :=
                        INTENSET_PAYLOAD_Field_Reset;
      --  Write '1' to enable interrupt for event END
      END_k          : INTENSET_END_Field_1 := INTENSET_END_Field_Reset;
      --  Write '1' to enable interrupt for event DISABLED
      DISABLED       : INTENSET_DISABLED_Field_1 :=
                        INTENSET_DISABLED_Field_Reset;
      --  Write '1' to enable interrupt for event DEVMATCH
      DEVMATCH       : INTENSET_DEVMATCH_Field_1 :=
                        INTENSET_DEVMATCH_Field_Reset;
      --  Write '1' to enable interrupt for event DEVMISS
      DEVMISS        : INTENSET_DEVMISS_Field_1 :=
                        INTENSET_DEVMISS_Field_Reset;
      --  Write '1' to enable interrupt for event RSSIEND
      RSSIEND        : INTENSET_RSSIEND_Field_1 :=
                        INTENSET_RSSIEND_Field_Reset;
      --  unspecified
      Reserved_8_9   : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to enable interrupt for event BCMATCH
      BCMATCH        : INTENSET_BCMATCH_Field_1 :=
                        INTENSET_BCMATCH_Field_Reset;
      --  unspecified
      Reserved_11_11 : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to enable interrupt for event CRCOK
      CRCOK          : INTENSET_CRCOK_Field_1 := INTENSET_CRCOK_Field_Reset;
      --  Write '1' to enable interrupt for event CRCERROR
      CRCERROR       : INTENSET_CRCERROR_Field_1 :=
                        INTENSET_CRCERROR_Field_Reset;
      --  Write '1' to enable interrupt for event FRAMESTART
      FRAMESTART     : INTENSET_FRAMESTART_Field_1 :=
                        INTENSET_FRAMESTART_Field_Reset;
      --  Write '1' to enable interrupt for event EDEND
      EDEND          : INTENSET_EDEND_Field_1 := INTENSET_EDEND_Field_Reset;
      --  Write '1' to enable interrupt for event EDSTOPPED
      EDSTOPPED      : INTENSET_EDSTOPPED_Field_1 :=
                        INTENSET_EDSTOPPED_Field_Reset;
      --  Write '1' to enable interrupt for event CCAIDLE
      CCAIDLE        : INTENSET_CCAIDLE_Field_1 :=
                        INTENSET_CCAIDLE_Field_Reset;
      --  Write '1' to enable interrupt for event CCABUSY
      CCABUSY        : INTENSET_CCABUSY_Field_1 :=
                        INTENSET_CCABUSY_Field_Reset;
      --  Write '1' to enable interrupt for event CCASTOPPED
      CCASTOPPED     : INTENSET_CCASTOPPED_Field_1 :=
                        INTENSET_CCASTOPPED_Field_Reset;
      --  Write '1' to enable interrupt for event RATEBOOST
      RATEBOOST      : INTENSET_RATEBOOST_Field_1 :=
                        INTENSET_RATEBOOST_Field_Reset;
      --  Write '1' to enable interrupt for event TXREADY
      TXREADY        : INTENSET_TXREADY_Field_1 :=
                        INTENSET_TXREADY_Field_Reset;
      --  Write '1' to enable interrupt for event RXREADY
      RXREADY        : INTENSET_RXREADY_Field_1 :=
                        INTENSET_RXREADY_Field_Reset;
      --  Write '1' to enable interrupt for event MHRMATCH
      MHRMATCH       : INTENSET_MHRMATCH_Field_1 :=
                        INTENSET_MHRMATCH_Field_Reset;
      --  unspecified
      Reserved_24_25 : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to enable interrupt for event SYNC
      SYNC           : INTENSET_SYNC_Field_1 := INTENSET_SYNC_Field_Reset;
      --  Write '1' to enable interrupt for event PHYEND
      PHYEND         : INTENSET_PHYEND_Field_1 := INTENSET_PHYEND_Field_Reset;
      --  Write '1' to enable interrupt for event CTEPRESENT
      CTEPRESENT     : INTENSET_CTEPRESENT_Field_1 :=
                        INTENSET_CTEPRESENT_Field_Reset;
      --  unspecified
      Reserved_29_31 : NRF52833_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      READY          at 0 range 0 .. 0;
      ADDRESS        at 0 range 1 .. 1;
      PAYLOAD        at 0 range 2 .. 2;
      END_k          at 0 range 3 .. 3;
      DISABLED       at 0 range 4 .. 4;
      DEVMATCH       at 0 range 5 .. 5;
      DEVMISS        at 0 range 6 .. 6;
      RSSIEND        at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      BCMATCH        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CRCOK          at 0 range 12 .. 12;
      CRCERROR       at 0 range 13 .. 13;
      FRAMESTART     at 0 range 14 .. 14;
      EDEND          at 0 range 15 .. 15;
      EDSTOPPED      at 0 range 16 .. 16;
      CCAIDLE        at 0 range 17 .. 17;
      CCABUSY        at 0 range 18 .. 18;
      CCASTOPPED     at 0 range 19 .. 19;
      RATEBOOST      at 0 range 20 .. 20;
      TXREADY        at 0 range 21 .. 21;
      RXREADY        at 0 range 22 .. 22;
      MHRMATCH       at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      SYNC           at 0 range 26 .. 26;
      PHYEND         at 0 range 27 .. 27;
      CTEPRESENT     at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Write '1' to disable interrupt for event READY
   type INTENCLR_READY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_READY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event READY
   type INTENCLR_READY_Field_1 is
     (--  Reset value for the field
      INTENCLR_READY_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_READY_Field_1 use
     (INTENCLR_READY_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event ADDRESS
   type INTENCLR_ADDRESS_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ADDRESS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event ADDRESS
   type INTENCLR_ADDRESS_Field_1 is
     (--  Reset value for the field
      INTENCLR_ADDRESS_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ADDRESS_Field_1 use
     (INTENCLR_ADDRESS_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PAYLOAD
   type INTENCLR_PAYLOAD_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_PAYLOAD_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PAYLOAD
   type INTENCLR_PAYLOAD_Field_1 is
     (--  Reset value for the field
      INTENCLR_PAYLOAD_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_PAYLOAD_Field_1 use
     (INTENCLR_PAYLOAD_Field_Reset => 0,
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

   --  Write '1' to disable interrupt for event DISABLED
   type INTENCLR_DISABLED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_DISABLED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event DISABLED
   type INTENCLR_DISABLED_Field_1 is
     (--  Reset value for the field
      INTENCLR_DISABLED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_DISABLED_Field_1 use
     (INTENCLR_DISABLED_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event DEVMATCH
   type INTENCLR_DEVMATCH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_DEVMATCH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event DEVMATCH
   type INTENCLR_DEVMATCH_Field_1 is
     (--  Reset value for the field
      INTENCLR_DEVMATCH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_DEVMATCH_Field_1 use
     (INTENCLR_DEVMATCH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event DEVMISS
   type INTENCLR_DEVMISS_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_DEVMISS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event DEVMISS
   type INTENCLR_DEVMISS_Field_1 is
     (--  Reset value for the field
      INTENCLR_DEVMISS_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_DEVMISS_Field_1 use
     (INTENCLR_DEVMISS_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event RSSIEND
   type INTENCLR_RSSIEND_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RSSIEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event RSSIEND
   type INTENCLR_RSSIEND_Field_1 is
     (--  Reset value for the field
      INTENCLR_RSSIEND_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RSSIEND_Field_1 use
     (INTENCLR_RSSIEND_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event BCMATCH
   type INTENCLR_BCMATCH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_BCMATCH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event BCMATCH
   type INTENCLR_BCMATCH_Field_1 is
     (--  Reset value for the field
      INTENCLR_BCMATCH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_BCMATCH_Field_1 use
     (INTENCLR_BCMATCH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CRCOK
   type INTENCLR_CRCOK_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CRCOK_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CRCOK
   type INTENCLR_CRCOK_Field_1 is
     (--  Reset value for the field
      INTENCLR_CRCOK_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CRCOK_Field_1 use
     (INTENCLR_CRCOK_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CRCERROR
   type INTENCLR_CRCERROR_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CRCERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CRCERROR
   type INTENCLR_CRCERROR_Field_1 is
     (--  Reset value for the field
      INTENCLR_CRCERROR_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CRCERROR_Field_1 use
     (INTENCLR_CRCERROR_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event FRAMESTART
   type INTENCLR_FRAMESTART_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_FRAMESTART_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event FRAMESTART
   type INTENCLR_FRAMESTART_Field_1 is
     (--  Reset value for the field
      INTENCLR_FRAMESTART_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_FRAMESTART_Field_1 use
     (INTENCLR_FRAMESTART_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event EDEND
   type INTENCLR_EDEND_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_EDEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event EDEND
   type INTENCLR_EDEND_Field_1 is
     (--  Reset value for the field
      INTENCLR_EDEND_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_EDEND_Field_1 use
     (INTENCLR_EDEND_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event EDSTOPPED
   type INTENCLR_EDSTOPPED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_EDSTOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event EDSTOPPED
   type INTENCLR_EDSTOPPED_Field_1 is
     (--  Reset value for the field
      INTENCLR_EDSTOPPED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_EDSTOPPED_Field_1 use
     (INTENCLR_EDSTOPPED_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CCAIDLE
   type INTENCLR_CCAIDLE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CCAIDLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CCAIDLE
   type INTENCLR_CCAIDLE_Field_1 is
     (--  Reset value for the field
      INTENCLR_CCAIDLE_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CCAIDLE_Field_1 use
     (INTENCLR_CCAIDLE_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CCABUSY
   type INTENCLR_CCABUSY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CCABUSY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CCABUSY
   type INTENCLR_CCABUSY_Field_1 is
     (--  Reset value for the field
      INTENCLR_CCABUSY_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CCABUSY_Field_1 use
     (INTENCLR_CCABUSY_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CCASTOPPED
   type INTENCLR_CCASTOPPED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CCASTOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CCASTOPPED
   type INTENCLR_CCASTOPPED_Field_1 is
     (--  Reset value for the field
      INTENCLR_CCASTOPPED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CCASTOPPED_Field_1 use
     (INTENCLR_CCASTOPPED_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event RATEBOOST
   type INTENCLR_RATEBOOST_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RATEBOOST_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event RATEBOOST
   type INTENCLR_RATEBOOST_Field_1 is
     (--  Reset value for the field
      INTENCLR_RATEBOOST_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RATEBOOST_Field_1 use
     (INTENCLR_RATEBOOST_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event TXREADY
   type INTENCLR_TXREADY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_TXREADY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event TXREADY
   type INTENCLR_TXREADY_Field_1 is
     (--  Reset value for the field
      INTENCLR_TXREADY_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_TXREADY_Field_1 use
     (INTENCLR_TXREADY_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event RXREADY
   type INTENCLR_RXREADY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RXREADY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event RXREADY
   type INTENCLR_RXREADY_Field_1 is
     (--  Reset value for the field
      INTENCLR_RXREADY_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RXREADY_Field_1 use
     (INTENCLR_RXREADY_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event MHRMATCH
   type INTENCLR_MHRMATCH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_MHRMATCH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event MHRMATCH
   type INTENCLR_MHRMATCH_Field_1 is
     (--  Reset value for the field
      INTENCLR_MHRMATCH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_MHRMATCH_Field_1 use
     (INTENCLR_MHRMATCH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event SYNC
   type INTENCLR_SYNC_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SYNC_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event SYNC
   type INTENCLR_SYNC_Field_1 is
     (--  Reset value for the field
      INTENCLR_SYNC_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SYNC_Field_1 use
     (INTENCLR_SYNC_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PHYEND
   type INTENCLR_PHYEND_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_PHYEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PHYEND
   type INTENCLR_PHYEND_Field_1 is
     (--  Reset value for the field
      INTENCLR_PHYEND_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_PHYEND_Field_1 use
     (INTENCLR_PHYEND_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CTEPRESENT
   type INTENCLR_CTEPRESENT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CTEPRESENT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CTEPRESENT
   type INTENCLR_CTEPRESENT_Field_1 is
     (--  Reset value for the field
      INTENCLR_CTEPRESENT_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CTEPRESENT_Field_1 use
     (INTENCLR_CTEPRESENT_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event READY
      READY          : INTENCLR_READY_Field_1 := INTENCLR_READY_Field_Reset;
      --  Write '1' to disable interrupt for event ADDRESS
      ADDRESS        : INTENCLR_ADDRESS_Field_1 :=
                        INTENCLR_ADDRESS_Field_Reset;
      --  Write '1' to disable interrupt for event PAYLOAD
      PAYLOAD        : INTENCLR_PAYLOAD_Field_1 :=
                        INTENCLR_PAYLOAD_Field_Reset;
      --  Write '1' to disable interrupt for event END
      END_k          : INTENCLR_END_Field_1 := INTENCLR_END_Field_Reset;
      --  Write '1' to disable interrupt for event DISABLED
      DISABLED       : INTENCLR_DISABLED_Field_1 :=
                        INTENCLR_DISABLED_Field_Reset;
      --  Write '1' to disable interrupt for event DEVMATCH
      DEVMATCH       : INTENCLR_DEVMATCH_Field_1 :=
                        INTENCLR_DEVMATCH_Field_Reset;
      --  Write '1' to disable interrupt for event DEVMISS
      DEVMISS        : INTENCLR_DEVMISS_Field_1 :=
                        INTENCLR_DEVMISS_Field_Reset;
      --  Write '1' to disable interrupt for event RSSIEND
      RSSIEND        : INTENCLR_RSSIEND_Field_1 :=
                        INTENCLR_RSSIEND_Field_Reset;
      --  unspecified
      Reserved_8_9   : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to disable interrupt for event BCMATCH
      BCMATCH        : INTENCLR_BCMATCH_Field_1 :=
                        INTENCLR_BCMATCH_Field_Reset;
      --  unspecified
      Reserved_11_11 : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to disable interrupt for event CRCOK
      CRCOK          : INTENCLR_CRCOK_Field_1 := INTENCLR_CRCOK_Field_Reset;
      --  Write '1' to disable interrupt for event CRCERROR
      CRCERROR       : INTENCLR_CRCERROR_Field_1 :=
                        INTENCLR_CRCERROR_Field_Reset;
      --  Write '1' to disable interrupt for event FRAMESTART
      FRAMESTART     : INTENCLR_FRAMESTART_Field_1 :=
                        INTENCLR_FRAMESTART_Field_Reset;
      --  Write '1' to disable interrupt for event EDEND
      EDEND          : INTENCLR_EDEND_Field_1 := INTENCLR_EDEND_Field_Reset;
      --  Write '1' to disable interrupt for event EDSTOPPED
      EDSTOPPED      : INTENCLR_EDSTOPPED_Field_1 :=
                        INTENCLR_EDSTOPPED_Field_Reset;
      --  Write '1' to disable interrupt for event CCAIDLE
      CCAIDLE        : INTENCLR_CCAIDLE_Field_1 :=
                        INTENCLR_CCAIDLE_Field_Reset;
      --  Write '1' to disable interrupt for event CCABUSY
      CCABUSY        : INTENCLR_CCABUSY_Field_1 :=
                        INTENCLR_CCABUSY_Field_Reset;
      --  Write '1' to disable interrupt for event CCASTOPPED
      CCASTOPPED     : INTENCLR_CCASTOPPED_Field_1 :=
                        INTENCLR_CCASTOPPED_Field_Reset;
      --  Write '1' to disable interrupt for event RATEBOOST
      RATEBOOST      : INTENCLR_RATEBOOST_Field_1 :=
                        INTENCLR_RATEBOOST_Field_Reset;
      --  Write '1' to disable interrupt for event TXREADY
      TXREADY        : INTENCLR_TXREADY_Field_1 :=
                        INTENCLR_TXREADY_Field_Reset;
      --  Write '1' to disable interrupt for event RXREADY
      RXREADY        : INTENCLR_RXREADY_Field_1 :=
                        INTENCLR_RXREADY_Field_Reset;
      --  Write '1' to disable interrupt for event MHRMATCH
      MHRMATCH       : INTENCLR_MHRMATCH_Field_1 :=
                        INTENCLR_MHRMATCH_Field_Reset;
      --  unspecified
      Reserved_24_25 : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to disable interrupt for event SYNC
      SYNC           : INTENCLR_SYNC_Field_1 := INTENCLR_SYNC_Field_Reset;
      --  Write '1' to disable interrupt for event PHYEND
      PHYEND         : INTENCLR_PHYEND_Field_1 := INTENCLR_PHYEND_Field_Reset;
      --  Write '1' to disable interrupt for event CTEPRESENT
      CTEPRESENT     : INTENCLR_CTEPRESENT_Field_1 :=
                        INTENCLR_CTEPRESENT_Field_Reset;
      --  unspecified
      Reserved_29_31 : NRF52833_SVD.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      READY          at 0 range 0 .. 0;
      ADDRESS        at 0 range 1 .. 1;
      PAYLOAD        at 0 range 2 .. 2;
      END_k          at 0 range 3 .. 3;
      DISABLED       at 0 range 4 .. 4;
      DEVMATCH       at 0 range 5 .. 5;
      DEVMISS        at 0 range 6 .. 6;
      RSSIEND        at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      BCMATCH        at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      CRCOK          at 0 range 12 .. 12;
      CRCERROR       at 0 range 13 .. 13;
      FRAMESTART     at 0 range 14 .. 14;
      EDEND          at 0 range 15 .. 15;
      EDSTOPPED      at 0 range 16 .. 16;
      CCAIDLE        at 0 range 17 .. 17;
      CCABUSY        at 0 range 18 .. 18;
      CCASTOPPED     at 0 range 19 .. 19;
      RATEBOOST      at 0 range 20 .. 20;
      TXREADY        at 0 range 21 .. 21;
      RXREADY        at 0 range 22 .. 22;
      MHRMATCH       at 0 range 23 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      SYNC           at 0 range 26 .. 26;
      PHYEND         at 0 range 27 .. 27;
      CTEPRESENT     at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  CRC status of packet received
   type CRCSTATUS_CRCSTATUS_Field is
     (--  Packet received with CRC error
      CRCError,
      --  Packet received with CRC ok
      CRCOk)
     with Size => 1;
   for CRCSTATUS_CRCSTATUS_Field use
     (CRCError => 0,
      CRCOk => 1);

   --  CRC status
   type CRCSTATUS_Register is record
      --  Read-only. CRC status of packet received
      CRCSTATUS     : CRCSTATUS_CRCSTATUS_Field;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCSTATUS_Register use record
      CRCSTATUS     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype RXMATCH_RXMATCH_Field is NRF52833_SVD.UInt3;

   --  Received address
   type RXMATCH_Register is record
      --  Read-only. Received address
      RXMATCH       : RXMATCH_RXMATCH_Field;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXMATCH_Register use record
      RXMATCH       at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype RXCRC_RXCRC_Field is NRF52833_SVD.UInt24;

   --  CRC field of previously received packet
   type RXCRC_Register is record
      --  Read-only. CRC field of previously received packet
      RXCRC          : RXCRC_RXCRC_Field;
      --  unspecified
      Reserved_24_31 : NRF52833_SVD.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXCRC_Register use record
      RXCRC          at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DAI_DAI_Field is NRF52833_SVD.UInt3;

   --  Device address match index
   type DAI_Register is record
      --  Read-only. Device address match index
      DAI           : DAI_DAI_Field;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAI_Register use record
      DAI           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Status on payload length vs. PCNF1.MAXLEN
   type PDUSTAT_PDUSTAT_Field is
     (--  Payload less than PCNF1.MAXLEN
      LessThan,
      --  Payload greater than PCNF1.MAXLEN
      GreaterThan)
     with Size => 1;
   for PDUSTAT_PDUSTAT_Field use
     (LessThan => 0,
      GreaterThan => 1);

   --  Status on what rate packet is received with in Long Range
   type PDUSTAT_CISTAT_Field is
     (--  Frame is received at 125 kbps
      LR125kbit,
      --  Frame is received at 500 kbps
      LR500kbit)
     with Size => 2;
   for PDUSTAT_CISTAT_Field use
     (LR125kbit => 0,
      LR500kbit => 1);

   --  Payload status
   type PDUSTAT_Register is record
      --  Read-only. Status on payload length vs. PCNF1.MAXLEN
      PDUSTAT       : PDUSTAT_PDUSTAT_Field;
      --  Read-only. Status on what rate packet is received with in Long Range
      CISTAT        : PDUSTAT_CISTAT_Field;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDUSTAT_Register use record
      PDUSTAT       at 0 range 0 .. 0;
      CISTAT        at 0 range 1 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CTESTATUS_CTETIME_Field is NRF52833_SVD.UInt5;
   subtype CTESTATUS_RFU_Field is NRF52833_SVD.Bit;
   subtype CTESTATUS_CTETYPE_Field is NRF52833_SVD.UInt2;

   --  CTEInfo parsed from received packet
   type CTESTATUS_Register is record
      --  Read-only. CTETime parsed from packet
      CTETIME       : CTESTATUS_CTETIME_Field;
      --  Read-only. RFU parsed from packet
      RFU           : CTESTATUS_RFU_Field;
      --  Read-only. CTEType parsed from packet
      CTETYPE       : CTESTATUS_CTETYPE_Field;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTESTATUS_Register use record
      CTETIME       at 0 range 0 .. 4;
      RFU           at 0 range 5 .. 5;
      CTETYPE       at 0 range 6 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Internal state of switching state machine
   type DFESTATUS_SWITCHINGSTATE_Field is
     (--  Switching state Idle
      Idle,
      --  Switching state Offset
      Offset,
      --  Switching state Guard
      Guard,
      --  Switching state Ref
      Ref,
      --  Switching state Switching
      Switching,
      --  Switching state Ending
      Ending)
     with Size => 3;
   for DFESTATUS_SWITCHINGSTATE_Field use
     (Idle => 0,
      Offset => 1,
      Guard => 2,
      Ref => 3,
      Switching => 4,
      Ending => 5);

   --  Internal state of sampling state machine
   type DFESTATUS_SAMPLINGSTATE_Field is
     (--  Sampling state Idle
      Idle,
      --  Sampling state Sampling
      Sampling)
     with Size => 1;
   for DFESTATUS_SAMPLINGSTATE_Field use
     (Idle => 0,
      Sampling => 1);

   --  DFE status information
   type DFESTATUS_Register is record
      --  Read-only. Internal state of switching state machine
      SWITCHINGSTATE : DFESTATUS_SWITCHINGSTATE_Field;
      --  unspecified
      Reserved_3_3   : NRF52833_SVD.Bit;
      --  Read-only. Internal state of sampling state machine
      SAMPLINGSTATE  : DFESTATUS_SAMPLINGSTATE_Field;
      --  unspecified
      Reserved_5_31  : NRF52833_SVD.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFESTATUS_Register use record
      SWITCHINGSTATE at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      SAMPLINGSTATE  at 0 range 4 .. 4;
      Reserved_5_31  at 0 range 5 .. 31;
   end record;

   subtype FREQUENCY_FREQUENCY_Field is NRF52833_SVD.UInt7;

   --  Channel map selection.
   type FREQUENCY_MAP_Field is
     (--  Channel map between 2400 MHZ .. 2500 MHz
      Default,
      --  Channel map between 2360 MHZ .. 2460 MHz
      Low)
     with Size => 1;
   for FREQUENCY_MAP_Field use
     (Default => 0,
      Low => 1);

   --  Frequency
   type FREQUENCY_Register is record
      --  Radio channel frequency
      FREQUENCY     : FREQUENCY_FREQUENCY_Field := 16#2#;
      --  unspecified
      Reserved_7_7  : NRF52833_SVD.Bit := 16#0#;
      --  Channel map selection.
      MAP           : FREQUENCY_MAP_Field := NRF52833_SVD.RADIO.Default;
      --  unspecified
      Reserved_9_31 : NRF52833_SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREQUENCY_Register use record
      FREQUENCY     at 0 range 0 .. 6;
      Reserved_7_7  at 0 range 7 .. 7;
      MAP           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  RADIO output power
   type TXPOWER_TXPOWER_Field is
     (--  0 dBm
      Val_0dBm,
      --  +2 dBm
      Pos2dBm,
      --  +3 dBm
      Pos3dBm,
      --  +4 dBm
      Pos4dBm,
      --  +5 dBm
      Pos5dBm,
      --  +6 dBm
      Pos6dBm,
      --  +7 dBm
      Pos7dBm,
      --  +8 dBm
      Pos8dBm,
      --  -40 dBm
      Neg40dBm,
      --  Deprecated enumerator - -40 dBm
      Neg30dBm,
      --  -20 dBm
      Neg20dBm,
      --  -16 dBm
      Neg16dBm,
      --  -12 dBm
      Neg12dBm,
      --  -8 dBm
      Neg8dBm,
      --  -4 dBm
      Neg4dBm)
     with Size => 8;
   for TXPOWER_TXPOWER_Field use
     (Val_0dBm => 0,
      Pos2dBm => 2,
      Pos3dBm => 3,
      Pos4dBm => 4,
      Pos5dBm => 5,
      Pos6dBm => 6,
      Pos7dBm => 7,
      Pos8dBm => 8,
      Neg40dBm => 216,
      Neg30dBm => 226,
      Neg20dBm => 236,
      Neg16dBm => 240,
      Neg12dBm => 244,
      Neg8dBm => 248,
      Neg4dBm => 252);

   --  Output power
   type TXPOWER_Register is record
      --  RADIO output power
      TXPOWER       : TXPOWER_TXPOWER_Field := NRF52833_SVD.RADIO.Val_0dBm;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXPOWER_Register use record
      TXPOWER       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Radio data rate and modulation setting. The radio supports
   --  frequency-shift keying (FSK) modulation.
   type MODE_MODE_Field is
     (--  1 Mbps Nordic proprietary radio mode
      Nrf_1Mbit,
      --  2 Mbps Nordic proprietary radio mode
      Nrf_2Mbit,
      --  1 Mbps BLE
      Ble_1Mbit,
      --  2 Mbps BLE
      Ble_2Mbit,
      --  Long range 125 kbps TX, 125 kbps and 500 kbps RX
      Ble_LR125Kbit,
      --  Long range 500 kbps TX, 125 kbps and 500 kbps RX
      Ble_LR500Kbit,
      --  IEEE 802.15.4-2006 250 kbps
      Ieee802154_250Kbit)
     with Size => 4;
   for MODE_MODE_Field use
     (Nrf_1Mbit => 0,
      Nrf_2Mbit => 1,
      Ble_1Mbit => 3,
      Ble_2Mbit => 4,
      Ble_LR125Kbit => 5,
      Ble_LR500Kbit => 6,
      Ieee802154_250Kbit => 15);

   --  Data rate and modulation
   type MODE_Register is record
      --  Radio data rate and modulation setting. The radio supports
      --  frequency-shift keying (FSK) modulation.
      MODE          : MODE_MODE_Field := NRF52833_SVD.RADIO.Nrf_1Mbit;
      --  unspecified
      Reserved_4_31 : NRF52833_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      MODE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype PCNF0_LFLEN_Field is NRF52833_SVD.UInt4;
   subtype PCNF0_S0LEN_Field is NRF52833_SVD.Bit;
   subtype PCNF0_S1LEN_Field is NRF52833_SVD.UInt4;

   --  Include or exclude S1 field in RAM
   type PCNF0_S1INCL_Field is
     (--  Include S1 field in RAM only if S1LEN &gt; 0
      Automatic,
      --  Always include S1 field in RAM independent of S1LEN
      Include)
     with Size => 1;
   for PCNF0_S1INCL_Field use
     (Automatic => 0,
      Include => 1);

   subtype PCNF0_CILEN_Field is NRF52833_SVD.UInt2;

   --  Length of preamble on air. Decision point: TASKS_START task
   type PCNF0_PLEN_Field is
     (--  8-bit preamble
      Val_8bit,
      --  16-bit preamble
      Val_16bit,
      --  32-bit zero preamble - used for IEEE 802.15.4
      Val_32bitZero,
      --  Preamble - used for BLE long range
      LongRange)
     with Size => 2;
   for PCNF0_PLEN_Field use
     (Val_8bit => 0,
      Val_16bit => 1,
      Val_32bitZero => 2,
      LongRange => 3);

   --  Indicates if LENGTH field contains CRC or not
   type PCNF0_CRCINC_Field is
     (--  LENGTH does not contain CRC
      Exclude,
      --  LENGTH includes CRC
      Include)
     with Size => 1;
   for PCNF0_CRCINC_Field use
     (Exclude => 0,
      Include => 1);

   subtype PCNF0_TERMLEN_Field is NRF52833_SVD.UInt2;

   --  Packet configuration register 0
   type PCNF0_Register is record
      --  Length on air of LENGTH field in number of bits.
      LFLEN          : PCNF0_LFLEN_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : NRF52833_SVD.UInt4 := 16#0#;
      --  Length on air of S0 field in number of bytes.
      S0LEN          : PCNF0_S0LEN_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : NRF52833_SVD.UInt7 := 16#0#;
      --  Length on air of S1 field in number of bits.
      S1LEN          : PCNF0_S1LEN_Field := 16#0#;
      --  Include or exclude S1 field in RAM
      S1INCL         : PCNF0_S1INCL_Field := NRF52833_SVD.RADIO.Automatic;
      --  unspecified
      Reserved_21_21 : NRF52833_SVD.Bit := 16#0#;
      --  Length of code indicator - long range
      CILEN          : PCNF0_CILEN_Field := 16#0#;
      --  Length of preamble on air. Decision point: TASKS_START task
      PLEN           : PCNF0_PLEN_Field := NRF52833_SVD.RADIO.Val_8bit;
      --  Indicates if LENGTH field contains CRC or not
      CRCINC         : PCNF0_CRCINC_Field := NRF52833_SVD.RADIO.Exclude;
      --  unspecified
      Reserved_27_28 : NRF52833_SVD.UInt2 := 16#0#;
      --  Length of TERM field in Long Range operation
      TERMLEN        : PCNF0_TERMLEN_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : NRF52833_SVD.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCNF0_Register use record
      LFLEN          at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      S0LEN          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      S1LEN          at 0 range 16 .. 19;
      S1INCL         at 0 range 20 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      CILEN          at 0 range 22 .. 23;
      PLEN           at 0 range 24 .. 25;
      CRCINC         at 0 range 26 .. 26;
      Reserved_27_28 at 0 range 27 .. 28;
      TERMLEN        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype PCNF1_MAXLEN_Field is NRF52833_SVD.Byte;
   subtype PCNF1_STATLEN_Field is NRF52833_SVD.Byte;
   subtype PCNF1_BALEN_Field is NRF52833_SVD.UInt3;

   --  On-air endianness of packet, this applies to the S0, LENGTH, S1, and the
   --  PAYLOAD fields.
   type PCNF1_ENDIAN_Field is
     (--  Least significant bit on air first
      Little,
      --  Most significant bit on air first
      Big)
     with Size => 1;
   for PCNF1_ENDIAN_Field use
     (Little => 0,
      Big => 1);

   --  Enable or disable packet whitening
   type PCNF1_WHITEEN_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for PCNF1_WHITEEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Packet configuration register 1
   type PCNF1_Register is record
      --  Maximum length of packet payload. If the packet payload is larger
      --  than MAXLEN, the radio will truncate the payload to MAXLEN.
      MAXLEN         : PCNF1_MAXLEN_Field := 16#0#;
      --  Static length in number of bytes
      STATLEN        : PCNF1_STATLEN_Field := 16#0#;
      --  Base address length in number of bytes
      BALEN          : PCNF1_BALEN_Field := 16#0#;
      --  unspecified
      Reserved_19_23 : NRF52833_SVD.UInt5 := 16#0#;
      --  On-air endianness of packet, this applies to the S0, LENGTH, S1, and
      --  the PAYLOAD fields.
      ENDIAN         : PCNF1_ENDIAN_Field := NRF52833_SVD.RADIO.Little;
      --  Enable or disable packet whitening
      WHITEEN        : PCNF1_WHITEEN_Field := NRF52833_SVD.RADIO.Disabled;
      --  unspecified
      Reserved_26_31 : NRF52833_SVD.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCNF1_Register use record
      MAXLEN         at 0 range 0 .. 7;
      STATLEN        at 0 range 8 .. 15;
      BALEN          at 0 range 16 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      ENDIAN         at 0 range 24 .. 24;
      WHITEEN        at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  PREFIX0_AP array element
   subtype PREFIX0_AP_Element is NRF52833_SVD.Byte;

   --  PREFIX0_AP array
   type PREFIX0_AP_Field_Array is array (0 .. 3) of PREFIX0_AP_Element
     with Component_Size => 8, Size => 32;

   --  Prefixes bytes for logical addresses 0-3
   type PREFIX0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AP as a value
            Val : NRF52833_SVD.UInt32;
         when True =>
            --  AP as an array
            Arr : PREFIX0_AP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PREFIX0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PREFIX1_AP array element
   subtype PREFIX1_AP_Element is NRF52833_SVD.Byte;

   --  PREFIX1_AP array
   type PREFIX1_AP_Field_Array is array (4 .. 7) of PREFIX1_AP_Element
     with Component_Size => 8, Size => 32;

   --  Prefixes bytes for logical addresses 4-7
   type PREFIX1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AP as a value
            Val : NRF52833_SVD.UInt32;
         when True =>
            --  AP as an array
            Arr : PREFIX1_AP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PREFIX1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype TXADDRESS_TXADDRESS_Field is NRF52833_SVD.UInt3;

   --  Transmit address select
   type TXADDRESS_Register is record
      --  Transmit address select
      TXADDRESS     : TXADDRESS_TXADDRESS_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXADDRESS_Register use record
      TXADDRESS     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Enable or disable reception on logical address 0.
   type RXADDRESSES_ADDR0_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for RXADDRESSES_ADDR0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  RXADDRESSES_ADDR array
   type RXADDRESSES_ADDR_Field_Array is array (0 .. 7)
     of RXADDRESSES_ADDR0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for RXADDRESSES_ADDR
   type RXADDRESSES_ADDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADDR as a value
            Val : NRF52833_SVD.Byte;
         when True =>
            --  ADDR as an array
            Arr : RXADDRESSES_ADDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for RXADDRESSES_ADDR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Receive address select
   type RXADDRESSES_Register is record
      --  Enable or disable reception on logical address 0.
      ADDR          : RXADDRESSES_ADDR_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXADDRESSES_Register use record
      ADDR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CRC length in number of bytes.
   type CRCCNF_LEN_Field is
     (--  CRC length is zero and CRC calculation is disabled
      Disabled,
      --  CRC length is one byte and CRC calculation is enabled
      One,
      --  CRC length is two bytes and CRC calculation is enabled
      Two,
      --  CRC length is three bytes and CRC calculation is enabled
      Three)
     with Size => 2;
   for CRCCNF_LEN_Field use
     (Disabled => 0,
      One => 1,
      Two => 2,
      Three => 3);

   --  Include or exclude packet address field out of CRC calculation.
   type CRCCNF_SKIPADDR_Field is
     (--  CRC calculation includes address field
      Include,
      --  CRC calculation does not include address field. The CRC calculation will
--  start at the first byte after the address.
      Skip,
      --  CRC calculation as per 802.15.4 standard. Starting at first byte after
--  length field.
      Ieee802154)
     with Size => 2;
   for CRCCNF_SKIPADDR_Field use
     (Include => 0,
      Skip => 1,
      Ieee802154 => 2);

   --  CRC configuration
   type CRCCNF_Register is record
      --  CRC length in number of bytes.
      LEN            : CRCCNF_LEN_Field := NRF52833_SVD.RADIO.Disabled;
      --  unspecified
      Reserved_2_7   : NRF52833_SVD.UInt6 := 16#0#;
      --  Include or exclude packet address field out of CRC calculation.
      SKIPADDR       : CRCCNF_SKIPADDR_Field := NRF52833_SVD.RADIO.Include;
      --  unspecified
      Reserved_10_31 : NRF52833_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCCNF_Register use record
      LEN            at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      SKIPADDR       at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CRCPOLY_CRCPOLY_Field is NRF52833_SVD.UInt24;

   --  CRC polynomial
   type CRCPOLY_Register is record
      --  CRC polynomial
      CRCPOLY        : CRCPOLY_CRCPOLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : NRF52833_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCPOLY_Register use record
      CRCPOLY        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CRCINIT_CRCINIT_Field is NRF52833_SVD.UInt24;

   --  CRC initial value
   type CRCINIT_Register is record
      --  CRC initial value
      CRCINIT        : CRCINIT_CRCINIT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : NRF52833_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CRCINIT_Register use record
      CRCINIT        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TIFS_TIFS_Field is NRF52833_SVD.UInt10;

   --  Interframe spacing in us
   type TIFS_Register is record
      --  Interframe spacing in us
      TIFS           : TIFS_TIFS_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : NRF52833_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIFS_Register use record
      TIFS           at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype RSSISAMPLE_RSSISAMPLE_Field is NRF52833_SVD.UInt7;

   --  RSSI sample
   type RSSISAMPLE_Register is record
      --  Read-only. RSSI sample
      RSSISAMPLE    : RSSISAMPLE_RSSISAMPLE_Field;
      --  unspecified
      Reserved_7_31 : NRF52833_SVD.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSSISAMPLE_Register use record
      RSSISAMPLE    at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Current radio state
   type STATE_STATE_Field is
     (--  RADIO is in the Disabled state
      Disabled,
      --  RADIO is in the RXRU state
      RxRu,
      --  RADIO is in the RXIDLE state
      RxIdle,
      --  RADIO is in the RX state
      Rx,
      --  RADIO is in the RXDISABLED state
      RxDisable,
      --  RADIO is in the TXRU state
      TxRu,
      --  RADIO is in the TXIDLE state
      TxIdle,
      --  RADIO is in the TX state
      Tx,
      --  RADIO is in the TXDISABLED state
      TxDisable)
     with Size => 4;
   for STATE_STATE_Field use
     (Disabled => 0,
      RxRu => 1,
      RxIdle => 2,
      Rx => 3,
      RxDisable => 4,
      TxRu => 9,
      TxIdle => 10,
      Tx => 11,
      TxDisable => 12);

   --  Current radio state
   type STATE_Register is record
      --  Read-only. Current radio state
      STATE         : STATE_STATE_Field;
      --  unspecified
      Reserved_4_31 : NRF52833_SVD.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE_Register use record
      STATE         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DATAWHITEIV_DATAWHITEIV_Field is NRF52833_SVD.UInt7;

   --  Data whitening initial value
   type DATAWHITEIV_Register is record
      --  Data whitening initial value. Bit 6 is hardwired to '1', writing '0'
      --  to it has no effect, and it will always be read back and used by the
      --  device as '1'.
      DATAWHITEIV   : DATAWHITEIV_DATAWHITEIV_Field := 16#40#;
      --  unspecified
      Reserved_7_31 : NRF52833_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATAWHITEIV_Register use record
      DATAWHITEIV   at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Description collection: Device address base segment n

   --  Description collection: Device address base segment n
   type DAB_Registers is array (0 .. 7) of NRF52833_SVD.UInt32;

   subtype DAP_DAP_Field is NRF52833_SVD.UInt16;

   --  Description collection: Device address prefix n
   type DAP_Register is record
      --  Device address prefix n
      DAP            : DAP_DAP_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : NRF52833_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAP_Register use record
      DAP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Description collection: Device address prefix n
   type DAP_Registers is array (0 .. 7) of DAP_Register;

   --  Enable or disable device address matching using device address 0
   type DACNF_ENA0_Field is
     (--  Disabled
      Disabled,
      --  Enabled
      Enabled)
     with Size => 1;
   for DACNF_ENA0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  DACNF_ENA array
   type DACNF_ENA_Field_Array is array (0 .. 7) of DACNF_ENA0_Field
     with Component_Size => 1, Size => 8;

   --  Type definition for DACNF_ENA
   type DACNF_ENA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENA as a value
            Val : NRF52833_SVD.Byte;
         when True =>
            --  ENA as an array
            Arr : DACNF_ENA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for DACNF_ENA_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  DACNF_TXADD array element
   subtype DACNF_TXADD_Element is NRF52833_SVD.Bit;

   --  DACNF_TXADD array
   type DACNF_TXADD_Field_Array is array (0 .. 7) of DACNF_TXADD_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for DACNF_TXADD
   type DACNF_TXADD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXADD as a value
            Val : NRF52833_SVD.Byte;
         when True =>
            --  TXADD as an array
            Arr : DACNF_TXADD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for DACNF_TXADD_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Device address match configuration
   type DACNF_Register is record
      --  Enable or disable device address matching using device address 0
      ENA            : DACNF_ENA_Field := (As_Array => False, Val => 16#0#);
      --  TxAdd for device address 0
      TXADD          : DACNF_TXADD_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : NRF52833_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DACNF_Register use record
      ENA            at 0 range 0 .. 7;
      TXADD          at 0 range 8 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Radio ramp-up time
   type MODECNF0_RU_Field is
     (--  Default ramp-up time (tRXEN and tTXEN), compatible with firmware written
--  for nRF51
      Default,
      --  Fast ramp-up (tRXEN,FAST and tTXEN,FAST), see electrical specification for
--  more information
      Fast)
     with Size => 1;
   for MODECNF0_RU_Field use
     (Default => 0,
      Fast => 1);

   --  Default TX value
   type MODECNF0_DTX_Field is
     (--  Transmit '1'
      B1,
      --  Transmit '0'
      B0,
      --  Transmit center frequency
      Center)
     with Size => 2;
   for MODECNF0_DTX_Field use
     (B1 => 0,
      B0 => 1,
      Center => 2);

   --  Radio mode configuration register 0
   type MODECNF0_Register is record
      --  Radio ramp-up time
      RU             : MODECNF0_RU_Field := NRF52833_SVD.RADIO.Default;
      --  unspecified
      Reserved_1_7   : NRF52833_SVD.UInt7 := 16#0#;
      --  Default TX value
      DTX            : MODECNF0_DTX_Field := NRF52833_SVD.RADIO.Center;
      --  unspecified
      Reserved_10_31 : NRF52833_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODECNF0_Register use record
      RU             at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      DTX            at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype SFD_SFD_Field is NRF52833_SVD.Byte;

   --  IEEE 802.15.4 start of frame delimiter
   type SFD_Register is record
      --  IEEE 802.15.4 start of frame delimiter
      SFD           : SFD_SFD_Field := 16#A7#;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SFD_Register use record
      SFD           at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype EDCNT_EDCNT_Field is NRF52833_SVD.UInt21;

   --  IEEE 802.15.4 energy detect loop count
   type EDCNT_Register is record
      --  IEEE 802.15.4 energy detect loop count
      EDCNT          : EDCNT_EDCNT_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : NRF52833_SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EDCNT_Register use record
      EDCNT          at 0 range 0 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype EDSAMPLE_EDLVL_Field is NRF52833_SVD.Byte;

   --  IEEE 802.15.4 energy detect level
   type EDSAMPLE_Register is record
      --  Read-only. IEEE 802.15.4 energy detect level
      EDLVL         : EDSAMPLE_EDLVL_Field;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EDSAMPLE_Register use record
      EDLVL         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  CCA mode of operation
   type CCACTRL_CCAMODE_Field is
     (--  Energy above threshold
      EdMode,
      --  Carrier seen
      CarrierMode,
      --  Energy above threshold AND carrier seen
      CarrierAndEdMode,
      --  Energy above threshold OR carrier seen
      CarrierOrEdMode,
      --  Energy above threshold test mode that will abort when first ED measurement
--  over threshold is seen. No averaging.
      EdModeTest1)
     with Size => 3;
   for CCACTRL_CCAMODE_Field use
     (EdMode => 0,
      CarrierMode => 1,
      CarrierAndEdMode => 2,
      CarrierOrEdMode => 3,
      EdModeTest1 => 4);

   subtype CCACTRL_CCAEDTHRES_Field is NRF52833_SVD.Byte;
   subtype CCACTRL_CCACORRTHRES_Field is NRF52833_SVD.Byte;
   subtype CCACTRL_CCACORRCNT_Field is NRF52833_SVD.Byte;

   --  IEEE 802.15.4 clear channel assessment control
   type CCACTRL_Register is record
      --  CCA mode of operation
      CCAMODE      : CCACTRL_CCAMODE_Field := NRF52833_SVD.RADIO.EdMode;
      --  unspecified
      Reserved_3_7 : NRF52833_SVD.UInt5 := 16#0#;
      --  CCA energy busy threshold. Used in all the CCA modes except
      --  CarrierMode.
      CCAEDTHRES   : CCACTRL_CCAEDTHRES_Field := 16#0#;
      --  CCA correlator busy threshold. Only relevant to CarrierMode,
      --  CarrierAndEdMode, and CarrierOrEdMode.
      CCACORRTHRES : CCACTRL_CCACORRTHRES_Field := 16#2D#;
      --  Limit for occurances above CCACORRTHRES. When not equal to zero the
      --  corrolator based signal detect is enabled.
      CCACORRCNT   : CCACTRL_CCACORRCNT_Field := 16#5#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCACTRL_Register use record
      CCAMODE      at 0 range 0 .. 2;
      Reserved_3_7 at 0 range 3 .. 7;
      CCAEDTHRES   at 0 range 8 .. 15;
      CCACORRTHRES at 0 range 16 .. 23;
      CCACORRCNT   at 0 range 24 .. 31;
   end record;

   --  Direction finding operation mode
   type DFEMODE_DFEOPMODE_Field is
     (--  Direction finding mode disabled
      Disabled,
      --  Direction finding mode set to AoD
      AoD,
      --  Direction finding mode set to AoA
      AoA)
     with Size => 2;
   for DFEMODE_DFEOPMODE_Field use
     (Disabled => 0,
      AoD => 2,
      AoA => 3);

   --  Whether to use Angle-of-Arrival (AOA) or Angle-of-Departure (AOD)
   type DFEMODE_Register is record
      --  Direction finding operation mode
      DFEOPMODE     : DFEMODE_DFEOPMODE_Field := NRF52833_SVD.RADIO.Disabled;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFEMODE_Register use record
      DFEOPMODE     at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Enable parsing of CTEInfo from received packet in BLE modes
   type CTEINLINECONF_CTEINLINECTRLEN_Field is
     (--  Parsing of CTEInfo is disabled
      Disabled,
      --  Parsing of CTEInfo is enabled
      Enabled)
     with Size => 1;
   for CTEINLINECONF_CTEINLINECTRLEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  CTEInfo is S1 byte or not
   type CTEINLINECONF_CTEINFOINS1_Field is
     (--  CTEInfo is NOT in S1 byte (advertising PDU)
      NotInS1,
      --  CTEInfo is in S1 byte (data PDU)
      InS1)
     with Size => 1;
   for CTEINLINECONF_CTEINFOINS1_Field use
     (NotInS1 => 0,
      InS1 => 1);

   --  Sampling/switching if CRC is not OK
   type CTEINLINECONF_CTEERRORHANDLING_Field is
     (--  No sampling and antenna switching when CRC is not OK
      No,
      --  Sampling and antenna switching also when CRC is not OK
      Yes)
     with Size => 1;
   for CTEINLINECONF_CTEERRORHANDLING_Field use
     (No => 0,
      Yes => 1);

   --  Max range of CTETime
   type CTEINLINECONF_CTETIMEVALIDRANGE_Field is
     (--  20 in 8us unit (default) Set to 20 if parsed CTETime is larger han 20
      Val_20,
      --  31 in 8us unit
      Val_31,
      --  63 in 8us unit
      Val_63)
     with Size => 2;
   for CTEINLINECONF_CTETIMEVALIDRANGE_Field use
     (Val_20 => 0,
      Val_31 => 1,
      Val_63 => 2);

   --  Spacing between samples for the samples in the SWITCHING period when
   --  CTEINLINEMODE is set
   type CTEINLINECONF_CTEINLINERXMODE1US_Field is
     (--  4us
      Val_4us,
      --  2us
      Val_2us,
      --  1us
      Val_1us,
      --  0.5us
      Val_500ns,
      --  0.25us
      Val_250ns,
      --  0.125us
      Val_125ns)
     with Size => 3;
   for CTEINLINECONF_CTEINLINERXMODE1US_Field use
     (Val_4us => 1,
      Val_2us => 2,
      Val_1us => 3,
      Val_500ns => 4,
      Val_250ns => 5,
      Val_125ns => 6);

   --  Spacing between samples for the samples in the SWITCHING period when
   --  CTEINLINEMODE is set
   type CTEINLINECONF_CTEINLINERXMODE2US_Field is
     (--  4us
      Val_4us,
      --  2us
      Val_2us,
      --  1us
      Val_1us,
      --  0.5us
      Val_500ns,
      --  0.25us
      Val_250ns,
      --  0.125us
      Val_125ns)
     with Size => 3;
   for CTEINLINECONF_CTEINLINERXMODE2US_Field use
     (Val_4us => 1,
      Val_2us => 2,
      Val_1us => 3,
      Val_500ns => 4,
      Val_250ns => 5,
      Val_125ns => 6);

   subtype CTEINLINECONF_S0CONF_Field is NRF52833_SVD.Byte;
   subtype CTEINLINECONF_S0MASK_Field is NRF52833_SVD.Byte;

   --  Configuration for CTE inline mode
   type CTEINLINECONF_Register is record
      --  Enable parsing of CTEInfo from received packet in BLE modes
      CTEINLINECTRLEN    : CTEINLINECONF_CTEINLINECTRLEN_Field :=
                            NRF52833_SVD.RADIO.Disabled;
      --  unspecified
      Reserved_1_2       : NRF52833_SVD.UInt2 := 16#0#;
      --  CTEInfo is S1 byte or not
      CTEINFOINS1        : CTEINLINECONF_CTEINFOINS1_Field :=
                            NRF52833_SVD.RADIO.NotInS1;
      --  Sampling/switching if CRC is not OK
      CTEERRORHANDLING   : CTEINLINECONF_CTEERRORHANDLING_Field :=
                            NRF52833_SVD.RADIO.No;
      --  unspecified
      Reserved_5_5       : NRF52833_SVD.Bit := 16#0#;
      --  Max range of CTETime
      CTETIMEVALIDRANGE  : CTEINLINECONF_CTETIMEVALIDRANGE_Field :=
                            NRF52833_SVD.RADIO.Val_20;
      --  unspecified
      Reserved_8_9       : NRF52833_SVD.UInt2 := 16#0#;
      --  Spacing between samples for the samples in the SWITCHING period when
      --  CTEINLINEMODE is set
      CTEINLINERXMODE1US : CTEINLINECONF_CTEINLINERXMODE1US_Field :=
                            NRF52833_SVD.RADIO.Val_2us;
      --  Spacing between samples for the samples in the SWITCHING period when
      --  CTEINLINEMODE is set
      CTEINLINERXMODE2US : CTEINLINECONF_CTEINLINERXMODE2US_Field :=
                            NRF52833_SVD.RADIO.Val_4us;
      --  S0 bit pattern to match
      S0CONF             : CTEINLINECONF_S0CONF_Field := 16#0#;
      --  S0 bit mask to set which bit to match
      S0MASK             : CTEINLINECONF_S0MASK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTEINLINECONF_Register use record
      CTEINLINECTRLEN    at 0 range 0 .. 0;
      Reserved_1_2       at 0 range 1 .. 2;
      CTEINFOINS1        at 0 range 3 .. 3;
      CTEERRORHANDLING   at 0 range 4 .. 4;
      Reserved_5_5       at 0 range 5 .. 5;
      CTETIMEVALIDRANGE  at 0 range 6 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      CTEINLINERXMODE1US at 0 range 10 .. 12;
      CTEINLINERXMODE2US at 0 range 13 .. 15;
      S0CONF             at 0 range 16 .. 23;
      S0MASK             at 0 range 24 .. 31;
   end record;

   subtype DFECTRL1_NUMBEROF8US_Field is NRF52833_SVD.UInt6;

   --  Add CTE extension and do antenna switching/sampling in this extension
   type DFECTRL1_DFEINEXTENSION_Field is
     (--  Antenna switching/sampling is done in the packet payload
      Payload,
      --  AoA/AoD procedure triggered at end of CRC
      CRC)
     with Size => 1;
   for DFECTRL1_DFEINEXTENSION_Field use
     (Payload => 0,
      CRC => 1);

   --  Interval between every time the antenna is changed in the SWITCHING
   --  state
   type DFECTRL1_TSWITCHSPACING_Field is
     (--  4us
      Val_4us,
      --  2us
      Val_2us,
      --  1us
      Val_1us)
     with Size => 3;
   for DFECTRL1_TSWITCHSPACING_Field use
     (Val_4us => 1,
      Val_2us => 2,
      Val_1us => 3);

   --  Interval between samples in the REFERENCE period
   type DFECTRL1_TSAMPLESPACINGREF_Field is
     (--  4us
      Val_4us,
      --  2us
      Val_2us,
      --  1us
      Val_1us,
      --  0.5us
      Val_500ns,
      --  0.25us
      Val_250ns,
      --  0.125us
      Val_125ns)
     with Size => 3;
   for DFECTRL1_TSAMPLESPACINGREF_Field use
     (Val_4us => 1,
      Val_2us => 2,
      Val_1us => 3,
      Val_500ns => 4,
      Val_250ns => 5,
      Val_125ns => 6);

   --  Whether to sample I/Q or magnitude/phase
   type DFECTRL1_SAMPLETYPE_Field is
     (--  Complex samples in I and Q
      IQ,
      --  Complex samples as magnitude and phase
      MagPhase)
     with Size => 1;
   for DFECTRL1_SAMPLETYPE_Field use
     (IQ => 0,
      MagPhase => 1);

   --  Interval between samples in the SWITCHING period when CTEINLINECTRLEN is
   --  0
   type DFECTRL1_TSAMPLESPACING_Field is
     (--  4us
      Val_4us,
      --  2us
      Val_2us,
      --  1us
      Val_1us,
      --  0.5us
      Val_500ns,
      --  0.25us
      Val_250ns,
      --  0.125us
      Val_125ns)
     with Size => 3;
   for DFECTRL1_TSAMPLESPACING_Field use
     (Val_4us => 1,
      Val_2us => 2,
      Val_1us => 3,
      Val_500ns => 4,
      Val_250ns => 5,
      Val_125ns => 6);

   --  Repeat each individual antenna pattern N times sequentially, i.e. P0,
   --  P0, P1, P1, P2, P2, P3, P3, etc.
   type DFECTRL1_REPEATPATTERN_Field is
     (--  Do not repeat (1 time in total)
      NoRepeat)
     with Size => 4;
   for DFECTRL1_REPEATPATTERN_Field use
     (NoRepeat => 0);

   subtype DFECTRL1_AGCBACKOFFGAIN_Field is NRF52833_SVD.UInt4;

   --  Various configuration for Direction finding
   type DFECTRL1_Register is record
      --  Length of the AoA/AoD procedure in number of 8 us units
      NUMBEROF8US       : DFECTRL1_NUMBEROF8US_Field := 16#2#;
      --  unspecified
      Reserved_6_6      : NRF52833_SVD.Bit := 16#0#;
      --  Add CTE extension and do antenna switching/sampling in this extension
      DFEINEXTENSION    : DFECTRL1_DFEINEXTENSION_Field :=
                           NRF52833_SVD.RADIO.CRC;
      --  Interval between every time the antenna is changed in the SWITCHING
      --  state
      TSWITCHSPACING    : DFECTRL1_TSWITCHSPACING_Field :=
                           NRF52833_SVD.RADIO.Val_2us;
      --  unspecified
      Reserved_11_11    : NRF52833_SVD.Bit := 16#0#;
      --  Interval between samples in the REFERENCE period
      TSAMPLESPACINGREF : DFECTRL1_TSAMPLESPACINGREF_Field :=
                           NRF52833_SVD.RADIO.Val_1us;
      --  Whether to sample I/Q or magnitude/phase
      SAMPLETYPE        : DFECTRL1_SAMPLETYPE_Field := NRF52833_SVD.RADIO.IQ;
      --  Interval between samples in the SWITCHING period when CTEINLINECTRLEN
      --  is 0
      TSAMPLESPACING    : DFECTRL1_TSAMPLESPACING_Field :=
                           NRF52833_SVD.RADIO.Val_2us;
      --  unspecified
      Reserved_19_19    : NRF52833_SVD.Bit := 16#0#;
      --  Repeat each individual antenna pattern N times sequentially, i.e. P0,
      --  P0, P1, P1, P2, P2, P3, P3, etc.
      REPEATPATTERN     : DFECTRL1_REPEATPATTERN_Field :=
                           NRF52833_SVD.RADIO.NoRepeat;
      --  Gain will be lowered by the specified number of gain steps at the
      --  start of CTE
      AGCBACKOFFGAIN    : DFECTRL1_AGCBACKOFFGAIN_Field := 16#0#;
      --  unspecified
      Reserved_28_31    : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFECTRL1_Register use record
      NUMBEROF8US       at 0 range 0 .. 5;
      Reserved_6_6      at 0 range 6 .. 6;
      DFEINEXTENSION    at 0 range 7 .. 7;
      TSWITCHSPACING    at 0 range 8 .. 10;
      Reserved_11_11    at 0 range 11 .. 11;
      TSAMPLESPACINGREF at 0 range 12 .. 14;
      SAMPLETYPE        at 0 range 15 .. 15;
      TSAMPLESPACING    at 0 range 16 .. 18;
      Reserved_19_19    at 0 range 19 .. 19;
      REPEATPATTERN     at 0 range 20 .. 23;
      AGCBACKOFFGAIN    at 0 range 24 .. 27;
      Reserved_28_31    at 0 range 28 .. 31;
   end record;

   subtype DFECTRL2_TSWITCHOFFSET_Field is NRF52833_SVD.UInt13;
   subtype DFECTRL2_TSAMPLEOFFSET_Field is NRF52833_SVD.UInt12;

   --  Start offset for Direction finding
   type DFECTRL2_Register is record
      --  Signed value offset after the end of the CRC before starting
      --  switching in number of 16M cycles
      TSWITCHOFFSET  : DFECTRL2_TSWITCHOFFSET_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : NRF52833_SVD.UInt3 := 16#0#;
      --  Signed value offset before starting sampling in number of 16M cycles
      --  relative to the beginning of the REFERENCE state - 12 us after
      --  switching start
      TSAMPLEOFFSET  : DFECTRL2_TSAMPLEOFFSET_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFECTRL2_Register use record
      TSWITCHOFFSET  at 0 range 0 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSAMPLEOFFSET  at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype SWITCHPATTERN_SWITCHPATTERN_Field is NRF52833_SVD.Byte;

   --  GPIO patterns to be used for each antenna
   type SWITCHPATTERN_Register is record
      --  Fill array of GPIO patterns for antenna control
      SWITCHPATTERN : SWITCHPATTERN_SWITCHPATTERN_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWITCHPATTERN_Register use record
      SWITCHPATTERN at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Clears GPIO pattern array for antenna control
   type CLEARPATTERN_CLEARPATTERN_Field is
     (--  Reset value for the field
      CLEARPATTERN_CLEARPATTERN_Field_Reset,
      --  Clear the GPIO pattern
      Clear)
     with Size => 1;
   for CLEARPATTERN_CLEARPATTERN_Field use
     (CLEARPATTERN_CLEARPATTERN_Field_Reset => 0,
      Clear => 1);

   --  Clear the GPIO pattern array for antenna control
   type CLEARPATTERN_Register is record
      --  Write data bit of one shall clear (set to zero) the corresponding bit
      --  in the field. Clears GPIO pattern array for antenna control
      CLEARPATTERN  : CLEARPATTERN_CLEARPATTERN_Field :=
                       CLEARPATTERN_CLEARPATTERN_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLEARPATTERN_Register use record
      CLEARPATTERN  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ------------------------------------
   -- RADIO_PSEL cluster's Registers --
   ------------------------------------

   subtype DFEGPIO_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype DFEGPIO_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type DFEGPIO_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for DFEGPIO_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Description collection: Pin select for DFE pin n
   type DFEGPIO_PSEL_Register is record
      --  Pin number
      PIN           : DFEGPIO_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : DFEGPIO_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : DFEGPIO_CONNECT_Field :=
                       NRF52833_SVD.RADIO.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DFEGPIO_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Description collection: Pin select for DFE pin n
   type DFEGPIO_PSEL_Registers is array (0 .. 7) of DFEGPIO_PSEL_Register;

   --  Unspecified
   type RADIO_PSEL_Cluster is record
      --  Description collection: Pin select for DFE pin n
      DFEGPIO : aliased DFEGPIO_PSEL_Registers;
   end record
     with Size => 256;

   for RADIO_PSEL_Cluster use record
      DFEGPIO at 0 range 0 .. 255;
   end record;

   -----------------------------------------
   -- RADIO_DFEPACKET cluster's Registers --
   -----------------------------------------

   subtype MAXCNT_DFEPACKET_MAXCNT_Field is NRF52833_SVD.UInt14;

   --  Maximum number of buffer words to transfer
   type MAXCNT_DFEPACKET_Register is record
      --  Maximum number of buffer words to transfer
      MAXCNT         : MAXCNT_DFEPACKET_MAXCNT_Field := 16#1000#;
      --  unspecified
      Reserved_14_31 : NRF52833_SVD.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_DFEPACKET_Register use record
      MAXCNT         at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype AMOUNT_DFEPACKET_AMOUNT_Field is NRF52833_SVD.UInt16;

   --  Number of samples transferred in the last transaction
   type AMOUNT_DFEPACKET_Register is record
      --  Read-only. Number of samples transferred in the last transaction
      AMOUNT         : AMOUNT_DFEPACKET_AMOUNT_Field;
      --  unspecified
      Reserved_16_31 : NRF52833_SVD.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_DFEPACKET_Register use record
      AMOUNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  DFE packet EasyDMA channel
   type RADIO_DFEPACKET_Cluster is record
      --  Data pointer
      PTR    : aliased NRF52833_SVD.UInt32;
      --  Maximum number of buffer words to transfer
      MAXCNT : aliased MAXCNT_DFEPACKET_Register;
      --  Number of samples transferred in the last transaction
      AMOUNT : aliased AMOUNT_DFEPACKET_Register;
   end record
     with Size => 96;

   for RADIO_DFEPACKET_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   --  Peripheral power control. The peripheral and its registers will be reset
   --  to its initial state by switching the peripheral off and then back on
   --  again.
   type POWER_POWER_Field is
     (--  Peripheral is powered off
      Disabled,
      --  Peripheral is powered on
      Enabled)
     with Size => 1;
   for POWER_POWER_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Peripheral power control
   type POWER_Register is record
      --  Peripheral power control. The peripheral and its registers will be
      --  reset to its initial state by switching the peripheral off and then
      --  back on again.
      POWER         : POWER_POWER_Field := NRF52833_SVD.RADIO.Enabled;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_Register use record
      POWER         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  2.4 GHz radio
   type RADIO_Peripheral is record
      --  Enable RADIO in TX mode
      TASKS_TXEN        : aliased TASKS_TXEN_Register;
      --  Enable RADIO in RX mode
      TASKS_RXEN        : aliased TASKS_RXEN_Register;
      --  Start RADIO
      TASKS_START       : aliased TASKS_START_Register;
      --  Stop RADIO
      TASKS_STOP        : aliased TASKS_STOP_Register;
      --  Disable RADIO
      TASKS_DISABLE     : aliased TASKS_DISABLE_Register;
      --  Start the RSSI and take one single sample of the receive signal
      --  strength
      TASKS_RSSISTART   : aliased TASKS_RSSISTART_Register;
      --  Stop the RSSI measurement
      TASKS_RSSISTOP    : aliased TASKS_RSSISTOP_Register;
      --  Start the bit counter
      TASKS_BCSTART     : aliased TASKS_BCSTART_Register;
      --  Stop the bit counter
      TASKS_BCSTOP      : aliased TASKS_BCSTOP_Register;
      --  Start the energy detect measurement used in IEEE 802.15.4 mode
      TASKS_EDSTART     : aliased TASKS_EDSTART_Register;
      --  Stop the energy detect measurement
      TASKS_EDSTOP      : aliased TASKS_EDSTOP_Register;
      --  Start the clear channel assessment used in IEEE 802.15.4 mode
      TASKS_CCASTART    : aliased TASKS_CCASTART_Register;
      --  Stop the clear channel assessment
      TASKS_CCASTOP     : aliased TASKS_CCASTOP_Register;
      --  RADIO has ramped up and is ready to be started
      EVENTS_READY      : aliased EVENTS_READY_Register;
      --  Address sent or received
      EVENTS_ADDRESS    : aliased EVENTS_ADDRESS_Register;
      --  Packet payload sent or received
      EVENTS_PAYLOAD    : aliased EVENTS_PAYLOAD_Register;
      --  Packet sent or received
      EVENTS_END        : aliased EVENTS_END_Register;
      --  RADIO has been disabled
      EVENTS_DISABLED   : aliased EVENTS_DISABLED_Register;
      --  A device address match occurred on the last received packet
      EVENTS_DEVMATCH   : aliased EVENTS_DEVMATCH_Register;
      --  No device address match occurred on the last received packet
      EVENTS_DEVMISS    : aliased EVENTS_DEVMISS_Register;
      --  Sampling of receive signal strength complete
      EVENTS_RSSIEND    : aliased EVENTS_RSSIEND_Register;
      --  Bit counter reached bit count value
      EVENTS_BCMATCH    : aliased EVENTS_BCMATCH_Register;
      --  Packet received with CRC ok
      EVENTS_CRCOK      : aliased EVENTS_CRCOK_Register;
      --  Packet received with CRC error
      EVENTS_CRCERROR   : aliased EVENTS_CRCERROR_Register;
      --  IEEE 802.15.4 length field received
      EVENTS_FRAMESTART : aliased EVENTS_FRAMESTART_Register;
      --  Sampling of energy detection complete. A new ED sample is ready for
      --  readout from the RADIO.EDSAMPLE register
      EVENTS_EDEND      : aliased EVENTS_EDEND_Register;
      --  The sampling of energy detection has stopped
      EVENTS_EDSTOPPED  : aliased EVENTS_EDSTOPPED_Register;
      --  Wireless medium in idle - clear to send
      EVENTS_CCAIDLE    : aliased EVENTS_CCAIDLE_Register;
      --  Wireless medium busy - do not send
      EVENTS_CCABUSY    : aliased EVENTS_CCABUSY_Register;
      --  The CCA has stopped
      EVENTS_CCASTOPPED : aliased EVENTS_CCASTOPPED_Register;
      --  Ble_LR CI field received, receive mode is changed from Ble_LR125Kbit
      --  to Ble_LR500Kbit.
      EVENTS_RATEBOOST  : aliased EVENTS_RATEBOOST_Register;
      --  RADIO has ramped up and is ready to be started TX path
      EVENTS_TXREADY    : aliased EVENTS_TXREADY_Register;
      --  RADIO has ramped up and is ready to be started RX path
      EVENTS_RXREADY    : aliased EVENTS_RXREADY_Register;
      --  MAC header match found
      EVENTS_MHRMATCH   : aliased EVENTS_MHRMATCH_Register;
      --  Preamble indicator
      EVENTS_SYNC       : aliased EVENTS_SYNC_Register;
      --  Generated when last bit is sent on air, or received from air
      EVENTS_PHYEND     : aliased EVENTS_PHYEND_Register;
      --  CTE is present (early warning right after receiving CTEInfo byte)
      EVENTS_CTEPRESENT : aliased EVENTS_CTEPRESENT_Register;
      --  Shortcuts between local events and tasks
      SHORTS            : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET          : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR          : aliased INTENCLR_Register;
      --  CRC status
      CRCSTATUS         : aliased CRCSTATUS_Register;
      --  Received address
      RXMATCH           : aliased RXMATCH_Register;
      --  CRC field of previously received packet
      RXCRC             : aliased RXCRC_Register;
      --  Device address match index
      DAI               : aliased DAI_Register;
      --  Payload status
      PDUSTAT           : aliased PDUSTAT_Register;
      --  CTEInfo parsed from received packet
      CTESTATUS         : aliased CTESTATUS_Register;
      --  DFE status information
      DFESTATUS         : aliased DFESTATUS_Register;
      --  Packet pointer
      PACKETPTR         : aliased NRF52833_SVD.UInt32;
      --  Frequency
      FREQUENCY         : aliased FREQUENCY_Register;
      --  Output power
      TXPOWER           : aliased TXPOWER_Register;
      --  Data rate and modulation
      MODE              : aliased MODE_Register;
      --  Packet configuration register 0
      PCNF0             : aliased PCNF0_Register;
      --  Packet configuration register 1
      PCNF1             : aliased PCNF1_Register;
      --  Base address 0
      BASE0             : aliased NRF52833_SVD.UInt32;
      --  Base address 1
      BASE1             : aliased NRF52833_SVD.UInt32;
      --  Prefixes bytes for logical addresses 0-3
      PREFIX0           : aliased PREFIX0_Register;
      --  Prefixes bytes for logical addresses 4-7
      PREFIX1           : aliased PREFIX1_Register;
      --  Transmit address select
      TXADDRESS         : aliased TXADDRESS_Register;
      --  Receive address select
      RXADDRESSES       : aliased RXADDRESSES_Register;
      --  CRC configuration
      CRCCNF            : aliased CRCCNF_Register;
      --  CRC polynomial
      CRCPOLY           : aliased CRCPOLY_Register;
      --  CRC initial value
      CRCINIT           : aliased CRCINIT_Register;
      --  Interframe spacing in us
      TIFS              : aliased TIFS_Register;
      --  RSSI sample
      RSSISAMPLE        : aliased RSSISAMPLE_Register;
      --  Current radio state
      STATE             : aliased STATE_Register;
      --  Data whitening initial value
      DATAWHITEIV       : aliased DATAWHITEIV_Register;
      --  Bit counter compare
      BCC               : aliased NRF52833_SVD.UInt32;
      --  Description collection: Device address base segment n
      DAB               : aliased DAB_Registers;
      --  Description collection: Device address prefix n
      DAP               : aliased DAP_Registers;
      --  Device address match configuration
      DACNF             : aliased DACNF_Register;
      --  Search pattern configuration
      MHRMATCHCONF      : aliased NRF52833_SVD.UInt32;
      --  Pattern mask
      MHRMATCHMAS       : aliased NRF52833_SVD.UInt32;
      --  Radio mode configuration register 0
      MODECNF0          : aliased MODECNF0_Register;
      --  IEEE 802.15.4 start of frame delimiter
      SFD               : aliased SFD_Register;
      --  IEEE 802.15.4 energy detect loop count
      EDCNT             : aliased EDCNT_Register;
      --  IEEE 802.15.4 energy detect level
      EDSAMPLE          : aliased EDSAMPLE_Register;
      --  IEEE 802.15.4 clear channel assessment control
      CCACTRL           : aliased CCACTRL_Register;
      --  Whether to use Angle-of-Arrival (AOA) or Angle-of-Departure (AOD)
      DFEMODE           : aliased DFEMODE_Register;
      --  Configuration for CTE inline mode
      CTEINLINECONF     : aliased CTEINLINECONF_Register;
      --  Various configuration for Direction finding
      DFECTRL1          : aliased DFECTRL1_Register;
      --  Start offset for Direction finding
      DFECTRL2          : aliased DFECTRL2_Register;
      --  GPIO patterns to be used for each antenna
      SWITCHPATTERN     : aliased SWITCHPATTERN_Register;
      --  Clear the GPIO pattern array for antenna control
      CLEARPATTERN      : aliased CLEARPATTERN_Register;
      --  Unspecified
      PSEL              : aliased RADIO_PSEL_Cluster;
      --  DFE packet EasyDMA channel
      DFEPACKET         : aliased RADIO_DFEPACKET_Cluster;
      --  Peripheral power control
      POWER             : aliased POWER_Register;
   end record
     with Volatile;

   for RADIO_Peripheral use record
      TASKS_TXEN        at 16#0# range 0 .. 31;
      TASKS_RXEN        at 16#4# range 0 .. 31;
      TASKS_START       at 16#8# range 0 .. 31;
      TASKS_STOP        at 16#C# range 0 .. 31;
      TASKS_DISABLE     at 16#10# range 0 .. 31;
      TASKS_RSSISTART   at 16#14# range 0 .. 31;
      TASKS_RSSISTOP    at 16#18# range 0 .. 31;
      TASKS_BCSTART     at 16#1C# range 0 .. 31;
      TASKS_BCSTOP      at 16#20# range 0 .. 31;
      TASKS_EDSTART     at 16#24# range 0 .. 31;
      TASKS_EDSTOP      at 16#28# range 0 .. 31;
      TASKS_CCASTART    at 16#2C# range 0 .. 31;
      TASKS_CCASTOP     at 16#30# range 0 .. 31;
      EVENTS_READY      at 16#100# range 0 .. 31;
      EVENTS_ADDRESS    at 16#104# range 0 .. 31;
      EVENTS_PAYLOAD    at 16#108# range 0 .. 31;
      EVENTS_END        at 16#10C# range 0 .. 31;
      EVENTS_DISABLED   at 16#110# range 0 .. 31;
      EVENTS_DEVMATCH   at 16#114# range 0 .. 31;
      EVENTS_DEVMISS    at 16#118# range 0 .. 31;
      EVENTS_RSSIEND    at 16#11C# range 0 .. 31;
      EVENTS_BCMATCH    at 16#128# range 0 .. 31;
      EVENTS_CRCOK      at 16#130# range 0 .. 31;
      EVENTS_CRCERROR   at 16#134# range 0 .. 31;
      EVENTS_FRAMESTART at 16#138# range 0 .. 31;
      EVENTS_EDEND      at 16#13C# range 0 .. 31;
      EVENTS_EDSTOPPED  at 16#140# range 0 .. 31;
      EVENTS_CCAIDLE    at 16#144# range 0 .. 31;
      EVENTS_CCABUSY    at 16#148# range 0 .. 31;
      EVENTS_CCASTOPPED at 16#14C# range 0 .. 31;
      EVENTS_RATEBOOST  at 16#150# range 0 .. 31;
      EVENTS_TXREADY    at 16#154# range 0 .. 31;
      EVENTS_RXREADY    at 16#158# range 0 .. 31;
      EVENTS_MHRMATCH   at 16#15C# range 0 .. 31;
      EVENTS_SYNC       at 16#168# range 0 .. 31;
      EVENTS_PHYEND     at 16#16C# range 0 .. 31;
      EVENTS_CTEPRESENT at 16#170# range 0 .. 31;
      SHORTS            at 16#200# range 0 .. 31;
      INTENSET          at 16#304# range 0 .. 31;
      INTENCLR          at 16#308# range 0 .. 31;
      CRCSTATUS         at 16#400# range 0 .. 31;
      RXMATCH           at 16#408# range 0 .. 31;
      RXCRC             at 16#40C# range 0 .. 31;
      DAI               at 16#410# range 0 .. 31;
      PDUSTAT           at 16#414# range 0 .. 31;
      CTESTATUS         at 16#44C# range 0 .. 31;
      DFESTATUS         at 16#458# range 0 .. 31;
      PACKETPTR         at 16#504# range 0 .. 31;
      FREQUENCY         at 16#508# range 0 .. 31;
      TXPOWER           at 16#50C# range 0 .. 31;
      MODE              at 16#510# range 0 .. 31;
      PCNF0             at 16#514# range 0 .. 31;
      PCNF1             at 16#518# range 0 .. 31;
      BASE0             at 16#51C# range 0 .. 31;
      BASE1             at 16#520# range 0 .. 31;
      PREFIX0           at 16#524# range 0 .. 31;
      PREFIX1           at 16#528# range 0 .. 31;
      TXADDRESS         at 16#52C# range 0 .. 31;
      RXADDRESSES       at 16#530# range 0 .. 31;
      CRCCNF            at 16#534# range 0 .. 31;
      CRCPOLY           at 16#538# range 0 .. 31;
      CRCINIT           at 16#53C# range 0 .. 31;
      TIFS              at 16#544# range 0 .. 31;
      RSSISAMPLE        at 16#548# range 0 .. 31;
      STATE             at 16#550# range 0 .. 31;
      DATAWHITEIV       at 16#554# range 0 .. 31;
      BCC               at 16#560# range 0 .. 31;
      DAB               at 16#600# range 0 .. 255;
      DAP               at 16#620# range 0 .. 255;
      DACNF             at 16#640# range 0 .. 31;
      MHRMATCHCONF      at 16#644# range 0 .. 31;
      MHRMATCHMAS       at 16#648# range 0 .. 31;
      MODECNF0          at 16#650# range 0 .. 31;
      SFD               at 16#660# range 0 .. 31;
      EDCNT             at 16#664# range 0 .. 31;
      EDSAMPLE          at 16#668# range 0 .. 31;
      CCACTRL           at 16#66C# range 0 .. 31;
      DFEMODE           at 16#900# range 0 .. 31;
      CTEINLINECONF     at 16#904# range 0 .. 31;
      DFECTRL1          at 16#910# range 0 .. 31;
      DFECTRL2          at 16#914# range 0 .. 31;
      SWITCHPATTERN     at 16#928# range 0 .. 31;
      CLEARPATTERN      at 16#92C# range 0 .. 31;
      PSEL              at 16#930# range 0 .. 255;
      DFEPACKET         at 16#950# range 0 .. 95;
      POWER             at 16#FFC# range 0 .. 31;
   end record;

   --  2.4 GHz radio
   RADIO_Periph : aliased RADIO_Peripheral
     with Import, Address => RADIO_Base;

end NRF52833_SVD.RADIO;
