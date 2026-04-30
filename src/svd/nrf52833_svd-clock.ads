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

package NRF52833_SVD.CLOCK is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Start HFXO crystal oscillator
   type TASKS_HFCLKSTART_TASKS_HFCLKSTART_Field is
     (--  Reset value for the field
      TASKS_HFCLKSTART_TASKS_HFCLKSTART_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_HFCLKSTART_TASKS_HFCLKSTART_Field use
     (TASKS_HFCLKSTART_TASKS_HFCLKSTART_Field_Reset => 0,
      Trigger => 1);

   --  Start HFXO crystal oscillator
   type TASKS_HFCLKSTART_Register is record
      --  Write-only. Start HFXO crystal oscillator
      TASKS_HFCLKSTART : TASKS_HFCLKSTART_TASKS_HFCLKSTART_Field :=
                          TASKS_HFCLKSTART_TASKS_HFCLKSTART_Field_Reset;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_HFCLKSTART_Register use record
      TASKS_HFCLKSTART at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Stop HFXO crystal oscillator
   type TASKS_HFCLKSTOP_TASKS_HFCLKSTOP_Field is
     (--  Reset value for the field
      TASKS_HFCLKSTOP_TASKS_HFCLKSTOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_HFCLKSTOP_TASKS_HFCLKSTOP_Field use
     (TASKS_HFCLKSTOP_TASKS_HFCLKSTOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop HFXO crystal oscillator
   type TASKS_HFCLKSTOP_Register is record
      --  Write-only. Stop HFXO crystal oscillator
      TASKS_HFCLKSTOP : TASKS_HFCLKSTOP_TASKS_HFCLKSTOP_Field :=
                         TASKS_HFCLKSTOP_TASKS_HFCLKSTOP_Field_Reset;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_HFCLKSTOP_Register use record
      TASKS_HFCLKSTOP at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Start LFCLK
   type TASKS_LFCLKSTART_TASKS_LFCLKSTART_Field is
     (--  Reset value for the field
      TASKS_LFCLKSTART_TASKS_LFCLKSTART_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_LFCLKSTART_TASKS_LFCLKSTART_Field use
     (TASKS_LFCLKSTART_TASKS_LFCLKSTART_Field_Reset => 0,
      Trigger => 1);

   --  Start LFCLK
   type TASKS_LFCLKSTART_Register is record
      --  Write-only. Start LFCLK
      TASKS_LFCLKSTART : TASKS_LFCLKSTART_TASKS_LFCLKSTART_Field :=
                          TASKS_LFCLKSTART_TASKS_LFCLKSTART_Field_Reset;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_LFCLKSTART_Register use record
      TASKS_LFCLKSTART at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Stop LFCLK
   type TASKS_LFCLKSTOP_TASKS_LFCLKSTOP_Field is
     (--  Reset value for the field
      TASKS_LFCLKSTOP_TASKS_LFCLKSTOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_LFCLKSTOP_TASKS_LFCLKSTOP_Field use
     (TASKS_LFCLKSTOP_TASKS_LFCLKSTOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop LFCLK
   type TASKS_LFCLKSTOP_Register is record
      --  Write-only. Stop LFCLK
      TASKS_LFCLKSTOP : TASKS_LFCLKSTOP_TASKS_LFCLKSTOP_Field :=
                         TASKS_LFCLKSTOP_TASKS_LFCLKSTOP_Field_Reset;
      --  unspecified
      Reserved_1_31   : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_LFCLKSTOP_Register use record
      TASKS_LFCLKSTOP at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   --  Start calibration of LFRC
   type TASKS_CAL_TASKS_CAL_Field is
     (--  Reset value for the field
      TASKS_CAL_TASKS_CAL_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CAL_TASKS_CAL_Field use
     (TASKS_CAL_TASKS_CAL_Field_Reset => 0,
      Trigger => 1);

   --  Start calibration of LFRC
   type TASKS_CAL_Register is record
      --  Write-only. Start calibration of LFRC
      TASKS_CAL     : TASKS_CAL_TASKS_CAL_Field :=
                       TASKS_CAL_TASKS_CAL_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CAL_Register use record
      TASKS_CAL     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Start calibration timer
   type TASKS_CTSTART_TASKS_CTSTART_Field is
     (--  Reset value for the field
      TASKS_CTSTART_TASKS_CTSTART_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CTSTART_TASKS_CTSTART_Field use
     (TASKS_CTSTART_TASKS_CTSTART_Field_Reset => 0,
      Trigger => 1);

   --  Start calibration timer
   type TASKS_CTSTART_Register is record
      --  Write-only. Start calibration timer
      TASKS_CTSTART : TASKS_CTSTART_TASKS_CTSTART_Field :=
                       TASKS_CTSTART_TASKS_CTSTART_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CTSTART_Register use record
      TASKS_CTSTART at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stop calibration timer
   type TASKS_CTSTOP_TASKS_CTSTOP_Field is
     (--  Reset value for the field
      TASKS_CTSTOP_TASKS_CTSTOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CTSTOP_TASKS_CTSTOP_Field use
     (TASKS_CTSTOP_TASKS_CTSTOP_Field_Reset => 0,
      Trigger => 1);

   --  Stop calibration timer
   type TASKS_CTSTOP_Register is record
      --  Write-only. Stop calibration timer
      TASKS_CTSTOP  : TASKS_CTSTOP_TASKS_CTSTOP_Field :=
                       TASKS_CTSTOP_TASKS_CTSTOP_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CTSTOP_Register use record
      TASKS_CTSTOP  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  HFXO crystal oscillator started
   type EVENTS_HFCLKSTARTED_EVENTS_HFCLKSTARTED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_HFCLKSTARTED_EVENTS_HFCLKSTARTED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  HFXO crystal oscillator started
   type EVENTS_HFCLKSTARTED_Register is record
      --  HFXO crystal oscillator started
      EVENTS_HFCLKSTARTED : EVENTS_HFCLKSTARTED_EVENTS_HFCLKSTARTED_Field :=
                             NRF52833_SVD.CLOCK.NotGenerated;
      --  unspecified
      Reserved_1_31       : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_HFCLKSTARTED_Register use record
      EVENTS_HFCLKSTARTED at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  LFCLK started
   type EVENTS_LFCLKSTARTED_EVENTS_LFCLKSTARTED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_LFCLKSTARTED_EVENTS_LFCLKSTARTED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  LFCLK started
   type EVENTS_LFCLKSTARTED_Register is record
      --  LFCLK started
      EVENTS_LFCLKSTARTED : EVENTS_LFCLKSTARTED_EVENTS_LFCLKSTARTED_Field :=
                             NRF52833_SVD.CLOCK.NotGenerated;
      --  unspecified
      Reserved_1_31       : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_LFCLKSTARTED_Register use record
      EVENTS_LFCLKSTARTED at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  Calibration of LFRC completed
   type EVENTS_DONE_EVENTS_DONE_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_DONE_EVENTS_DONE_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Calibration of LFRC completed
   type EVENTS_DONE_Register is record
      --  Calibration of LFRC completed
      EVENTS_DONE   : EVENTS_DONE_EVENTS_DONE_Field :=
                       NRF52833_SVD.CLOCK.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_DONE_Register use record
      EVENTS_DONE   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Calibration timer timeout
   type EVENTS_CTTO_EVENTS_CTTO_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CTTO_EVENTS_CTTO_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Calibration timer timeout
   type EVENTS_CTTO_Register is record
      --  Calibration timer timeout
      EVENTS_CTTO   : EVENTS_CTTO_EVENTS_CTTO_Field :=
                       NRF52833_SVD.CLOCK.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CTTO_Register use record
      EVENTS_CTTO   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Calibration timer has been started and is ready to process new tasks
   type EVENTS_CTSTARTED_EVENTS_CTSTARTED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CTSTARTED_EVENTS_CTSTARTED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Calibration timer has been started and is ready to process new tasks
   type EVENTS_CTSTARTED_Register is record
      --  Calibration timer has been started and is ready to process new tasks
      EVENTS_CTSTARTED : EVENTS_CTSTARTED_EVENTS_CTSTARTED_Field :=
                          NRF52833_SVD.CLOCK.NotGenerated;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CTSTARTED_Register use record
      EVENTS_CTSTARTED at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Calibration timer has been stopped and is ready to process new tasks
   type EVENTS_CTSTOPPED_EVENTS_CTSTOPPED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CTSTOPPED_EVENTS_CTSTOPPED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Calibration timer has been stopped and is ready to process new tasks
   type EVENTS_CTSTOPPED_Register is record
      --  Calibration timer has been stopped and is ready to process new tasks
      EVENTS_CTSTOPPED : EVENTS_CTSTOPPED_EVENTS_CTSTOPPED_Field :=
                          NRF52833_SVD.CLOCK.NotGenerated;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CTSTOPPED_Register use record
      EVENTS_CTSTOPPED at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Write '1' to enable interrupt for event HFCLKSTARTED
   type INTENSET_HFCLKSTARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_HFCLKSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event HFCLKSTARTED
   type INTENSET_HFCLKSTARTED_Field_1 is
     (--  Reset value for the field
      INTENSET_HFCLKSTARTED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_HFCLKSTARTED_Field_1 use
     (INTENSET_HFCLKSTARTED_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event LFCLKSTARTED
   type INTENSET_LFCLKSTARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_LFCLKSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event LFCLKSTARTED
   type INTENSET_LFCLKSTARTED_Field_1 is
     (--  Reset value for the field
      INTENSET_LFCLKSTARTED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_LFCLKSTARTED_Field_1 use
     (INTENSET_LFCLKSTARTED_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event DONE
   type INTENSET_DONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_DONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event DONE
   type INTENSET_DONE_Field_1 is
     (--  Reset value for the field
      INTENSET_DONE_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_DONE_Field_1 use
     (INTENSET_DONE_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CTTO
   type INTENSET_CTTO_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CTTO_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CTTO
   type INTENSET_CTTO_Field_1 is
     (--  Reset value for the field
      INTENSET_CTTO_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CTTO_Field_1 use
     (INTENSET_CTTO_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CTSTARTED
   type INTENSET_CTSTARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CTSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CTSTARTED
   type INTENSET_CTSTARTED_Field_1 is
     (--  Reset value for the field
      INTENSET_CTSTARTED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CTSTARTED_Field_1 use
     (INTENSET_CTSTARTED_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CTSTOPPED
   type INTENSET_CTSTOPPED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CTSTOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CTSTOPPED
   type INTENSET_CTSTOPPED_Field_1 is
     (--  Reset value for the field
      INTENSET_CTSTOPPED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CTSTOPPED_Field_1 use
     (INTENSET_CTSTOPPED_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event HFCLKSTARTED
      HFCLKSTARTED   : INTENSET_HFCLKSTARTED_Field_1 :=
                        INTENSET_HFCLKSTARTED_Field_Reset;
      --  Write '1' to enable interrupt for event LFCLKSTARTED
      LFCLKSTARTED   : INTENSET_LFCLKSTARTED_Field_1 :=
                        INTENSET_LFCLKSTARTED_Field_Reset;
      --  unspecified
      Reserved_2_2   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to enable interrupt for event DONE
      DONE           : INTENSET_DONE_Field_1 := INTENSET_DONE_Field_Reset;
      --  Write '1' to enable interrupt for event CTTO
      CTTO           : INTENSET_CTTO_Field_1 := INTENSET_CTTO_Field_Reset;
      --  unspecified
      Reserved_5_9   : NRF52833_SVD.UInt5 := 16#0#;
      --  Write '1' to enable interrupt for event CTSTARTED
      CTSTARTED      : INTENSET_CTSTARTED_Field_1 :=
                        INTENSET_CTSTARTED_Field_Reset;
      --  Write '1' to enable interrupt for event CTSTOPPED
      CTSTOPPED      : INTENSET_CTSTOPPED_Field_1 :=
                        INTENSET_CTSTOPPED_Field_Reset;
      --  unspecified
      Reserved_12_31 : NRF52833_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      HFCLKSTARTED   at 0 range 0 .. 0;
      LFCLKSTARTED   at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      DONE           at 0 range 3 .. 3;
      CTTO           at 0 range 4 .. 4;
      Reserved_5_9   at 0 range 5 .. 9;
      CTSTARTED      at 0 range 10 .. 10;
      CTSTOPPED      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Write '1' to disable interrupt for event HFCLKSTARTED
   type INTENCLR_HFCLKSTARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_HFCLKSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event HFCLKSTARTED
   type INTENCLR_HFCLKSTARTED_Field_1 is
     (--  Reset value for the field
      INTENCLR_HFCLKSTARTED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_HFCLKSTARTED_Field_1 use
     (INTENCLR_HFCLKSTARTED_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event LFCLKSTARTED
   type INTENCLR_LFCLKSTARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_LFCLKSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event LFCLKSTARTED
   type INTENCLR_LFCLKSTARTED_Field_1 is
     (--  Reset value for the field
      INTENCLR_LFCLKSTARTED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_LFCLKSTARTED_Field_1 use
     (INTENCLR_LFCLKSTARTED_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event DONE
   type INTENCLR_DONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_DONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event DONE
   type INTENCLR_DONE_Field_1 is
     (--  Reset value for the field
      INTENCLR_DONE_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_DONE_Field_1 use
     (INTENCLR_DONE_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CTTO
   type INTENCLR_CTTO_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CTTO_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CTTO
   type INTENCLR_CTTO_Field_1 is
     (--  Reset value for the field
      INTENCLR_CTTO_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CTTO_Field_1 use
     (INTENCLR_CTTO_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CTSTARTED
   type INTENCLR_CTSTARTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CTSTARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CTSTARTED
   type INTENCLR_CTSTARTED_Field_1 is
     (--  Reset value for the field
      INTENCLR_CTSTARTED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CTSTARTED_Field_1 use
     (INTENCLR_CTSTARTED_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CTSTOPPED
   type INTENCLR_CTSTOPPED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CTSTOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CTSTOPPED
   type INTENCLR_CTSTOPPED_Field_1 is
     (--  Reset value for the field
      INTENCLR_CTSTOPPED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CTSTOPPED_Field_1 use
     (INTENCLR_CTSTOPPED_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event HFCLKSTARTED
      HFCLKSTARTED   : INTENCLR_HFCLKSTARTED_Field_1 :=
                        INTENCLR_HFCLKSTARTED_Field_Reset;
      --  Write '1' to disable interrupt for event LFCLKSTARTED
      LFCLKSTARTED   : INTENCLR_LFCLKSTARTED_Field_1 :=
                        INTENCLR_LFCLKSTARTED_Field_Reset;
      --  unspecified
      Reserved_2_2   : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to disable interrupt for event DONE
      DONE           : INTENCLR_DONE_Field_1 := INTENCLR_DONE_Field_Reset;
      --  Write '1' to disable interrupt for event CTTO
      CTTO           : INTENCLR_CTTO_Field_1 := INTENCLR_CTTO_Field_Reset;
      --  unspecified
      Reserved_5_9   : NRF52833_SVD.UInt5 := 16#0#;
      --  Write '1' to disable interrupt for event CTSTARTED
      CTSTARTED      : INTENCLR_CTSTARTED_Field_1 :=
                        INTENCLR_CTSTARTED_Field_Reset;
      --  Write '1' to disable interrupt for event CTSTOPPED
      CTSTOPPED      : INTENCLR_CTSTOPPED_Field_1 :=
                        INTENCLR_CTSTOPPED_Field_Reset;
      --  unspecified
      Reserved_12_31 : NRF52833_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      HFCLKSTARTED   at 0 range 0 .. 0;
      LFCLKSTARTED   at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      DONE           at 0 range 3 .. 3;
      CTTO           at 0 range 4 .. 4;
      Reserved_5_9   at 0 range 5 .. 9;
      CTSTARTED      at 0 range 10 .. 10;
      CTSTOPPED      at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  HFCLKSTART task triggered or not
   type HFCLKRUN_STATUS_Field is
     (--  Task not triggered
      NotTriggered,
      --  Task triggered
      Triggered)
     with Size => 1;
   for HFCLKRUN_STATUS_Field use
     (NotTriggered => 0,
      Triggered => 1);

   --  Status indicating that HFCLKSTART task has been triggered
   type HFCLKRUN_Register is record
      --  Read-only. HFCLKSTART task triggered or not
      STATUS        : HFCLKRUN_STATUS_Field;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFCLKRUN_Register use record
      STATUS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Source of HFCLK
   type HFCLKSTAT_SRC_Field is
     (--  64 MHz internal oscillator (HFINT)
      RC,
      --  64 MHz crystal oscillator (HFXO)
      Xtal)
     with Size => 1;
   for HFCLKSTAT_SRC_Field use
     (RC => 0,
      Xtal => 1);

   --  HFCLK state
   type HFCLKSTAT_STATE_Field is
     (--  HFCLK not running
      NotRunning,
      --  HFCLK running
      Running)
     with Size => 1;
   for HFCLKSTAT_STATE_Field use
     (NotRunning => 0,
      Running => 1);

   --  HFCLK status
   type HFCLKSTAT_Register is record
      --  Read-only. Source of HFCLK
      SRC            : HFCLKSTAT_SRC_Field;
      --  unspecified
      Reserved_1_15  : NRF52833_SVD.UInt15;
      --  Read-only. HFCLK state
      STATE          : HFCLKSTAT_STATE_Field;
      --  unspecified
      Reserved_17_31 : NRF52833_SVD.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFCLKSTAT_Register use record
      SRC            at 0 range 0 .. 0;
      Reserved_1_15  at 0 range 1 .. 15;
      STATE          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  LFCLKSTART task triggered or not
   type LFCLKRUN_STATUS_Field is
     (--  Task not triggered
      NotTriggered,
      --  Task triggered
      Triggered)
     with Size => 1;
   for LFCLKRUN_STATUS_Field use
     (NotTriggered => 0,
      Triggered => 1);

   --  Status indicating that LFCLKSTART task has been triggered
   type LFCLKRUN_Register is record
      --  Read-only. LFCLKSTART task triggered or not
      STATUS        : LFCLKRUN_STATUS_Field;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFCLKRUN_Register use record
      STATUS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Source of LFCLK
   type LFCLKSTAT_SRC_Field is
     (--  32.768 kHz RC oscillator (LFRC)
      RC,
      --  32.768 kHz crystal oscillator (LFXO)
      Xtal,
      --  32.768 kHz synthesized from HFCLK (LFSYNT)
      Synth)
     with Size => 2;
   for LFCLKSTAT_SRC_Field use
     (RC => 0,
      Xtal => 1,
      Synth => 2);

   --  LFCLK state
   type LFCLKSTAT_STATE_Field is
     (--  LFCLK not running
      NotRunning,
      --  LFCLK running
      Running)
     with Size => 1;
   for LFCLKSTAT_STATE_Field use
     (NotRunning => 0,
      Running => 1);

   --  LFCLK status
   type LFCLKSTAT_Register is record
      --  Read-only. Source of LFCLK
      SRC            : LFCLKSTAT_SRC_Field;
      --  unspecified
      Reserved_2_15  : NRF52833_SVD.UInt14;
      --  Read-only. LFCLK state
      STATE          : LFCLKSTAT_STATE_Field;
      --  unspecified
      Reserved_17_31 : NRF52833_SVD.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFCLKSTAT_Register use record
      SRC            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      STATE          at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Clock source
   type LFCLKSRCCOPY_SRC_Field is
     (--  32.768 kHz RC oscillator (LFRC)
      RC,
      --  32.768 kHz crystal oscillator (LFXO)
      Xtal,
      --  32.768 kHz synthesized from HFCLK (LFSYNT)
      Synth)
     with Size => 2;
   for LFCLKSRCCOPY_SRC_Field use
     (RC => 0,
      Xtal => 1,
      Synth => 2);

   --  Copy of LFCLKSRC register, set when LFCLKSTART task was triggered
   type LFCLKSRCCOPY_Register is record
      --  Read-only. Clock source
      SRC           : LFCLKSRCCOPY_SRC_Field;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFCLKSRCCOPY_Register use record
      SRC           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Clock source
   type LFCLKSRC_SRC_Field is
     (--  32.768 kHz RC oscillator (LFRC)
      RC,
      --  32.768 kHz crystal oscillator (LFXO)
      Xtal,
      --  32.768 kHz synthesized from HFCLK (LFSYNT)
      Synth)
     with Size => 2;
   for LFCLKSRC_SRC_Field use
     (RC => 0,
      Xtal => 1,
      Synth => 2);

   --  Enable or disable bypass of LFCLK crystal oscillator with external clock
   --  source
   type LFCLKSRC_BYPASS_Field is
     (--  Disable (use with Xtal or low-swing external source)
      Disabled,
      --  Enable (use with rail-to-rail external source)
      Enabled)
     with Size => 1;
   for LFCLKSRC_BYPASS_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable external source for LFCLK
   type LFCLKSRC_EXTERNAL_Field is
     (--  Disable external source (use with Xtal)
      Disabled,
      --  Enable use of external source instead of Xtal (SRC needs to be set to Xtal)
      Enabled)
     with Size => 1;
   for LFCLKSRC_EXTERNAL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Clock source for the LFCLK
   type LFCLKSRC_Register is record
      --  Clock source
      SRC            : LFCLKSRC_SRC_Field := NRF52833_SVD.CLOCK.RC;
      --  unspecified
      Reserved_2_15  : NRF52833_SVD.UInt14 := 16#0#;
      --  Enable or disable bypass of LFCLK crystal oscillator with external
      --  clock source
      BYPASS         : LFCLKSRC_BYPASS_Field := NRF52833_SVD.CLOCK.Disabled;
      --  Enable or disable external source for LFCLK
      EXTERNAL       : LFCLKSRC_EXTERNAL_Field := NRF52833_SVD.CLOCK.Disabled;
      --  unspecified
      Reserved_18_31 : NRF52833_SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFCLKSRC_Register use record
      SRC            at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      BYPASS         at 0 range 16 .. 16;
      EXTERNAL       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  HFXO debounce time. Debounce time = HFXODEBOUNCE * 16 us.
   type HFXODEBOUNCE_HFXODEBOUNCE_Field is
     (--  256 us debounce time. Recommended for 1.6 mm x 2.0 mm crystals and larger.
      Db256us,
      --  1024 us debounce time. Recommended for 1.6 mm x 1.2 mm crystals and
--  smaller.
      Db1024us)
     with Size => 8;
   for HFXODEBOUNCE_HFXODEBOUNCE_Field use
     (Db256us => 16,
      Db1024us => 64);

   --  HFXO debounce time. The HFXO is started by triggering the
   --  TASKS_HFCLKSTART task.
   type HFXODEBOUNCE_Register is record
      --  HFXO debounce time. Debounce time = HFXODEBOUNCE * 16 us.
      HFXODEBOUNCE  : HFXODEBOUNCE_HFXODEBOUNCE_Field :=
                       NRF52833_SVD.CLOCK.Db256us;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFXODEBOUNCE_Register use record
      HFXODEBOUNCE  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  LFXO debounce time.
   type LFXODEBOUNCE_LFXODEBOUNCE_Field is
     (--  8192 32.768 kHz periods, or 0.25 s. Recommended for normal Operating
--  Temperature conditions.
      Normal,
      --  16384 32.768 kHz periods, or 0.5 s. Recommended for Extended Operating
--  Temperature conditions.
      Extended)
     with Size => 1;
   for LFXODEBOUNCE_LFXODEBOUNCE_Field use
     (Normal => 0,
      Extended => 1);

   --  LFXO debounce time. The LFXO is started by triggering the
   --  TASKS_LFCLKSTART task when the LFCLKSRC register is configured for Xtal.
   type LFXODEBOUNCE_Register is record
      --  LFXO debounce time.
      LFXODEBOUNCE  : LFXODEBOUNCE_LFXODEBOUNCE_Field :=
                       NRF52833_SVD.CLOCK.Normal;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFXODEBOUNCE_Register use record
      LFXODEBOUNCE  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CTIV_CTIV_Field is NRF52833_SVD.UInt7;

   --  Calibration timer interval
   type CTIV_Register is record
      --  Calibration timer interval in multiple of 0.25 seconds. Range: 0.25
      --  seconds to 31.75 seconds.
      CTIV          : CTIV_CTIV_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : NRF52833_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTIV_Register use record
      CTIV          at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Speed of trace port clock. Note that the TRACECLK pin will output this
   --  clock divided by two.
   type TRACECONFIG_TRACEPORTSPEED_Field is
     (--  32 MHz trace port clock (TRACECLK = 16 MHz)
      Val_32MHz,
      --  16 MHz trace port clock (TRACECLK = 8 MHz)
      Val_16MHz,
      --  8 MHz trace port clock (TRACECLK = 4 MHz)
      Val_8MHz,
      --  4 MHz trace port clock (TRACECLK = 2 MHz)
      Val_4MHz)
     with Size => 2;
   for TRACECONFIG_TRACEPORTSPEED_Field use
     (Val_32MHz => 0,
      Val_16MHz => 1,
      Val_8MHz => 2,
      Val_4MHz => 3);

   --  Pin multiplexing of trace signals. See pin assignment chapter for more
   --  details.
   type TRACECONFIG_TRACEMUX_Field is
     (--  No trace signals routed to pins. All pins can be used as regular GPIOs.
      GPIO,
      --  SWO trace signal routed to pin. Remaining pins can be used as regular
--  GPIOs.
      Serial,
      --  All trace signals (TRACECLK and TRACEDATA[n]) routed to pins.
      Parallel)
     with Size => 2;
   for TRACECONFIG_TRACEMUX_Field use
     (GPIO => 0,
      Serial => 1,
      Parallel => 2);

   --  Clocking options for the trace port debug interface
   type TRACECONFIG_Register is record
      --  Speed of trace port clock. Note that the TRACECLK pin will output
      --  this clock divided by two.
      TRACEPORTSPEED : TRACECONFIG_TRACEPORTSPEED_Field :=
                        NRF52833_SVD.CLOCK.Val_32MHz;
      --  unspecified
      Reserved_2_15  : NRF52833_SVD.UInt14 := 16#0#;
      --  Pin multiplexing of trace signals. See pin assignment chapter for
      --  more details.
      TRACEMUX       : TRACECONFIG_TRACEMUX_Field := NRF52833_SVD.CLOCK.GPIO;
      --  unspecified
      Reserved_18_31 : NRF52833_SVD.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRACECONFIG_Register use record
      TRACEPORTSPEED at 0 range 0 .. 1;
      Reserved_2_15  at 0 range 2 .. 15;
      TRACEMUX       at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Clock control
   type CLOCK_Peripheral is record
      --  Start HFXO crystal oscillator
      TASKS_HFCLKSTART    : aliased TASKS_HFCLKSTART_Register;
      --  Stop HFXO crystal oscillator
      TASKS_HFCLKSTOP     : aliased TASKS_HFCLKSTOP_Register;
      --  Start LFCLK
      TASKS_LFCLKSTART    : aliased TASKS_LFCLKSTART_Register;
      --  Stop LFCLK
      TASKS_LFCLKSTOP     : aliased TASKS_LFCLKSTOP_Register;
      --  Start calibration of LFRC
      TASKS_CAL           : aliased TASKS_CAL_Register;
      --  Start calibration timer
      TASKS_CTSTART       : aliased TASKS_CTSTART_Register;
      --  Stop calibration timer
      TASKS_CTSTOP        : aliased TASKS_CTSTOP_Register;
      --  HFXO crystal oscillator started
      EVENTS_HFCLKSTARTED : aliased EVENTS_HFCLKSTARTED_Register;
      --  LFCLK started
      EVENTS_LFCLKSTARTED : aliased EVENTS_LFCLKSTARTED_Register;
      --  Calibration of LFRC completed
      EVENTS_DONE         : aliased EVENTS_DONE_Register;
      --  Calibration timer timeout
      EVENTS_CTTO         : aliased EVENTS_CTTO_Register;
      --  Calibration timer has been started and is ready to process new tasks
      EVENTS_CTSTARTED    : aliased EVENTS_CTSTARTED_Register;
      --  Calibration timer has been stopped and is ready to process new tasks
      EVENTS_CTSTOPPED    : aliased EVENTS_CTSTOPPED_Register;
      --  Enable interrupt
      INTENSET            : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR            : aliased INTENCLR_Register;
      --  Status indicating that HFCLKSTART task has been triggered
      HFCLKRUN            : aliased HFCLKRUN_Register;
      --  HFCLK status
      HFCLKSTAT           : aliased HFCLKSTAT_Register;
      --  Status indicating that LFCLKSTART task has been triggered
      LFCLKRUN            : aliased LFCLKRUN_Register;
      --  LFCLK status
      LFCLKSTAT           : aliased LFCLKSTAT_Register;
      --  Copy of LFCLKSRC register, set when LFCLKSTART task was triggered
      LFCLKSRCCOPY        : aliased LFCLKSRCCOPY_Register;
      --  Clock source for the LFCLK
      LFCLKSRC            : aliased LFCLKSRC_Register;
      --  HFXO debounce time. The HFXO is started by triggering the
      --  TASKS_HFCLKSTART task.
      HFXODEBOUNCE        : aliased HFXODEBOUNCE_Register;
      --  LFXO debounce time. The LFXO is started by triggering the
      --  TASKS_LFCLKSTART task when the LFCLKSRC register is configured for
      --  Xtal.
      LFXODEBOUNCE        : aliased LFXODEBOUNCE_Register;
      --  Calibration timer interval
      CTIV                : aliased CTIV_Register;
      --  Clocking options for the trace port debug interface
      TRACECONFIG         : aliased TRACECONFIG_Register;
   end record
     with Volatile;

   for CLOCK_Peripheral use record
      TASKS_HFCLKSTART    at 16#0# range 0 .. 31;
      TASKS_HFCLKSTOP     at 16#4# range 0 .. 31;
      TASKS_LFCLKSTART    at 16#8# range 0 .. 31;
      TASKS_LFCLKSTOP     at 16#C# range 0 .. 31;
      TASKS_CAL           at 16#10# range 0 .. 31;
      TASKS_CTSTART       at 16#14# range 0 .. 31;
      TASKS_CTSTOP        at 16#18# range 0 .. 31;
      EVENTS_HFCLKSTARTED at 16#100# range 0 .. 31;
      EVENTS_LFCLKSTARTED at 16#104# range 0 .. 31;
      EVENTS_DONE         at 16#10C# range 0 .. 31;
      EVENTS_CTTO         at 16#110# range 0 .. 31;
      EVENTS_CTSTARTED    at 16#128# range 0 .. 31;
      EVENTS_CTSTOPPED    at 16#12C# range 0 .. 31;
      INTENSET            at 16#304# range 0 .. 31;
      INTENCLR            at 16#308# range 0 .. 31;
      HFCLKRUN            at 16#408# range 0 .. 31;
      HFCLKSTAT           at 16#40C# range 0 .. 31;
      LFCLKRUN            at 16#414# range 0 .. 31;
      LFCLKSTAT           at 16#418# range 0 .. 31;
      LFCLKSRCCOPY        at 16#41C# range 0 .. 31;
      LFCLKSRC            at 16#518# range 0 .. 31;
      HFXODEBOUNCE        at 16#528# range 0 .. 31;
      LFXODEBOUNCE        at 16#52C# range 0 .. 31;
      CTIV                at 16#538# range 0 .. 31;
      TRACECONFIG         at 16#55C# range 0 .. 31;
   end record;

   --  Clock control
   CLOCK_Periph : aliased CLOCK_Peripheral
     with Import, Address => CLOCK_Base;

end NRF52833_SVD.CLOCK;
