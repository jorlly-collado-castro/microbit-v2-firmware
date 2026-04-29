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

package NRF52833_SVD.ECB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start ECB block encrypt
   type TASKS_STARTECB_TASKS_STARTECB_Field is
     (--  Reset value for the field
      TASKS_STARTECB_TASKS_STARTECB_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STARTECB_TASKS_STARTECB_Field use
     (TASKS_STARTECB_TASKS_STARTECB_Field_Reset => 0,
      Trigger => 1);

   --  Start ECB block encrypt
   type TASKS_STARTECB_Register is record
      --  Write-only. Start ECB block encrypt
      TASKS_STARTECB : TASKS_STARTECB_TASKS_STARTECB_Field :=
                        TASKS_STARTECB_TASKS_STARTECB_Field_Reset;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STARTECB_Register use record
      TASKS_STARTECB at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Abort a possible executing ECB operation
   type TASKS_STOPECB_TASKS_STOPECB_Field is
     (--  Reset value for the field
      TASKS_STOPECB_TASKS_STOPECB_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOPECB_TASKS_STOPECB_Field use
     (TASKS_STOPECB_TASKS_STOPECB_Field_Reset => 0,
      Trigger => 1);

   --  Abort a possible executing ECB operation
   type TASKS_STOPECB_Register is record
      --  Write-only. Abort a possible executing ECB operation
      TASKS_STOPECB : TASKS_STOPECB_TASKS_STOPECB_Field :=
                       TASKS_STOPECB_TASKS_STOPECB_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_STOPECB_Register use record
      TASKS_STOPECB at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ECB block encrypt complete
   type EVENTS_ENDECB_EVENTS_ENDECB_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ENDECB_EVENTS_ENDECB_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  ECB block encrypt complete
   type EVENTS_ENDECB_Register is record
      --  ECB block encrypt complete
      EVENTS_ENDECB : EVENTS_ENDECB_EVENTS_ENDECB_Field :=
                       NRF52833_SVD.ECB.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ENDECB_Register use record
      EVENTS_ENDECB at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  ECB block encrypt aborted because of a STOPECB task or due to an error
   type EVENTS_ERRORECB_EVENTS_ERRORECB_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_ERRORECB_EVENTS_ERRORECB_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  ECB block encrypt aborted because of a STOPECB task or due to an error
   type EVENTS_ERRORECB_Register is record
      --  ECB block encrypt aborted because of a STOPECB task or due to an
      --  error
      EVENTS_ERRORECB : EVENTS_ERRORECB_EVENTS_ERRORECB_Field :=
                         NRF52833_SVD.ECB.NotGenerated;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_ERRORECB_Register use record
      EVENTS_ERRORECB at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Write '1' to enable interrupt for event ENDECB
   type INTENSET_ENDECB_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ENDECB_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event ENDECB
   type INTENSET_ENDECB_Field_1 is
     (--  Reset value for the field
      INTENSET_ENDECB_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ENDECB_Field_1 use
     (INTENSET_ENDECB_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event ERRORECB
   type INTENSET_ERRORECB_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_ERRORECB_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event ERRORECB
   type INTENSET_ERRORECB_Field_1 is
     (--  Reset value for the field
      INTENSET_ERRORECB_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_ERRORECB_Field_1 use
     (INTENSET_ERRORECB_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event ENDECB
      ENDECB        : INTENSET_ENDECB_Field_1 := INTENSET_ENDECB_Field_Reset;
      --  Write '1' to enable interrupt for event ERRORECB
      ERRORECB      : INTENSET_ERRORECB_Field_1 :=
                       INTENSET_ERRORECB_Field_Reset;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      ENDECB        at 0 range 0 .. 0;
      ERRORECB      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Write '1' to disable interrupt for event ENDECB
   type INTENCLR_ENDECB_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ENDECB_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event ENDECB
   type INTENCLR_ENDECB_Field_1 is
     (--  Reset value for the field
      INTENCLR_ENDECB_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ENDECB_Field_1 use
     (INTENCLR_ENDECB_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event ERRORECB
   type INTENCLR_ERRORECB_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_ERRORECB_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event ERRORECB
   type INTENCLR_ERRORECB_Field_1 is
     (--  Reset value for the field
      INTENCLR_ERRORECB_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_ERRORECB_Field_1 use
     (INTENCLR_ERRORECB_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event ENDECB
      ENDECB        : INTENCLR_ENDECB_Field_1 := INTENCLR_ENDECB_Field_Reset;
      --  Write '1' to disable interrupt for event ERRORECB
      ERRORECB      : INTENCLR_ERRORECB_Field_1 :=
                       INTENCLR_ERRORECB_Field_Reset;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      ENDECB        at 0 range 0 .. 0;
      ERRORECB      at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AES ECB Mode Encryption
   type ECB_Peripheral is record
      --  Start ECB block encrypt
      TASKS_STARTECB  : aliased TASKS_STARTECB_Register;
      --  Abort a possible executing ECB operation
      TASKS_STOPECB   : aliased TASKS_STOPECB_Register;
      --  ECB block encrypt complete
      EVENTS_ENDECB   : aliased EVENTS_ENDECB_Register;
      --  ECB block encrypt aborted because of a STOPECB task or due to an
      --  error
      EVENTS_ERRORECB : aliased EVENTS_ERRORECB_Register;
      --  Enable interrupt
      INTENSET        : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR        : aliased INTENCLR_Register;
      --  ECB block encrypt memory pointers
      ECBDATAPTR      : aliased NRF52833_SVD.UInt32;
   end record
     with Volatile;

   for ECB_Peripheral use record
      TASKS_STARTECB  at 16#0# range 0 .. 31;
      TASKS_STOPECB   at 16#4# range 0 .. 31;
      EVENTS_ENDECB   at 16#100# range 0 .. 31;
      EVENTS_ERRORECB at 16#104# range 0 .. 31;
      INTENSET        at 16#304# range 0 .. 31;
      INTENCLR        at 16#308# range 0 .. 31;
      ECBDATAPTR      at 16#504# range 0 .. 31;
   end record;

   --  AES ECB Mode Encryption
   ECB_Periph : aliased ECB_Peripheral
     with Import, Address => ECB_Base;

end NRF52833_SVD.ECB;
