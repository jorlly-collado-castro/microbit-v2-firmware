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

package NRF52833_SVD.RNG is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Task starting the random number generator
   type TASKS_START_TASKS_START_Field is
     (--  Reset value for the field
      TASKS_START_TASKS_START_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_START_TASKS_START_Field use
     (TASKS_START_TASKS_START_Field_Reset => 0,
      Trigger => 1);

   --  Task starting the random number generator
   type TASKS_START_Register is record
      --  Write-only. Task starting the random number generator
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

   --  Task stopping the random number generator
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Task stopping the random number generator
   type TASKS_STOP_Register is record
      --  Write-only. Task stopping the random number generator
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

   --  Event being generated for every new random number written to the VALUE
   --  register
   type EVENTS_VALRDY_EVENTS_VALRDY_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_VALRDY_EVENTS_VALRDY_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Event being generated for every new random number written to the VALUE
   --  register
   type EVENTS_VALRDY_Register is record
      --  Event being generated for every new random number written to the
      --  VALUE register
      EVENTS_VALRDY : EVENTS_VALRDY_EVENTS_VALRDY_Field :=
                       NRF52833_SVD.RNG.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_VALRDY_Register use record
      EVENTS_VALRDY at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Shortcut between event VALRDY and task STOP
   type SHORTS_VALRDY_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_VALRDY_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcuts between local events and tasks
   type SHORTS_Register is record
      --  Shortcut between event VALRDY and task STOP
      VALRDY_STOP   : SHORTS_VALRDY_STOP_Field := NRF52833_SVD.RNG.Disabled;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      VALRDY_STOP   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Write '1' to enable interrupt for event VALRDY
   type INTENSET_VALRDY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_VALRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event VALRDY
   type INTENSET_VALRDY_Field_1 is
     (--  Reset value for the field
      INTENSET_VALRDY_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_VALRDY_Field_1 use
     (INTENSET_VALRDY_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event VALRDY
      VALRDY        : INTENSET_VALRDY_Field_1 := INTENSET_VALRDY_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      VALRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Write '1' to disable interrupt for event VALRDY
   type INTENCLR_VALRDY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_VALRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event VALRDY
   type INTENCLR_VALRDY_Field_1 is
     (--  Reset value for the field
      INTENCLR_VALRDY_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_VALRDY_Field_1 use
     (INTENCLR_VALRDY_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event VALRDY
      VALRDY        : INTENCLR_VALRDY_Field_1 := INTENCLR_VALRDY_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      VALRDY        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Bias correction
   type CONFIG_DERCEN_Field is
     (--  Disabled
      Disabled,
      --  Enabled
      Enabled)
     with Size => 1;
   for CONFIG_DERCEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Configuration register
   type CONFIG_Register is record
      --  Bias correction
      DERCEN        : CONFIG_DERCEN_Field := NRF52833_SVD.RNG.Disabled;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      DERCEN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype VALUE_VALUE_Field is NRF52833_SVD.Byte;

   --  Output random number
   type VALUE_Register is record
      --  Read-only. Generated random number
      VALUE         : VALUE_VALUE_Field;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VALUE_Register use record
      VALUE         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Random Number Generator
   type RNG_Peripheral is record
      --  Task starting the random number generator
      TASKS_START   : aliased TASKS_START_Register;
      --  Task stopping the random number generator
      TASKS_STOP    : aliased TASKS_STOP_Register;
      --  Event being generated for every new random number written to the
      --  VALUE register
      EVENTS_VALRDY : aliased EVENTS_VALRDY_Register;
      --  Shortcuts between local events and tasks
      SHORTS        : aliased SHORTS_Register;
      --  Enable interrupt
      INTENSET      : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR      : aliased INTENCLR_Register;
      --  Configuration register
      CONFIG        : aliased CONFIG_Register;
      --  Output random number
      VALUE         : aliased VALUE_Register;
   end record
     with Volatile;

   for RNG_Peripheral use record
      TASKS_START   at 16#0# range 0 .. 31;
      TASKS_STOP    at 16#4# range 0 .. 31;
      EVENTS_VALRDY at 16#100# range 0 .. 31;
      SHORTS        at 16#200# range 0 .. 31;
      INTENSET      at 16#304# range 0 .. 31;
      INTENCLR      at 16#308# range 0 .. 31;
      CONFIG        at 16#504# range 0 .. 31;
      VALUE         at 16#508# range 0 .. 31;
   end record;

   --  Random Number Generator
   RNG_Periph : aliased RNG_Peripheral
     with Import, Address => RNG_Base;

end NRF52833_SVD.RNG;
