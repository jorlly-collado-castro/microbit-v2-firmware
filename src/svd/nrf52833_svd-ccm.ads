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

package NRF52833_SVD.CCM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start generation of key-stream. This operation will stop by itself when
   --  completed.
   type TASKS_KSGEN_TASKS_KSGEN_Field is
     (--  Reset value for the field
      TASKS_KSGEN_TASKS_KSGEN_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_KSGEN_TASKS_KSGEN_Field use
     (TASKS_KSGEN_TASKS_KSGEN_Field_Reset => 0,
      Trigger => 1);

   --  Start generation of key-stream. This operation will stop by itself when
   --  completed.
   type TASKS_KSGEN_Register is record
      --  Write-only. Start generation of key-stream. This operation will stop
      --  by itself when completed.
      TASKS_KSGEN   : TASKS_KSGEN_TASKS_KSGEN_Field :=
                       TASKS_KSGEN_TASKS_KSGEN_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_KSGEN_Register use record
      TASKS_KSGEN   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start encryption/decryption. This operation will stop by itself when
   --  completed.
   type TASKS_CRYPT_TASKS_CRYPT_Field is
     (--  Reset value for the field
      TASKS_CRYPT_TASKS_CRYPT_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CRYPT_TASKS_CRYPT_Field use
     (TASKS_CRYPT_TASKS_CRYPT_Field_Reset => 0,
      Trigger => 1);

   --  Start encryption/decryption. This operation will stop by itself when
   --  completed.
   type TASKS_CRYPT_Register is record
      --  Write-only. Start encryption/decryption. This operation will stop by
      --  itself when completed.
      TASKS_CRYPT   : TASKS_CRYPT_TASKS_CRYPT_Field :=
                       TASKS_CRYPT_TASKS_CRYPT_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CRYPT_Register use record
      TASKS_CRYPT   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stop encryption/decryption
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop encryption/decryption
   type TASKS_STOP_Register is record
      --  Write-only. Stop encryption/decryption
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

   --  Override DATARATE setting in MODE register with the contents of the
   --  RATEOVERRIDE register for any ongoing encryption/decryption
   type TASKS_RATEOVERRIDE_TASKS_RATEOVERRIDE_Field is
     (--  Reset value for the field
      TASKS_RATEOVERRIDE_TASKS_RATEOVERRIDE_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_RATEOVERRIDE_TASKS_RATEOVERRIDE_Field use
     (TASKS_RATEOVERRIDE_TASKS_RATEOVERRIDE_Field_Reset => 0,
      Trigger => 1);

   --  Override DATARATE setting in MODE register with the contents of the
   --  RATEOVERRIDE register for any ongoing encryption/decryption
   type TASKS_RATEOVERRIDE_Register is record
      --  Write-only. Override DATARATE setting in MODE register with the
      --  contents of the RATEOVERRIDE register for any ongoing
      --  encryption/decryption
      TASKS_RATEOVERRIDE : TASKS_RATEOVERRIDE_TASKS_RATEOVERRIDE_Field :=
                            TASKS_RATEOVERRIDE_TASKS_RATEOVERRIDE_Field_Reset;
      --  unspecified
      Reserved_1_31      : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_RATEOVERRIDE_Register use record
      TASKS_RATEOVERRIDE at 0 range 0 .. 0;
      Reserved_1_31      at 0 range 1 .. 31;
   end record;

   --  Key-stream generation complete
   type EVENTS_ENDKSGEN_EVENTS_ENDKSGEN_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ENDKSGEN_EVENTS_ENDKSGEN_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Key-stream generation complete
   type EVENTS_ENDKSGEN_Register is record
      --  Key-stream generation complete
      EVENTS_ENDKSGEN : EVENTS_ENDKSGEN_EVENTS_ENDKSGEN_Field :=
                         NRF52833_SVD.CCM.NotGenerated;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ENDKSGEN_Register use record
      EVENTS_ENDKSGEN at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Encrypt/decrypt complete
   type EVENTS_ENDCRYPT_EVENTS_ENDCRYPT_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ENDCRYPT_EVENTS_ENDCRYPT_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Encrypt/decrypt complete
   type EVENTS_ENDCRYPT_Register is record
      --  Encrypt/decrypt complete
      EVENTS_ENDCRYPT : EVENTS_ENDCRYPT_EVENTS_ENDCRYPT_Field :=
                         NRF52833_SVD.CCM.NotGenerated;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ENDCRYPT_Register use record
      EVENTS_ENDCRYPT at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Deprecated field - CCM error event
   type EVENTS_ERROR_EVENTS_ERROR_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ERROR_EVENTS_ERROR_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Deprecated register - CCM error event
   type EVENTS_ERROR_Register is record
      --  Deprecated field - CCM error event
      EVENTS_ERROR  : EVENTS_ERROR_EVENTS_ERROR_Field :=
                       NRF52833_SVD.CCM.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ERROR_Register use record
      EVENTS_ERROR  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Shortcut between event ENDKSGEN and task CRYPT
   type SHORTS_ENDKSGEN_CRYPT_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_ENDKSGEN_CRYPT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcuts between local events and tasks
   type SHORTS_Register is record
      --  Shortcut between event ENDKSGEN and task CRYPT
      ENDKSGEN_CRYPT : SHORTS_ENDKSGEN_CRYPT_Field :=
                        NRF52833_SVD.CCM.Disabled;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      ENDKSGEN_CRYPT at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Write '1' to enable interrupt for event ENDKSGEN
   type INTENSET_ENDKSGEN_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDKSGEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event ENDKSGEN
   type INTENSET_ENDKSGEN_Field_1 is
     (--  Reset value for the field
      INTENSET_ENDKSGEN_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDKSGEN_Field_1 use
     (INTENSET_ENDKSGEN_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event ENDCRYPT
   type INTENSET_ENDCRYPT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDCRYPT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event ENDCRYPT
   type INTENSET_ENDCRYPT_Field_1 is
     (--  Reset value for the field
      INTENSET_ENDCRYPT_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDCRYPT_Field_1 use
     (INTENSET_ENDCRYPT_Field_Reset => 0,
      Set => 1);

   --  Deprecated intsetfield - Write '1' to enable interrupt for event ERROR
   type INTENSET_ERROR_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Deprecated intsetfield - Write '1' to enable interrupt for event ERROR
   type INTENSET_ERROR_Field_1 is
     (--  Reset value for the field
      INTENSET_ERROR_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ERROR_Field_1 use
     (INTENSET_ERROR_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event ENDKSGEN
      ENDKSGEN      : INTENSET_ENDKSGEN_Field_1 :=
                       INTENSET_ENDKSGEN_Field_Reset;
      --  Write '1' to enable interrupt for event ENDCRYPT
      ENDCRYPT      : INTENSET_ENDCRYPT_Field_1 :=
                       INTENSET_ENDCRYPT_Field_Reset;
      --  Deprecated intsetfield - Write '1' to enable interrupt for event
      --  ERROR
      ERROR         : INTENSET_ERROR_Field_1 := INTENSET_ERROR_Field_Reset;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      ENDKSGEN      at 0 range 0 .. 0;
      ENDCRYPT      at 0 range 1 .. 1;
      ERROR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Write '1' to disable interrupt for event ENDKSGEN
   type INTENCLR_ENDKSGEN_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDKSGEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event ENDKSGEN
   type INTENCLR_ENDKSGEN_Field_1 is
     (--  Reset value for the field
      INTENCLR_ENDKSGEN_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDKSGEN_Field_1 use
     (INTENCLR_ENDKSGEN_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event ENDCRYPT
   type INTENCLR_ENDCRYPT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDCRYPT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event ENDCRYPT
   type INTENCLR_ENDCRYPT_Field_1 is
     (--  Reset value for the field
      INTENCLR_ENDCRYPT_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDCRYPT_Field_1 use
     (INTENCLR_ENDCRYPT_Field_Reset => 0,
      Clear => 1);

   --  Deprecated intclrfield - Write '1' to disable interrupt for event ERROR
   type INTENCLR_ERROR_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ERROR_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Deprecated intclrfield - Write '1' to disable interrupt for event ERROR
   type INTENCLR_ERROR_Field_1 is
     (--  Reset value for the field
      INTENCLR_ERROR_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ERROR_Field_1 use
     (INTENCLR_ERROR_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event ENDKSGEN
      ENDKSGEN      : INTENCLR_ENDKSGEN_Field_1 :=
                       INTENCLR_ENDKSGEN_Field_Reset;
      --  Write '1' to disable interrupt for event ENDCRYPT
      ENDCRYPT      : INTENCLR_ENDCRYPT_Field_1 :=
                       INTENCLR_ENDCRYPT_Field_Reset;
      --  Deprecated intclrfield - Write '1' to disable interrupt for event
      --  ERROR
      ERROR         : INTENCLR_ERROR_Field_1 := INTENCLR_ERROR_Field_Reset;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      ENDKSGEN      at 0 range 0 .. 0;
      ENDCRYPT      at 0 range 1 .. 1;
      ERROR         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  The result of the MIC check performed during the previous decryption
   --  operation
   type MICSTATUS_MICSTATUS_Field is
     (--  MIC check failed
      CheckFailed,
      --  MIC check passed
      CheckPassed)
     with Size => 1;
   for MICSTATUS_MICSTATUS_Field use
     (CheckFailed => 0,
      CheckPassed => 1);

   --  MIC check result
   type MICSTATUS_Register is record
      --  Read-only. The result of the MIC check performed during the previous
      --  decryption operation
      MICSTATUS     : MICSTATUS_MICSTATUS_Field;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MICSTATUS_Register use record
      MICSTATUS     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable or disable CCM
   type ENABLE_ENABLE_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 2;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 2);

   --  Enable
   type ENABLE_Register is record
      --  Enable or disable CCM
      ENABLE        : ENABLE_ENABLE_Field := NRF52833_SVD.CCM.Disabled;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  The mode of operation to be used. The settings in this register apply
   --  whenever either the KSGEN or CRYPT tasks are triggered.
   type MODE_MODE_Field is
     (--  AES CCM packet encryption mode
      Encryption,
      --  AES CCM packet decryption mode
      Decryption)
     with Size => 1;
   for MODE_MODE_Field use
     (Encryption => 0,
      Decryption => 1);

   --  Radio data rate that the CCM shall run synchronous with
   type MODE_DATARATE_Field is
     (--  1 Mbps
      Val_1Mbit,
      --  2 Mbps
      Val_2Mbit,
      --  125 Kbps
      Val_125Kbps,
      --  500 Kbps
      Val_500Kbps)
     with Size => 2;
   for MODE_DATARATE_Field use
     (Val_1Mbit => 0,
      Val_2Mbit => 1,
      Val_125Kbps => 2,
      Val_500Kbps => 3);

   --  Packet length configuration
   type MODE_LENGTH_Field is
     (--  Default length. Effective length of LENGTH field in encrypted/decrypted
--  packet is 5 bits. A key-stream for packet payloads up to 27 bytes will be
--  generated.
      Default,
      --  Extended length. Effective length of LENGTH field in encrypted/decrypted
--  packet is 8 bits. A key-stream for packet payloads up to MAXPACKETSIZE
--  bytes will be generated.
      Extended)
     with Size => 1;
   for MODE_LENGTH_Field use
     (Default => 0,
      Extended => 1);

   --  Operation mode
   type MODE_Register is record
      --  The mode of operation to be used. The settings in this register apply
      --  whenever either the KSGEN or CRYPT tasks are triggered.
      MODE           : MODE_MODE_Field := NRF52833_SVD.CCM.Decryption;
      --  unspecified
      Reserved_1_15  : NRF52833_SVD.UInt15 := 16#0#;
      --  Radio data rate that the CCM shall run synchronous with
      DATARATE       : MODE_DATARATE_Field := NRF52833_SVD.CCM.Val_1Mbit;
      --  unspecified
      Reserved_18_23 : NRF52833_SVD.UInt6 := 16#0#;
      --  Packet length configuration
      LENGTH         : MODE_LENGTH_Field := NRF52833_SVD.CCM.Default;
      --  unspecified
      Reserved_25_31 : NRF52833_SVD.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      MODE           at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      DATARATE       at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      LENGTH         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype MAXPACKETSIZE_MAXPACKETSIZE_Field is NRF52833_SVD.Byte;

   --  Length of key-stream generated when MODE.LENGTH = Extended.
   type MAXPACKETSIZE_Register is record
      --  Length of key-stream generated when MODE.LENGTH = Extended. This
      --  value must be greater or equal to the subsequent packet payload to be
      --  encrypted/decrypted.
      MAXPACKETSIZE : MAXPACKETSIZE_MAXPACKETSIZE_Field := 16#FB#;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXPACKETSIZE_Register use record
      MAXPACKETSIZE at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Data rate override setting.
   type RATEOVERRIDE_RATEOVERRIDE_Field is
     (--  1 Mbps
      Val_1Mbit,
      --  2 Mbps
      Val_2Mbit,
      --  125 Kbps
      Val_125Kbps,
      --  500 Kbps
      Val_500Kbps)
     with Size => 2;
   for RATEOVERRIDE_RATEOVERRIDE_Field use
     (Val_1Mbit => 0,
      Val_2Mbit => 1,
      Val_125Kbps => 2,
      Val_500Kbps => 3);

   --  Data rate override setting.
   type RATEOVERRIDE_Register is record
      --  Data rate override setting.
      RATEOVERRIDE  : RATEOVERRIDE_RATEOVERRIDE_Field :=
                       NRF52833_SVD.CCM.Val_1Mbit;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RATEOVERRIDE_Register use record
      RATEOVERRIDE  at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AES CCM Mode Encryption
   type CCM_Peripheral is record
      --  Start generation of key-stream. This operation will stop by itself
      --  when completed.
      TASKS_KSGEN        : aliased TASKS_KSGEN_Register;
      --  Start encryption/decryption. This operation will stop by itself when
      --  completed.
      TASKS_CRYPT        : aliased TASKS_CRYPT_Register;
      --  Stop encryption/decryption
      TASKS_STOP         : aliased TASKS_STOP_Register;
      --  Override DATARATE setting in MODE register with the contents of the
      --  RATEOVERRIDE register for any ongoing encryption/decryption
      TASKS_RATEOVERRIDE : aliased TASKS_RATEOVERRIDE_Register;
      --  Key-stream generation complete
      EVENTS_ENDKSGEN    : aliased EVENTS_ENDKSGEN_Register;
      --  Encrypt/decrypt complete
      EVENTS_ENDCRYPT    : aliased EVENTS_ENDCRYPT_Register;
      --  Deprecated register - CCM error event
      EVENTS_ERROR       : aliased EVENTS_ERROR_Register;
      --  Shortcuts between local events and tasks
      SHORTS             : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET           : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR           : aliased INTENCLR_Register;
      --  MIC check result
      MICSTATUS          : aliased MICSTATUS_Register;
      --  Enable
      ENABLE             : aliased ENABLE_Register;
      --  Operation mode
      MODE               : aliased MODE_Register;
      --  Pointer to data structure holding AES key and NONCE vector
      CNFPTR             : aliased NRF52833_SVD.UInt32;
      --  Input pointer
      INPTR              : aliased NRF52833_SVD.UInt32;
      --  Output pointer
      OUTPTR             : aliased NRF52833_SVD.UInt32;
      --  Pointer to data area used for temporary storage
      SCRATCHPTR         : aliased NRF52833_SVD.UInt32;
      --  Length of key-stream generated when MODE.LENGTH = Extended.
      MAXPACKETSIZE      : aliased MAXPACKETSIZE_Register;
      --  Data rate override setting.
      RATEOVERRIDE       : aliased RATEOVERRIDE_Register;
   end record
     with Volatile;

   for CCM_Peripheral use record
      TASKS_KSGEN        at 16#0# range 0 .. 31;
      TASKS_CRYPT        at 16#4# range 0 .. 31;
      TASKS_STOP         at 16#8# range 0 .. 31;
      TASKS_RATEOVERRIDE at 16#C# range 0 .. 31;
      EVENTS_ENDKSGEN    at 16#100# range 0 .. 31;
      EVENTS_ENDCRYPT    at 16#104# range 0 .. 31;
      EVENTS_ERROR       at 16#108# range 0 .. 31;
      SHORTS             at 16#200# range 0 .. 31;
      INTENSET           at 16#304# range 0 .. 31;
      INTENCLR           at 16#308# range 0 .. 31;
      MICSTATUS          at 16#400# range 0 .. 31;
      ENABLE             at 16#500# range 0 .. 31;
      MODE               at 16#504# range 0 .. 31;
      CNFPTR             at 16#508# range 0 .. 31;
      INPTR              at 16#50C# range 0 .. 31;
      OUTPTR             at 16#510# range 0 .. 31;
      SCRATCHPTR         at 16#514# range 0 .. 31;
      MAXPACKETSIZE      at 16#518# range 0 .. 31;
      RATEOVERRIDE       at 16#51C# range 0 .. 31;
   end record;

   --  AES CCM Mode Encryption
   CCM_Periph : aliased CCM_Peripheral
     with Import, Address => CCM_Base;

end NRF52833_SVD.CCM;
