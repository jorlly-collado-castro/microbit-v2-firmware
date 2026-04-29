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

package NRF52833_SVD.SAADC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Starts the SAADC and prepares the result buffer in RAM
   type TASKS_START_TASKS_START_Field is
     (--  Reset value for the field
      TASKS_START_TASKS_START_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_START_TASKS_START_Field use
     (TASKS_START_TASKS_START_Field_Reset => 0,
      Trigger => 1);

   --  Starts the SAADC and prepares the result buffer in RAM
   type TASKS_START_Register is record
      --  Write-only. Starts the SAADC and prepares the result buffer in RAM
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

   --  Takes one SAADC sample
   type TASKS_SAMPLE_TASKS_SAMPLE_Field is
     (--  Reset value for the field
      TASKS_SAMPLE_TASKS_SAMPLE_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_SAMPLE_TASKS_SAMPLE_Field use
     (TASKS_SAMPLE_TASKS_SAMPLE_Field_Reset => 0,
      Trigger => 1);

   --  Takes one SAADC sample
   type TASKS_SAMPLE_Register is record
      --  Write-only. Takes one SAADC sample
      TASKS_SAMPLE  : TASKS_SAMPLE_TASKS_SAMPLE_Field :=
                       TASKS_SAMPLE_TASKS_SAMPLE_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_SAMPLE_Register use record
      TASKS_SAMPLE  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Stops the SAADC and terminates all on-going conversions
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Stops the SAADC and terminates all on-going conversions
   type TASKS_STOP_Register is record
      --  Write-only. Stops the SAADC and terminates all on-going conversions
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

   --  Starts offset auto-calibration
   type TASKS_CALIBRATEOFFSET_TASKS_CALIBRATEOFFSET_Field is
     (--  Reset value for the field
      TASKS_CALIBRATEOFFSET_TASKS_CALIBRATEOFFSET_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CALIBRATEOFFSET_TASKS_CALIBRATEOFFSET_Field use
     (TASKS_CALIBRATEOFFSET_TASKS_CALIBRATEOFFSET_Field_Reset => 0,
      Trigger => 1);

   --  Starts offset auto-calibration
   type TASKS_CALIBRATEOFFSET_Register is record
      --  Write-only. Starts offset auto-calibration
      TASKS_CALIBRATEOFFSET : TASKS_CALIBRATEOFFSET_TASKS_CALIBRATEOFFSET_Field :=
                               TASKS_CALIBRATEOFFSET_TASKS_CALIBRATEOFFSET_Field_Reset;
      --  unspecified
      Reserved_1_31         : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CALIBRATEOFFSET_Register use record
      TASKS_CALIBRATEOFFSET at 0 range 0 .. 0;
      Reserved_1_31         at 0 range 1 .. 31;
   end record;

   --  The SAADC has started
   type EVENTS_STARTED_EVENTS_STARTED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_STARTED_EVENTS_STARTED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  The SAADC has started
   type EVENTS_STARTED_Register is record
      --  The SAADC has started
      EVENTS_STARTED : EVENTS_STARTED_EVENTS_STARTED_Field :=
                        NRF52833_SVD.SAADC.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_STARTED_Register use record
      EVENTS_STARTED at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  The SAADC has filled up the result buffer
   type EVENTS_END_EVENTS_END_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_END_EVENTS_END_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  The SAADC has filled up the result buffer
   type EVENTS_END_Register is record
      --  The SAADC has filled up the result buffer
      EVENTS_END    : EVENTS_END_EVENTS_END_Field :=
                       NRF52833_SVD.SAADC.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_END_Register use record
      EVENTS_END    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  A conversion task has been completed. Depending on the configuration,
   --  multiple conversions might be needed for a result to be transferred to
   --  RAM.
   type EVENTS_DONE_EVENTS_DONE_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_DONE_EVENTS_DONE_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  A conversion task has been completed. Depending on the configuration,
   --  multiple conversions might be needed for a result to be transferred to
   --  RAM.
   type EVENTS_DONE_Register is record
      --  A conversion task has been completed. Depending on the configuration,
      --  multiple conversions might be needed for a result to be transferred
      --  to RAM.
      EVENTS_DONE   : EVENTS_DONE_EVENTS_DONE_Field :=
                       NRF52833_SVD.SAADC.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_DONE_Register use record
      EVENTS_DONE   at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Result ready for transfer to RAM
   type EVENTS_RESULTDONE_EVENTS_RESULTDONE_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_RESULTDONE_EVENTS_RESULTDONE_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Result ready for transfer to RAM
   type EVENTS_RESULTDONE_Register is record
      --  Result ready for transfer to RAM
      EVENTS_RESULTDONE : EVENTS_RESULTDONE_EVENTS_RESULTDONE_Field :=
                           NRF52833_SVD.SAADC.NotGenerated;
      --  unspecified
      Reserved_1_31     : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_RESULTDONE_Register use record
      EVENTS_RESULTDONE at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  Calibration is complete
   type EVENTS_CALIBRATEDONE_EVENTS_CALIBRATEDONE_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_CALIBRATEDONE_EVENTS_CALIBRATEDONE_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Calibration is complete
   type EVENTS_CALIBRATEDONE_Register is record
      --  Calibration is complete
      EVENTS_CALIBRATEDONE : EVENTS_CALIBRATEDONE_EVENTS_CALIBRATEDONE_Field :=
                              NRF52833_SVD.SAADC.NotGenerated;
      --  unspecified
      Reserved_1_31        : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_CALIBRATEDONE_Register use record
      EVENTS_CALIBRATEDONE at 0 range 0 .. 0;
      Reserved_1_31        at 0 range 1 .. 31;
   end record;

   --  The SAADC has stopped
   type EVENTS_STOPPED_EVENTS_STOPPED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_STOPPED_EVENTS_STOPPED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  The SAADC has stopped
   type EVENTS_STOPPED_Register is record
      --  The SAADC has stopped
      EVENTS_STOPPED : EVENTS_STOPPED_EVENTS_STOPPED_Field :=
                        NRF52833_SVD.SAADC.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_STOPPED_Register use record
      EVENTS_STOPPED at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   -----------------------------------------
   -- SAADC_EVENTS_CH cluster's Registers --
   -----------------------------------------

   --  Last result is equal or above CH[n].LIMIT.HIGH
   type LIMITH_LIMITH_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for LIMITH_LIMITH_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Description cluster: Last result is equal or above CH[n].LIMIT.HIGH
   type LIMITH_EVENTS_CH_Register is record
      --  Last result is equal or above CH[n].LIMIT.HIGH
      LIMITH        : LIMITH_LIMITH_Field := NRF52833_SVD.SAADC.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIMITH_EVENTS_CH_Register use record
      LIMITH        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Last result is equal or below CH[n].LIMIT.LOW
   type LIMITL_LIMITL_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for LIMITL_LIMITL_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Description cluster: Last result is equal or below CH[n].LIMIT.LOW
   type LIMITL_EVENTS_CH_Register is record
      --  Last result is equal or below CH[n].LIMIT.LOW
      LIMITL        : LIMITL_LIMITL_Field := NRF52833_SVD.SAADC.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIMITL_EVENTS_CH_Register use record
      LIMITL        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Peripheral events.
   type SAADC_EVENTS_CH_Cluster is record
      --  Description cluster: Last result is equal or above CH[n].LIMIT.HIGH
      LIMITH : aliased LIMITH_EVENTS_CH_Register;
      --  Description cluster: Last result is equal or below CH[n].LIMIT.LOW
      LIMITL : aliased LIMITL_EVENTS_CH_Register;
   end record
     with Size => 64;

   for SAADC_EVENTS_CH_Cluster use record
      LIMITH at 16#0# range 0 .. 31;
      LIMITL at 16#4# range 0 .. 31;
   end record;

   --  Peripheral events.
   type SAADC_EVENTS_CH_Clusters is array (0 .. 7) of SAADC_EVENTS_CH_Cluster;

   --  Enable or disable interrupt for event STARTED
   type INTEN_STARTED_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_STARTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event END
   type INTEN_END_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_END_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event DONE
   type INTEN_DONE_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_DONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event RESULTDONE
   type INTEN_RESULTDONE_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_RESULTDONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CALIBRATEDONE
   type INTEN_CALIBRATEDONE_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CALIBRATEDONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event STOPPED
   type INTEN_STOPPED_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_STOPPED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH0LIMITH
   type INTEN_CH0LIMITH_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH0LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH0LIMITL
   type INTEN_CH0LIMITL_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH0LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH1LIMITH
   type INTEN_CH1LIMITH_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH1LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH1LIMITL
   type INTEN_CH1LIMITL_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH1LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH2LIMITH
   type INTEN_CH2LIMITH_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH2LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH2LIMITL
   type INTEN_CH2LIMITL_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH2LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH3LIMITH
   type INTEN_CH3LIMITH_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH3LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH3LIMITL
   type INTEN_CH3LIMITL_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH3LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH4LIMITH
   type INTEN_CH4LIMITH_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH4LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH4LIMITL
   type INTEN_CH4LIMITL_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH4LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH5LIMITH
   type INTEN_CH5LIMITH_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH5LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH5LIMITL
   type INTEN_CH5LIMITL_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH5LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH6LIMITH
   type INTEN_CH6LIMITH_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH6LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH6LIMITL
   type INTEN_CH6LIMITL_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH6LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH7LIMITH
   type INTEN_CH7LIMITH_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH7LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event CH7LIMITL
   type INTEN_CH7LIMITL_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_CH7LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  Enable or disable interrupt for event STARTED
      STARTED        : INTEN_STARTED_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event END
      END_k          : INTEN_END_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event DONE
      DONE           : INTEN_DONE_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event RESULTDONE
      RESULTDONE     : INTEN_RESULTDONE_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CALIBRATEDONE
      CALIBRATEDONE  : INTEN_CALIBRATEDONE_Field :=
                        NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event STOPPED
      STOPPED        : INTEN_STOPPED_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH0LIMITH
      CH0LIMITH      : INTEN_CH0LIMITH_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH0LIMITL
      CH0LIMITL      : INTEN_CH0LIMITL_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH1LIMITH
      CH1LIMITH      : INTEN_CH1LIMITH_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH1LIMITL
      CH1LIMITL      : INTEN_CH1LIMITL_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH2LIMITH
      CH2LIMITH      : INTEN_CH2LIMITH_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH2LIMITL
      CH2LIMITL      : INTEN_CH2LIMITL_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH3LIMITH
      CH3LIMITH      : INTEN_CH3LIMITH_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH3LIMITL
      CH3LIMITL      : INTEN_CH3LIMITL_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH4LIMITH
      CH4LIMITH      : INTEN_CH4LIMITH_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH4LIMITL
      CH4LIMITL      : INTEN_CH4LIMITL_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH5LIMITH
      CH5LIMITH      : INTEN_CH5LIMITH_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH5LIMITL
      CH5LIMITL      : INTEN_CH5LIMITL_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH6LIMITH
      CH6LIMITH      : INTEN_CH6LIMITH_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH6LIMITL
      CH6LIMITL      : INTEN_CH6LIMITL_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH7LIMITH
      CH7LIMITH      : INTEN_CH7LIMITH_Field := NRF52833_SVD.SAADC.Disabled;
      --  Enable or disable interrupt for event CH7LIMITL
      CH7LIMITL      : INTEN_CH7LIMITL_Field := NRF52833_SVD.SAADC.Disabled;
      --  unspecified
      Reserved_22_31 : NRF52833_SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      STARTED        at 0 range 0 .. 0;
      END_k          at 0 range 1 .. 1;
      DONE           at 0 range 2 .. 2;
      RESULTDONE     at 0 range 3 .. 3;
      CALIBRATEDONE  at 0 range 4 .. 4;
      STOPPED        at 0 range 5 .. 5;
      CH0LIMITH      at 0 range 6 .. 6;
      CH0LIMITL      at 0 range 7 .. 7;
      CH1LIMITH      at 0 range 8 .. 8;
      CH1LIMITL      at 0 range 9 .. 9;
      CH2LIMITH      at 0 range 10 .. 10;
      CH2LIMITL      at 0 range 11 .. 11;
      CH3LIMITH      at 0 range 12 .. 12;
      CH3LIMITL      at 0 range 13 .. 13;
      CH4LIMITH      at 0 range 14 .. 14;
      CH4LIMITL      at 0 range 15 .. 15;
      CH5LIMITH      at 0 range 16 .. 16;
      CH5LIMITL      at 0 range 17 .. 17;
      CH6LIMITH      at 0 range 18 .. 18;
      CH6LIMITL      at 0 range 19 .. 19;
      CH7LIMITH      at 0 range 20 .. 20;
      CH7LIMITL      at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

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

   --  Write '1' to enable interrupt for event RESULTDONE
   type INTENSET_RESULTDONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_RESULTDONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event RESULTDONE
   type INTENSET_RESULTDONE_Field_1 is
     (--  Reset value for the field
      INTENSET_RESULTDONE_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_RESULTDONE_Field_1 use
     (INTENSET_RESULTDONE_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CALIBRATEDONE
   type INTENSET_CALIBRATEDONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CALIBRATEDONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CALIBRATEDONE
   type INTENSET_CALIBRATEDONE_Field_1 is
     (--  Reset value for the field
      INTENSET_CALIBRATEDONE_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CALIBRATEDONE_Field_1 use
     (INTENSET_CALIBRATEDONE_Field_Reset => 0,
      Set => 1);

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

   --  Write '1' to enable interrupt for event CH0LIMITH
   type INTENSET_CH0LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH0LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH0LIMITH
   type INTENSET_CH0LIMITH_Field_1 is
     (--  Reset value for the field
      INTENSET_CH0LIMITH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH0LIMITH_Field_1 use
     (INTENSET_CH0LIMITH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH0LIMITL
   type INTENSET_CH0LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH0LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH0LIMITL
   type INTENSET_CH0LIMITL_Field_1 is
     (--  Reset value for the field
      INTENSET_CH0LIMITL_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH0LIMITL_Field_1 use
     (INTENSET_CH0LIMITL_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH1LIMITH
   type INTENSET_CH1LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH1LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH1LIMITH
   type INTENSET_CH1LIMITH_Field_1 is
     (--  Reset value for the field
      INTENSET_CH1LIMITH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH1LIMITH_Field_1 use
     (INTENSET_CH1LIMITH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH1LIMITL
   type INTENSET_CH1LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH1LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH1LIMITL
   type INTENSET_CH1LIMITL_Field_1 is
     (--  Reset value for the field
      INTENSET_CH1LIMITL_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH1LIMITL_Field_1 use
     (INTENSET_CH1LIMITL_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH2LIMITH
   type INTENSET_CH2LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH2LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH2LIMITH
   type INTENSET_CH2LIMITH_Field_1 is
     (--  Reset value for the field
      INTENSET_CH2LIMITH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH2LIMITH_Field_1 use
     (INTENSET_CH2LIMITH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH2LIMITL
   type INTENSET_CH2LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH2LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH2LIMITL
   type INTENSET_CH2LIMITL_Field_1 is
     (--  Reset value for the field
      INTENSET_CH2LIMITL_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH2LIMITL_Field_1 use
     (INTENSET_CH2LIMITL_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH3LIMITH
   type INTENSET_CH3LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH3LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH3LIMITH
   type INTENSET_CH3LIMITH_Field_1 is
     (--  Reset value for the field
      INTENSET_CH3LIMITH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH3LIMITH_Field_1 use
     (INTENSET_CH3LIMITH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH3LIMITL
   type INTENSET_CH3LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH3LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH3LIMITL
   type INTENSET_CH3LIMITL_Field_1 is
     (--  Reset value for the field
      INTENSET_CH3LIMITL_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH3LIMITL_Field_1 use
     (INTENSET_CH3LIMITL_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH4LIMITH
   type INTENSET_CH4LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH4LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH4LIMITH
   type INTENSET_CH4LIMITH_Field_1 is
     (--  Reset value for the field
      INTENSET_CH4LIMITH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH4LIMITH_Field_1 use
     (INTENSET_CH4LIMITH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH4LIMITL
   type INTENSET_CH4LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH4LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH4LIMITL
   type INTENSET_CH4LIMITL_Field_1 is
     (--  Reset value for the field
      INTENSET_CH4LIMITL_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH4LIMITL_Field_1 use
     (INTENSET_CH4LIMITL_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH5LIMITH
   type INTENSET_CH5LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH5LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH5LIMITH
   type INTENSET_CH5LIMITH_Field_1 is
     (--  Reset value for the field
      INTENSET_CH5LIMITH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH5LIMITH_Field_1 use
     (INTENSET_CH5LIMITH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH5LIMITL
   type INTENSET_CH5LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH5LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH5LIMITL
   type INTENSET_CH5LIMITL_Field_1 is
     (--  Reset value for the field
      INTENSET_CH5LIMITL_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH5LIMITL_Field_1 use
     (INTENSET_CH5LIMITL_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH6LIMITH
   type INTENSET_CH6LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH6LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH6LIMITH
   type INTENSET_CH6LIMITH_Field_1 is
     (--  Reset value for the field
      INTENSET_CH6LIMITH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH6LIMITH_Field_1 use
     (INTENSET_CH6LIMITH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH6LIMITL
   type INTENSET_CH6LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH6LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH6LIMITL
   type INTENSET_CH6LIMITL_Field_1 is
     (--  Reset value for the field
      INTENSET_CH6LIMITL_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH6LIMITL_Field_1 use
     (INTENSET_CH6LIMITL_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH7LIMITH
   type INTENSET_CH7LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH7LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH7LIMITH
   type INTENSET_CH7LIMITH_Field_1 is
     (--  Reset value for the field
      INTENSET_CH7LIMITH_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH7LIMITH_Field_1 use
     (INTENSET_CH7LIMITH_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event CH7LIMITL
   type INTENSET_CH7LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_CH7LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event CH7LIMITL
   type INTENSET_CH7LIMITL_Field_1 is
     (--  Reset value for the field
      INTENSET_CH7LIMITL_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_CH7LIMITL_Field_1 use
     (INTENSET_CH7LIMITL_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event STARTED
      STARTED        : INTENSET_STARTED_Field_1 :=
                        INTENSET_STARTED_Field_Reset;
      --  Write '1' to enable interrupt for event END
      END_k          : INTENSET_END_Field_1 := INTENSET_END_Field_Reset;
      --  Write '1' to enable interrupt for event DONE
      DONE           : INTENSET_DONE_Field_1 := INTENSET_DONE_Field_Reset;
      --  Write '1' to enable interrupt for event RESULTDONE
      RESULTDONE     : INTENSET_RESULTDONE_Field_1 :=
                        INTENSET_RESULTDONE_Field_Reset;
      --  Write '1' to enable interrupt for event CALIBRATEDONE
      CALIBRATEDONE  : INTENSET_CALIBRATEDONE_Field_1 :=
                        INTENSET_CALIBRATEDONE_Field_Reset;
      --  Write '1' to enable interrupt for event STOPPED
      STOPPED        : INTENSET_STOPPED_Field_1 :=
                        INTENSET_STOPPED_Field_Reset;
      --  Write '1' to enable interrupt for event CH0LIMITH
      CH0LIMITH      : INTENSET_CH0LIMITH_Field_1 :=
                        INTENSET_CH0LIMITH_Field_Reset;
      --  Write '1' to enable interrupt for event CH0LIMITL
      CH0LIMITL      : INTENSET_CH0LIMITL_Field_1 :=
                        INTENSET_CH0LIMITL_Field_Reset;
      --  Write '1' to enable interrupt for event CH1LIMITH
      CH1LIMITH      : INTENSET_CH1LIMITH_Field_1 :=
                        INTENSET_CH1LIMITH_Field_Reset;
      --  Write '1' to enable interrupt for event CH1LIMITL
      CH1LIMITL      : INTENSET_CH1LIMITL_Field_1 :=
                        INTENSET_CH1LIMITL_Field_Reset;
      --  Write '1' to enable interrupt for event CH2LIMITH
      CH2LIMITH      : INTENSET_CH2LIMITH_Field_1 :=
                        INTENSET_CH2LIMITH_Field_Reset;
      --  Write '1' to enable interrupt for event CH2LIMITL
      CH2LIMITL      : INTENSET_CH2LIMITL_Field_1 :=
                        INTENSET_CH2LIMITL_Field_Reset;
      --  Write '1' to enable interrupt for event CH3LIMITH
      CH3LIMITH      : INTENSET_CH3LIMITH_Field_1 :=
                        INTENSET_CH3LIMITH_Field_Reset;
      --  Write '1' to enable interrupt for event CH3LIMITL
      CH3LIMITL      : INTENSET_CH3LIMITL_Field_1 :=
                        INTENSET_CH3LIMITL_Field_Reset;
      --  Write '1' to enable interrupt for event CH4LIMITH
      CH4LIMITH      : INTENSET_CH4LIMITH_Field_1 :=
                        INTENSET_CH4LIMITH_Field_Reset;
      --  Write '1' to enable interrupt for event CH4LIMITL
      CH4LIMITL      : INTENSET_CH4LIMITL_Field_1 :=
                        INTENSET_CH4LIMITL_Field_Reset;
      --  Write '1' to enable interrupt for event CH5LIMITH
      CH5LIMITH      : INTENSET_CH5LIMITH_Field_1 :=
                        INTENSET_CH5LIMITH_Field_Reset;
      --  Write '1' to enable interrupt for event CH5LIMITL
      CH5LIMITL      : INTENSET_CH5LIMITL_Field_1 :=
                        INTENSET_CH5LIMITL_Field_Reset;
      --  Write '1' to enable interrupt for event CH6LIMITH
      CH6LIMITH      : INTENSET_CH6LIMITH_Field_1 :=
                        INTENSET_CH6LIMITH_Field_Reset;
      --  Write '1' to enable interrupt for event CH6LIMITL
      CH6LIMITL      : INTENSET_CH6LIMITL_Field_1 :=
                        INTENSET_CH6LIMITL_Field_Reset;
      --  Write '1' to enable interrupt for event CH7LIMITH
      CH7LIMITH      : INTENSET_CH7LIMITH_Field_1 :=
                        INTENSET_CH7LIMITH_Field_Reset;
      --  Write '1' to enable interrupt for event CH7LIMITL
      CH7LIMITL      : INTENSET_CH7LIMITL_Field_1 :=
                        INTENSET_CH7LIMITL_Field_Reset;
      --  unspecified
      Reserved_22_31 : NRF52833_SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      STARTED        at 0 range 0 .. 0;
      END_k          at 0 range 1 .. 1;
      DONE           at 0 range 2 .. 2;
      RESULTDONE     at 0 range 3 .. 3;
      CALIBRATEDONE  at 0 range 4 .. 4;
      STOPPED        at 0 range 5 .. 5;
      CH0LIMITH      at 0 range 6 .. 6;
      CH0LIMITL      at 0 range 7 .. 7;
      CH1LIMITH      at 0 range 8 .. 8;
      CH1LIMITL      at 0 range 9 .. 9;
      CH2LIMITH      at 0 range 10 .. 10;
      CH2LIMITL      at 0 range 11 .. 11;
      CH3LIMITH      at 0 range 12 .. 12;
      CH3LIMITL      at 0 range 13 .. 13;
      CH4LIMITH      at 0 range 14 .. 14;
      CH4LIMITL      at 0 range 15 .. 15;
      CH5LIMITH      at 0 range 16 .. 16;
      CH5LIMITL      at 0 range 17 .. 17;
      CH6LIMITH      at 0 range 18 .. 18;
      CH6LIMITL      at 0 range 19 .. 19;
      CH7LIMITH      at 0 range 20 .. 20;
      CH7LIMITL      at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

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

   --  Write '1' to disable interrupt for event RESULTDONE
   type INTENCLR_RESULTDONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_RESULTDONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event RESULTDONE
   type INTENCLR_RESULTDONE_Field_1 is
     (--  Reset value for the field
      INTENCLR_RESULTDONE_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_RESULTDONE_Field_1 use
     (INTENCLR_RESULTDONE_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CALIBRATEDONE
   type INTENCLR_CALIBRATEDONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CALIBRATEDONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CALIBRATEDONE
   type INTENCLR_CALIBRATEDONE_Field_1 is
     (--  Reset value for the field
      INTENCLR_CALIBRATEDONE_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CALIBRATEDONE_Field_1 use
     (INTENCLR_CALIBRATEDONE_Field_Reset => 0,
      Clear => 1);

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

   --  Write '1' to disable interrupt for event CH0LIMITH
   type INTENCLR_CH0LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH0LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH0LIMITH
   type INTENCLR_CH0LIMITH_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH0LIMITH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH0LIMITH_Field_1 use
     (INTENCLR_CH0LIMITH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH0LIMITL
   type INTENCLR_CH0LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH0LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH0LIMITL
   type INTENCLR_CH0LIMITL_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH0LIMITL_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH0LIMITL_Field_1 use
     (INTENCLR_CH0LIMITL_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH1LIMITH
   type INTENCLR_CH1LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH1LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH1LIMITH
   type INTENCLR_CH1LIMITH_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH1LIMITH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH1LIMITH_Field_1 use
     (INTENCLR_CH1LIMITH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH1LIMITL
   type INTENCLR_CH1LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH1LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH1LIMITL
   type INTENCLR_CH1LIMITL_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH1LIMITL_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH1LIMITL_Field_1 use
     (INTENCLR_CH1LIMITL_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH2LIMITH
   type INTENCLR_CH2LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH2LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH2LIMITH
   type INTENCLR_CH2LIMITH_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH2LIMITH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH2LIMITH_Field_1 use
     (INTENCLR_CH2LIMITH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH2LIMITL
   type INTENCLR_CH2LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH2LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH2LIMITL
   type INTENCLR_CH2LIMITL_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH2LIMITL_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH2LIMITL_Field_1 use
     (INTENCLR_CH2LIMITL_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH3LIMITH
   type INTENCLR_CH3LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH3LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH3LIMITH
   type INTENCLR_CH3LIMITH_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH3LIMITH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH3LIMITH_Field_1 use
     (INTENCLR_CH3LIMITH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH3LIMITL
   type INTENCLR_CH3LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH3LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH3LIMITL
   type INTENCLR_CH3LIMITL_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH3LIMITL_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH3LIMITL_Field_1 use
     (INTENCLR_CH3LIMITL_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH4LIMITH
   type INTENCLR_CH4LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH4LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH4LIMITH
   type INTENCLR_CH4LIMITH_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH4LIMITH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH4LIMITH_Field_1 use
     (INTENCLR_CH4LIMITH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH4LIMITL
   type INTENCLR_CH4LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH4LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH4LIMITL
   type INTENCLR_CH4LIMITL_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH4LIMITL_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH4LIMITL_Field_1 use
     (INTENCLR_CH4LIMITL_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH5LIMITH
   type INTENCLR_CH5LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH5LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH5LIMITH
   type INTENCLR_CH5LIMITH_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH5LIMITH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH5LIMITH_Field_1 use
     (INTENCLR_CH5LIMITH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH5LIMITL
   type INTENCLR_CH5LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH5LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH5LIMITL
   type INTENCLR_CH5LIMITL_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH5LIMITL_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH5LIMITL_Field_1 use
     (INTENCLR_CH5LIMITL_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH6LIMITH
   type INTENCLR_CH6LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH6LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH6LIMITH
   type INTENCLR_CH6LIMITH_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH6LIMITH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH6LIMITH_Field_1 use
     (INTENCLR_CH6LIMITH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH6LIMITL
   type INTENCLR_CH6LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH6LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH6LIMITL
   type INTENCLR_CH6LIMITL_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH6LIMITL_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH6LIMITL_Field_1 use
     (INTENCLR_CH6LIMITL_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH7LIMITH
   type INTENCLR_CH7LIMITH_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH7LIMITH_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH7LIMITH
   type INTENCLR_CH7LIMITH_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH7LIMITH_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH7LIMITH_Field_1 use
     (INTENCLR_CH7LIMITH_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event CH7LIMITL
   type INTENCLR_CH7LIMITL_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_CH7LIMITL_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event CH7LIMITL
   type INTENCLR_CH7LIMITL_Field_1 is
     (--  Reset value for the field
      INTENCLR_CH7LIMITL_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_CH7LIMITL_Field_1 use
     (INTENCLR_CH7LIMITL_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event STARTED
      STARTED        : INTENCLR_STARTED_Field_1 :=
                        INTENCLR_STARTED_Field_Reset;
      --  Write '1' to disable interrupt for event END
      END_k          : INTENCLR_END_Field_1 := INTENCLR_END_Field_Reset;
      --  Write '1' to disable interrupt for event DONE
      DONE           : INTENCLR_DONE_Field_1 := INTENCLR_DONE_Field_Reset;
      --  Write '1' to disable interrupt for event RESULTDONE
      RESULTDONE     : INTENCLR_RESULTDONE_Field_1 :=
                        INTENCLR_RESULTDONE_Field_Reset;
      --  Write '1' to disable interrupt for event CALIBRATEDONE
      CALIBRATEDONE  : INTENCLR_CALIBRATEDONE_Field_1 :=
                        INTENCLR_CALIBRATEDONE_Field_Reset;
      --  Write '1' to disable interrupt for event STOPPED
      STOPPED        : INTENCLR_STOPPED_Field_1 :=
                        INTENCLR_STOPPED_Field_Reset;
      --  Write '1' to disable interrupt for event CH0LIMITH
      CH0LIMITH      : INTENCLR_CH0LIMITH_Field_1 :=
                        INTENCLR_CH0LIMITH_Field_Reset;
      --  Write '1' to disable interrupt for event CH0LIMITL
      CH0LIMITL      : INTENCLR_CH0LIMITL_Field_1 :=
                        INTENCLR_CH0LIMITL_Field_Reset;
      --  Write '1' to disable interrupt for event CH1LIMITH
      CH1LIMITH      : INTENCLR_CH1LIMITH_Field_1 :=
                        INTENCLR_CH1LIMITH_Field_Reset;
      --  Write '1' to disable interrupt for event CH1LIMITL
      CH1LIMITL      : INTENCLR_CH1LIMITL_Field_1 :=
                        INTENCLR_CH1LIMITL_Field_Reset;
      --  Write '1' to disable interrupt for event CH2LIMITH
      CH2LIMITH      : INTENCLR_CH2LIMITH_Field_1 :=
                        INTENCLR_CH2LIMITH_Field_Reset;
      --  Write '1' to disable interrupt for event CH2LIMITL
      CH2LIMITL      : INTENCLR_CH2LIMITL_Field_1 :=
                        INTENCLR_CH2LIMITL_Field_Reset;
      --  Write '1' to disable interrupt for event CH3LIMITH
      CH3LIMITH      : INTENCLR_CH3LIMITH_Field_1 :=
                        INTENCLR_CH3LIMITH_Field_Reset;
      --  Write '1' to disable interrupt for event CH3LIMITL
      CH3LIMITL      : INTENCLR_CH3LIMITL_Field_1 :=
                        INTENCLR_CH3LIMITL_Field_Reset;
      --  Write '1' to disable interrupt for event CH4LIMITH
      CH4LIMITH      : INTENCLR_CH4LIMITH_Field_1 :=
                        INTENCLR_CH4LIMITH_Field_Reset;
      --  Write '1' to disable interrupt for event CH4LIMITL
      CH4LIMITL      : INTENCLR_CH4LIMITL_Field_1 :=
                        INTENCLR_CH4LIMITL_Field_Reset;
      --  Write '1' to disable interrupt for event CH5LIMITH
      CH5LIMITH      : INTENCLR_CH5LIMITH_Field_1 :=
                        INTENCLR_CH5LIMITH_Field_Reset;
      --  Write '1' to disable interrupt for event CH5LIMITL
      CH5LIMITL      : INTENCLR_CH5LIMITL_Field_1 :=
                        INTENCLR_CH5LIMITL_Field_Reset;
      --  Write '1' to disable interrupt for event CH6LIMITH
      CH6LIMITH      : INTENCLR_CH6LIMITH_Field_1 :=
                        INTENCLR_CH6LIMITH_Field_Reset;
      --  Write '1' to disable interrupt for event CH6LIMITL
      CH6LIMITL      : INTENCLR_CH6LIMITL_Field_1 :=
                        INTENCLR_CH6LIMITL_Field_Reset;
      --  Write '1' to disable interrupt for event CH7LIMITH
      CH7LIMITH      : INTENCLR_CH7LIMITH_Field_1 :=
                        INTENCLR_CH7LIMITH_Field_Reset;
      --  Write '1' to disable interrupt for event CH7LIMITL
      CH7LIMITL      : INTENCLR_CH7LIMITL_Field_1 :=
                        INTENCLR_CH7LIMITL_Field_Reset;
      --  unspecified
      Reserved_22_31 : NRF52833_SVD.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      STARTED        at 0 range 0 .. 0;
      END_k          at 0 range 1 .. 1;
      DONE           at 0 range 2 .. 2;
      RESULTDONE     at 0 range 3 .. 3;
      CALIBRATEDONE  at 0 range 4 .. 4;
      STOPPED        at 0 range 5 .. 5;
      CH0LIMITH      at 0 range 6 .. 6;
      CH0LIMITL      at 0 range 7 .. 7;
      CH1LIMITH      at 0 range 8 .. 8;
      CH1LIMITL      at 0 range 9 .. 9;
      CH2LIMITH      at 0 range 10 .. 10;
      CH2LIMITL      at 0 range 11 .. 11;
      CH3LIMITH      at 0 range 12 .. 12;
      CH3LIMITL      at 0 range 13 .. 13;
      CH4LIMITH      at 0 range 14 .. 14;
      CH4LIMITL      at 0 range 15 .. 15;
      CH5LIMITH      at 0 range 16 .. 16;
      CH5LIMITL      at 0 range 17 .. 17;
      CH6LIMITH      at 0 range 18 .. 18;
      CH6LIMITL      at 0 range 19 .. 19;
      CH7LIMITH      at 0 range 20 .. 20;
      CH7LIMITL      at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Status
   type STATUS_STATUS_Field is
     (--  SAADC is ready. No on-going conversions.
      Ready,
      --  SAADC is busy. Conversion in progress.
      Busy)
     with Size => 1;
   for STATUS_STATUS_Field use
     (Ready => 0,
      Busy => 1);

   --  Status
   type STATUS_Register is record
      --  Read-only. Status
      STATUS        : STATUS_STATUS_Field;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      STATUS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable or disable SAADC
   type ENABLE_ENABLE_Field is
     (--  Disable SAADC
      Disabled,
      --  Enable SAADC
      Enabled)
     with Size => 1;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable SAADC
   type ENABLE_Register is record
      --  Enable or disable SAADC
      ENABLE        : ENABLE_ENABLE_Field := NRF52833_SVD.SAADC.Disabled;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------------------
   -- SAADC_CH cluster's Registers --
   ----------------------------------

   --  Analog positive input channel
   type PSELP_PSELP_Field is
     (--  Not connected
      NC,
      --  AIN0
      AnalogInput0,
      --  AIN1
      AnalogInput1,
      --  AIN2
      AnalogInput2,
      --  AIN3
      AnalogInput3,
      --  AIN4
      AnalogInput4,
      --  AIN5
      AnalogInput5,
      --  AIN6
      AnalogInput6,
      --  AIN7
      AnalogInput7,
      --  VDD
      VDD,
      --  VDDH/5
      VDDHDIV5)
     with Size => 5;
   for PSELP_PSELP_Field use
     (NC => 0,
      AnalogInput0 => 1,
      AnalogInput1 => 2,
      AnalogInput2 => 3,
      AnalogInput3 => 4,
      AnalogInput4 => 5,
      AnalogInput5 => 6,
      AnalogInput6 => 7,
      AnalogInput7 => 8,
      VDD => 9,
      VDDHDIV5 => 13);

   --  Description cluster: Input positive pin selection for CH[n]
   type PSELP_CH_Register is record
      --  Analog positive input channel
      PSELP         : PSELP_PSELP_Field := NRF52833_SVD.SAADC.NC;
      --  unspecified
      Reserved_5_31 : NRF52833_SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSELP_CH_Register use record
      PSELP         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Analog negative input, enables differential channel
   type PSELN_PSELN_Field is
     (--  Not connected
      NC,
      --  AIN0
      AnalogInput0,
      --  AIN1
      AnalogInput1,
      --  AIN2
      AnalogInput2,
      --  AIN3
      AnalogInput3,
      --  AIN4
      AnalogInput4,
      --  AIN5
      AnalogInput5,
      --  AIN6
      AnalogInput6,
      --  AIN7
      AnalogInput7,
      --  VDD
      VDD,
      --  VDDH/5
      VDDHDIV5)
     with Size => 5;
   for PSELN_PSELN_Field use
     (NC => 0,
      AnalogInput0 => 1,
      AnalogInput1 => 2,
      AnalogInput2 => 3,
      AnalogInput3 => 4,
      AnalogInput4 => 5,
      AnalogInput5 => 6,
      AnalogInput6 => 7,
      AnalogInput7 => 8,
      VDD => 9,
      VDDHDIV5 => 13);

   --  Description cluster: Input negative pin selection for CH[n]
   type PSELN_CH_Register is record
      --  Analog negative input, enables differential channel
      PSELN         : PSELN_PSELN_Field := NRF52833_SVD.SAADC.NC;
      --  unspecified
      Reserved_5_31 : NRF52833_SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSELN_CH_Register use record
      PSELN         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  Positive channel resistor control
   type CONFIG_RESP_Field is
     (--  Bypass resistor ladder
      Bypass,
      --  Pull-down to GND
      Pulldown,
      --  Pull-up to VDD
      Pullup,
      --  Set input at VDD/2
      VDD1_2)
     with Size => 2;
   for CONFIG_RESP_Field use
     (Bypass => 0,
      Pulldown => 1,
      Pullup => 2,
      VDD1_2 => 3);

   --  Negative channel resistor control
   type CONFIG_RESN_Field is
     (--  Bypass resistor ladder
      Bypass,
      --  Pull-down to GND
      Pulldown,
      --  Pull-up to VDD
      Pullup,
      --  Set input at VDD/2
      VDD1_2)
     with Size => 2;
   for CONFIG_RESN_Field use
     (Bypass => 0,
      Pulldown => 1,
      Pullup => 2,
      VDD1_2 => 3);

   --  Gain control
   type CONFIG_GAIN_Field is
     (--  1/6
      Gain1_6,
      --  1/5
      Gain1_5,
      --  1/4
      Gain1_4,
      --  1/3
      Gain1_3,
      --  1/2
      Gain1_2,
      --  1
      Gain1,
      --  2
      Gain2,
      --  4
      Gain4)
     with Size => 3;
   for CONFIG_GAIN_Field use
     (Gain1_6 => 0,
      Gain1_5 => 1,
      Gain1_4 => 2,
      Gain1_3 => 3,
      Gain1_2 => 4,
      Gain1 => 5,
      Gain2 => 6,
      Gain4 => 7);

   --  Reference control
   type CONFIG_REFSEL_Field is
     (--  Internal reference (0.6 V)
      Internal,
      --  VDD/4 as reference
      VDD1_4)
     with Size => 1;
   for CONFIG_REFSEL_Field use
     (Internal => 0,
      VDD1_4 => 1);

   --  Acquisition time, the time the SAADC uses to sample the input voltage
   type CONFIG_TACQ_Field is
     (--  3 us
      Val_3us,
      --  5 us
      Val_5us,
      --  10 us
      Val_10us,
      --  15 us
      Val_15us,
      --  20 us
      Val_20us,
      --  40 us
      Val_40us)
     with Size => 3;
   for CONFIG_TACQ_Field use
     (Val_3us => 0,
      Val_5us => 1,
      Val_10us => 2,
      Val_15us => 3,
      Val_20us => 4,
      Val_40us => 5);

   --  Enable differential mode
   type CONFIG_MODE_Field is
     (--  Single-ended, PSELN will be ignored, negative input to SAADC shorted to GND
      SE,
      --  Differential
      Diff)
     with Size => 1;
   for CONFIG_MODE_Field use
     (SE => 0,
      Diff => 1);

   --  Enable burst mode
   type CONFIG_BURST_Field is
     (--  Burst mode is disabled (normal operation)
      Disabled,
      --  Burst mode is enabled. SAADC takes 2^OVERSAMPLE number of samples as fast
--  as it can, and sends the average to Data RAM.
      Enabled)
     with Size => 1;
   for CONFIG_BURST_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Description cluster: Input configuration for CH[n]
   type CONFIG_CH_Register is record
      --  Positive channel resistor control
      RESP           : CONFIG_RESP_Field := NRF52833_SVD.SAADC.Bypass;
      --  unspecified
      Reserved_2_3   : NRF52833_SVD.UInt2 := 16#0#;
      --  Negative channel resistor control
      RESN           : CONFIG_RESN_Field := NRF52833_SVD.SAADC.Bypass;
      --  unspecified
      Reserved_6_7   : NRF52833_SVD.UInt2 := 16#0#;
      --  Gain control
      GAIN           : CONFIG_GAIN_Field := NRF52833_SVD.SAADC.Gain1_6;
      --  unspecified
      Reserved_11_11 : NRF52833_SVD.Bit := 16#0#;
      --  Reference control
      REFSEL         : CONFIG_REFSEL_Field := NRF52833_SVD.SAADC.Internal;
      --  unspecified
      Reserved_13_15 : NRF52833_SVD.UInt3 := 16#0#;
      --  Acquisition time, the time the SAADC uses to sample the input voltage
      TACQ           : CONFIG_TACQ_Field := NRF52833_SVD.SAADC.Val_10us;
      --  unspecified
      Reserved_19_19 : NRF52833_SVD.Bit := 16#0#;
      --  Enable differential mode
      MODE           : CONFIG_MODE_Field := NRF52833_SVD.SAADC.SE;
      --  unspecified
      Reserved_21_23 : NRF52833_SVD.UInt3 := 16#0#;
      --  Enable burst mode
      BURST          : CONFIG_BURST_Field := NRF52833_SVD.SAADC.Disabled;
      --  unspecified
      Reserved_25_31 : NRF52833_SVD.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_CH_Register use record
      RESP           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      RESN           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      GAIN           at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      REFSEL         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TACQ           at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      MODE           at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      BURST          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype LIMIT_CH_LOW_Field is NRF52833_SVD.UInt16;
   subtype LIMIT_CH_HIGH_Field is NRF52833_SVD.UInt16;

   --  Description cluster: High/low limits for event monitoring of a channel
   type LIMIT_CH_Register is record
      --  Low level limit
      LOW  : LIMIT_CH_LOW_Field := 16#8000#;
      --  High level limit
      HIGH : LIMIT_CH_HIGH_Field := 16#7FFF#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LIMIT_CH_Register use record
      LOW  at 0 range 0 .. 15;
      HIGH at 0 range 16 .. 31;
   end record;

   --  Unspecified
   type SAADC_CH_Cluster is record
      --  Description cluster: Input positive pin selection for CH[n]
      PSELP  : aliased PSELP_CH_Register;
      --  Description cluster: Input negative pin selection for CH[n]
      PSELN  : aliased PSELN_CH_Register;
      --  Description cluster: Input configuration for CH[n]
      CONFIG : aliased CONFIG_CH_Register;
      --  Description cluster: High/low limits for event monitoring of a
      --  channel
      LIMIT  : aliased LIMIT_CH_Register;
   end record
     with Size => 128;

   for SAADC_CH_Cluster use record
      PSELP  at 16#0# range 0 .. 31;
      PSELN  at 16#4# range 0 .. 31;
      CONFIG at 16#8# range 0 .. 31;
      LIMIT  at 16#C# range 0 .. 31;
   end record;

   --  Unspecified
   type SAADC_CH_Clusters is array (0 .. 7) of SAADC_CH_Cluster;

   --  Set the resolution
   type RESOLUTION_VAL_Field is
     (--  8 bits
      Val_8bit,
      --  10 bits
      Val_10bit,
      --  12 bits
      Val_12bit,
      --  14 bits
      Val_14bit)
     with Size => 3;
   for RESOLUTION_VAL_Field use
     (Val_8bit => 0,
      Val_10bit => 1,
      Val_12bit => 2,
      Val_14bit => 3);

   --  Resolution configuration
   type RESOLUTION_Register is record
      --  Set the resolution
      VAL           : RESOLUTION_VAL_Field := NRF52833_SVD.SAADC.Val_10bit;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESOLUTION_Register use record
      VAL           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Oversample control
   type OVERSAMPLE_OVERSAMPLE_Field is
     (--  Bypass oversampling
      Bypass,
      --  Oversample 2x
      Over2x,
      --  Oversample 4x
      Over4x,
      --  Oversample 8x
      Over8x,
      --  Oversample 16x
      Over16x,
      --  Oversample 32x
      Over32x,
      --  Oversample 64x
      Over64x,
      --  Oversample 128x
      Over128x,
      --  Oversample 256x
      Over256x)
     with Size => 4;
   for OVERSAMPLE_OVERSAMPLE_Field use
     (Bypass => 0,
      Over2x => 1,
      Over4x => 2,
      Over8x => 3,
      Over16x => 4,
      Over32x => 5,
      Over64x => 6,
      Over128x => 7,
      Over256x => 8);

   --  Oversampling configuration. The RESOLUTION is applied before averaging,
   --  thus for high OVERSAMPLE a higher RESOLUTION should be used.
   type OVERSAMPLE_Register is record
      --  Oversample control
      OVERSAMPLE    : OVERSAMPLE_OVERSAMPLE_Field :=
                       NRF52833_SVD.SAADC.Bypass;
      --  unspecified
      Reserved_4_31 : NRF52833_SVD.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OVERSAMPLE_Register use record
      OVERSAMPLE    at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype SAMPLERATE_CC_Field is NRF52833_SVD.UInt11;

   --  Select mode for sample rate control
   type SAMPLERATE_MODE_Field is
     (--  Rate is controlled from SAMPLE task
      Task_k,
      --  Rate is controlled from local timer (use CC to control the rate)
      Timers)
     with Size => 1;
   for SAMPLERATE_MODE_Field use
     (Task_k => 0,
      Timers => 1);

   --  Controls normal or continuous sample rate
   type SAMPLERATE_Register is record
      --  Capture and compare value. Sample rate is 16 MHz/CC
      CC             : SAMPLERATE_CC_Field := 16#0#;
      --  unspecified
      Reserved_11_11 : NRF52833_SVD.Bit := 16#0#;
      --  Select mode for sample rate control
      MODE           : SAMPLERATE_MODE_Field := NRF52833_SVD.SAADC.Task_k;
      --  unspecified
      Reserved_13_31 : NRF52833_SVD.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SAMPLERATE_Register use record
      CC             at 0 range 0 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      MODE           at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --------------------------------------
   -- SAADC_RESULT cluster's Registers --
   --------------------------------------

   subtype MAXCNT_RESULT_MAXCNT_Field is NRF52833_SVD.UInt15;

   --  Maximum number of 16-bit samples to be written to output RAM buffer
   type MAXCNT_RESULT_Register is record
      --  Maximum number of 16-bit samples to be written to output RAM buffer
      MAXCNT         : MAXCNT_RESULT_MAXCNT_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : NRF52833_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_RESULT_Register use record
      MAXCNT         at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype AMOUNT_RESULT_AMOUNT_Field is NRF52833_SVD.UInt15;

   --  Number of 16-bit samples written to output RAM buffer since the previous
   --  START task
   type AMOUNT_RESULT_Register is record
      --  Read-only. Number of 16-bit samples written to output RAM buffer
      --  since the previous START task. This register can be read after an END
      --  or STOPPED event.
      AMOUNT         : AMOUNT_RESULT_AMOUNT_Field;
      --  unspecified
      Reserved_15_31 : NRF52833_SVD.UInt17;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AMOUNT_RESULT_Register use record
      AMOUNT         at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  RESULT EasyDMA channel
   type SAADC_RESULT_Cluster is record
      --  Data pointer
      PTR    : aliased NRF52833_SVD.UInt32;
      --  Maximum number of 16-bit samples to be written to output RAM buffer
      MAXCNT : aliased MAXCNT_RESULT_Register;
      --  Number of 16-bit samples written to output RAM buffer since the
      --  previous START task
      AMOUNT : aliased AMOUNT_RESULT_Register;
   end record
     with Size => 96;

   for SAADC_RESULT_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
      AMOUNT at 16#8# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Successive approximation register (SAR) analog-to-digital converter
   type SAADC_Peripheral is record
      --  Starts the SAADC and prepares the result buffer in RAM
      TASKS_START           : aliased TASKS_START_Register;
      --  Takes one SAADC sample
      TASKS_SAMPLE          : aliased TASKS_SAMPLE_Register;
      --  Stops the SAADC and terminates all on-going conversions
      TASKS_STOP            : aliased TASKS_STOP_Register;
      --  Starts offset auto-calibration
      TASKS_CALIBRATEOFFSET : aliased TASKS_CALIBRATEOFFSET_Register;
      --  The SAADC has started
      EVENTS_STARTED        : aliased EVENTS_STARTED_Register;
      --  The SAADC has filled up the result buffer
      EVENTS_END            : aliased EVENTS_END_Register;
      --  A conversion task has been completed. Depending on the configuration,
      --  multiple conversions might be needed for a result to be transferred
      --  to RAM.
      EVENTS_DONE           : aliased EVENTS_DONE_Register;
      --  Result ready for transfer to RAM
      EVENTS_RESULTDONE     : aliased EVENTS_RESULTDONE_Register;
      --  Calibration is complete
      EVENTS_CALIBRATEDONE  : aliased EVENTS_CALIBRATEDONE_Register;
      --  The SAADC has stopped
      EVENTS_STOPPED        : aliased EVENTS_STOPPED_Register;
      --  Peripheral events.
      EVENTS_CH             : aliased SAADC_EVENTS_CH_Clusters;
      --  Enable or disable interrupt
      INTEN                 : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET              : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR              : aliased INTENCLR_Register;
      --  Status
      STATUS                : aliased STATUS_Register;
      --  Enable or disable SAADC
      ENABLE                : aliased ENABLE_Register;
      --  Unspecified
      CH                    : aliased SAADC_CH_Clusters;
      --  Resolution configuration
      RESOLUTION            : aliased RESOLUTION_Register;
      --  Oversampling configuration. The RESOLUTION is applied before
      --  averaging, thus for high OVERSAMPLE a higher RESOLUTION should be
      --  used.
      OVERSAMPLE            : aliased OVERSAMPLE_Register;
      --  Controls normal or continuous sample rate
      SAMPLERATE            : aliased SAMPLERATE_Register;
      --  RESULT EasyDMA channel
      RESULT                : aliased SAADC_RESULT_Cluster;
   end record
     with Volatile;

   for SAADC_Peripheral use record
      TASKS_START           at 16#0# range 0 .. 31;
      TASKS_SAMPLE          at 16#4# range 0 .. 31;
      TASKS_STOP            at 16#8# range 0 .. 31;
      TASKS_CALIBRATEOFFSET at 16#C# range 0 .. 31;
      EVENTS_STARTED        at 16#100# range 0 .. 31;
      EVENTS_END            at 16#104# range 0 .. 31;
      EVENTS_DONE           at 16#108# range 0 .. 31;
      EVENTS_RESULTDONE     at 16#10C# range 0 .. 31;
      EVENTS_CALIBRATEDONE  at 16#110# range 0 .. 31;
      EVENTS_STOPPED        at 16#114# range 0 .. 31;
      EVENTS_CH             at 16#118# range 0 .. 511;
      INTEN                 at 16#300# range 0 .. 31;
      INTENSET              at 16#304# range 0 .. 31;
      INTENCLR              at 16#308# range 0 .. 31;
      STATUS                at 16#400# range 0 .. 31;
      ENABLE                at 16#500# range 0 .. 31;
      CH                    at 16#510# range 0 .. 1023;
      RESOLUTION            at 16#5F0# range 0 .. 31;
      OVERSAMPLE            at 16#5F4# range 0 .. 31;
      SAMPLERATE            at 16#5F8# range 0 .. 31;
      RESULT                at 16#62C# range 0 .. 95;
   end record;

   --  Successive approximation register (SAR) analog-to-digital converter
   SAADC_Periph : aliased SAADC_Peripheral
     with Import, Address => SAADC_Base;

end NRF52833_SVD.SAADC;
