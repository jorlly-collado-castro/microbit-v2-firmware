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

package NRF52833_SVD.PDM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Starts continuous PDM transfer
   type TASKS_START_TASKS_START_Field is
     (--  Reset value for the field
      TASKS_START_TASKS_START_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_START_TASKS_START_Field use
     (TASKS_START_TASKS_START_Field_Reset => 0,
      Trigger => 1);

   --  Starts continuous PDM transfer
   type TASKS_START_Register is record
      --  Write-only. Starts continuous PDM transfer
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

   --  Stops PDM transfer
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Stops PDM transfer
   type TASKS_STOP_Register is record
      --  Write-only. Stops PDM transfer
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

   --  PDM transfer has started
   type EVENTS_STARTED_EVENTS_STARTED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_STARTED_EVENTS_STARTED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  PDM transfer has started
   type EVENTS_STARTED_Register is record
      --  PDM transfer has started
      EVENTS_STARTED : EVENTS_STARTED_EVENTS_STARTED_Field :=
                        NRF52833_SVD.PDM.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_STARTED_Register use record
      EVENTS_STARTED at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  PDM transfer has finished
   type EVENTS_STOPPED_EVENTS_STOPPED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_STOPPED_EVENTS_STOPPED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  PDM transfer has finished
   type EVENTS_STOPPED_Register is record
      --  PDM transfer has finished
      EVENTS_STOPPED : EVENTS_STOPPED_EVENTS_STOPPED_Field :=
                        NRF52833_SVD.PDM.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_STOPPED_Register use record
      EVENTS_STOPPED at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  The PDM has written the last sample specified by SAMPLE.MAXCNT (or the
   --  last sample after a STOP task has been received) to Data RAM
   type EVENTS_END_EVENTS_END_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_END_EVENTS_END_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  The PDM has written the last sample specified by SAMPLE.MAXCNT (or the
   --  last sample after a STOP task has been received) to Data RAM
   type EVENTS_END_Register is record
      --  The PDM has written the last sample specified by SAMPLE.MAXCNT (or
      --  the last sample after a STOP task has been received) to Data RAM
      EVENTS_END    : EVENTS_END_EVENTS_END_Field :=
                       NRF52833_SVD.PDM.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_END_Register use record
      EVENTS_END    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

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

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  Enable or disable interrupt for event STARTED
      STARTED       : INTEN_STARTED_Field := NRF52833_SVD.PDM.Disabled;
      --  Enable or disable interrupt for event STOPPED
      STOPPED       : INTEN_STOPPED_Field := NRF52833_SVD.PDM.Disabled;
      --  Enable or disable interrupt for event END
      END_k         : INTEN_END_Field := NRF52833_SVD.PDM.Disabled;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      STARTED       at 0 range 0 .. 0;
      STOPPED       at 0 range 1 .. 1;
      END_k         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
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

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event STARTED
      STARTED       : INTENSET_STARTED_Field_1 :=
                       INTENSET_STARTED_Field_Reset;
      --  Write '1' to enable interrupt for event STOPPED
      STOPPED       : INTENSET_STOPPED_Field_1 :=
                       INTENSET_STOPPED_Field_Reset;
      --  Write '1' to enable interrupt for event END
      END_k         : INTENSET_END_Field_1 := INTENSET_END_Field_Reset;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      STARTED       at 0 range 0 .. 0;
      STOPPED       at 0 range 1 .. 1;
      END_k         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
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

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event STARTED
      STARTED       : INTENCLR_STARTED_Field_1 :=
                       INTENCLR_STARTED_Field_Reset;
      --  Write '1' to disable interrupt for event STOPPED
      STOPPED       : INTENCLR_STOPPED_Field_1 :=
                       INTENCLR_STOPPED_Field_Reset;
      --  Write '1' to disable interrupt for event END
      END_k         : INTENCLR_END_Field_1 := INTENCLR_END_Field_Reset;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      STARTED       at 0 range 0 .. 0;
      STOPPED       at 0 range 1 .. 1;
      END_k         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Enable or disable PDM module
   type ENABLE_ENABLE_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  PDM module enable register
   type ENABLE_Register is record
      --  Enable or disable PDM module
      ENABLE        : ENABLE_ENABLE_Field := NRF52833_SVD.PDM.Disabled;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Mono or stereo operation
   type MODE_OPERATION_Field is
     (--  Sample and store one pair (left + right) of 16-bit samples per RAM word
--  R=[31:16]; L=[15:0]
      Stereo,
      --  Sample and store two successive left samples (16 bits each) per RAM word
--  L1=[31:16]; L0=[15:0]
      Mono)
     with Size => 1;
   for MODE_OPERATION_Field use
     (Stereo => 0,
      Mono => 1);

   --  Defines on which PDM_CLK edge left (or mono) is sampled
   type MODE_EDGE_Field is
     (--  Left (or mono) is sampled on falling edge of PDM_CLK
      LeftFalling,
      --  Left (or mono) is sampled on rising edge of PDM_CLK
      LeftRising)
     with Size => 1;
   for MODE_EDGE_Field use
     (LeftFalling => 0,
      LeftRising => 1);

   --  Defines the routing of the connected PDM microphones' signals
   type MODE_Register is record
      --  Mono or stereo operation
      OPERATION     : MODE_OPERATION_Field := NRF52833_SVD.PDM.Stereo;
      --  Defines on which PDM_CLK edge left (or mono) is sampled
      EDGE          : MODE_EDGE_Field := NRF52833_SVD.PDM.LeftFalling;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      OPERATION     at 0 range 0 .. 0;
      EDGE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Left output gain adjustment, in 0.5 dB steps, around the default module
   --  gain (see electrical parameters) 0x00 -20 dB gain adjust 0x01 -19.5 dB
   --  gain adjust (...) 0x27 -0.5 dB gain adjust 0x28 0 dB gain adjust 0x29
   --  +0.5 dB gain adjust (...) 0x4F +19.5 dB gain adjust 0x50 +20 dB gain
   --  adjust
   type GAINL_GAINL_Field is
     (--  -20 dB gain adjustment (minimum)
      MinGain,
      --  0 dB gain adjustment
      DefaultGain,
      --  +20 dB gain adjustment (maximum)
      MaxGain)
     with Size => 7;
   for GAINL_GAINL_Field use
     (MinGain => 0,
      DefaultGain => 40,
      MaxGain => 80);

   --  Left output gain adjustment
   type GAINL_Register is record
      --  Left output gain adjustment, in 0.5 dB steps, around the default
      --  module gain (see electrical parameters) 0x00 -20 dB gain adjust 0x01
      --  -19.5 dB gain adjust (...) 0x27 -0.5 dB gain adjust 0x28 0 dB gain
      --  adjust 0x29 +0.5 dB gain adjust (...) 0x4F +19.5 dB gain adjust 0x50
      --  +20 dB gain adjust
      GAINL         : GAINL_GAINL_Field := NRF52833_SVD.PDM.DefaultGain;
      --  unspecified
      Reserved_7_31 : NRF52833_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GAINL_Register use record
      GAINL         at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Right output gain adjustment, in 0.5 dB steps, around the default module
   --  gain (see electrical parameters)
   type GAINR_GAINR_Field is
     (--  -20 dB gain adjustment (minimum)
      MinGain,
      --  0 dB gain adjustment
      DefaultGain,
      --  +20 dB gain adjustment (maximum)
      MaxGain)
     with Size => 7;
   for GAINR_GAINR_Field use
     (MinGain => 0,
      DefaultGain => 40,
      MaxGain => 80);

   --  Right output gain adjustment
   type GAINR_Register is record
      --  Right output gain adjustment, in 0.5 dB steps, around the default
      --  module gain (see electrical parameters)
      GAINR         : GAINR_GAINR_Field := NRF52833_SVD.PDM.DefaultGain;
      --  unspecified
      Reserved_7_31 : NRF52833_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GAINR_Register use record
      GAINR         at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Selects the ratio between PDM_CLK and output sample rate
   type RATIO_RATIO_Field is
     (--  Ratio of 64
      Ratio64,
      --  Ratio of 80
      Ratio80)
     with Size => 1;
   for RATIO_RATIO_Field use
     (Ratio64 => 0,
      Ratio80 => 1);

   --  Selects the ratio between PDM_CLK and output sample rate. Change
   --  PDMCLKCTRL accordingly.
   type RATIO_Register is record
      --  Selects the ratio between PDM_CLK and output sample rate
      RATIO         : RATIO_RATIO_Field := NRF52833_SVD.PDM.Ratio64;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RATIO_Register use record
      RATIO         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   ----------------------------------
   -- PDM_PSEL cluster's Registers --
   ----------------------------------

   subtype CLK_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype CLK_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type CLK_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for CLK_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin number configuration for PDM CLK signal
   type CLK_PSEL_Register is record
      --  Pin number
      PIN           : CLK_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : CLK_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : CLK_CONNECT_Field := NRF52833_SVD.PDM.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLK_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   subtype DIN_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype DIN_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type DIN_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for DIN_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Pin number configuration for PDM DIN signal
   type DIN_PSEL_Register is record
      --  Pin number
      PIN           : DIN_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : DIN_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : DIN_CONNECT_Field := NRF52833_SVD.PDM.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIN_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type PDM_PSEL_Cluster is record
      --  Pin number configuration for PDM CLK signal
      CLK : aliased CLK_PSEL_Register;
      --  Pin number configuration for PDM DIN signal
      DIN : aliased DIN_PSEL_Register;
   end record
     with Size => 64;

   for PDM_PSEL_Cluster use record
      CLK at 16#0# range 0 .. 31;
      DIN at 16#4# range 0 .. 31;
   end record;

   ------------------------------------
   -- PDM_SAMPLE cluster's Registers --
   ------------------------------------

   subtype MAXCNT_SAMPLE_BUFFSIZE_Field is NRF52833_SVD.UInt15;

   --  Number of samples to allocate memory for in EasyDMA mode
   type MAXCNT_SAMPLE_Register is record
      --  Length of DMA RAM allocation in number of samples
      BUFFSIZE       : MAXCNT_SAMPLE_BUFFSIZE_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : NRF52833_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCNT_SAMPLE_Register use record
      BUFFSIZE       at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Unspecified
   type PDM_SAMPLE_Cluster is record
      --  RAM address pointer to write samples to with EasyDMA
      PTR    : aliased NRF52833_SVD.UInt32;
      --  Number of samples to allocate memory for in EasyDMA mode
      MAXCNT : aliased MAXCNT_SAMPLE_Register;
   end record
     with Size => 64;

   for PDM_SAMPLE_Cluster use record
      PTR    at 16#0# range 0 .. 31;
      MAXCNT at 16#4# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse Density Modulation (Digital Microphone) Interface
   type PDM_Peripheral is record
      --  Starts continuous PDM transfer
      TASKS_START    : aliased TASKS_START_Register;
      --  Stops PDM transfer
      TASKS_STOP     : aliased TASKS_STOP_Register;
      --  PDM transfer has started
      EVENTS_STARTED : aliased EVENTS_STARTED_Register;
      --  PDM transfer has finished
      EVENTS_STOPPED : aliased EVENTS_STOPPED_Register;
      --  The PDM has written the last sample specified by SAMPLE.MAXCNT (or
      --  the last sample after a STOP task has been received) to Data RAM
      EVENTS_END     : aliased EVENTS_END_Register;
      --  Enable or disable interrupt
      INTEN          : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET       : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR       : aliased INTENCLR_Register;
      --  PDM module enable register
      ENABLE         : aliased ENABLE_Register;
      --  PDM clock generator control
      PDMCLKCTRL     : aliased NRF52833_SVD.UInt32;
      --  Defines the routing of the connected PDM microphones' signals
      MODE           : aliased MODE_Register;
      --  Left output gain adjustment
      GAINL          : aliased GAINL_Register;
      --  Right output gain adjustment
      GAINR          : aliased GAINR_Register;
      --  Selects the ratio between PDM_CLK and output sample rate. Change
      --  PDMCLKCTRL accordingly.
      RATIO          : aliased RATIO_Register;
      --  Unspecified
      PSEL           : aliased PDM_PSEL_Cluster;
      --  Unspecified
      SAMPLE         : aliased PDM_SAMPLE_Cluster;
   end record
     with Volatile;

   for PDM_Peripheral use record
      TASKS_START    at 16#0# range 0 .. 31;
      TASKS_STOP     at 16#4# range 0 .. 31;
      EVENTS_STARTED at 16#100# range 0 .. 31;
      EVENTS_STOPPED at 16#104# range 0 .. 31;
      EVENTS_END     at 16#108# range 0 .. 31;
      INTEN          at 16#300# range 0 .. 31;
      INTENSET       at 16#304# range 0 .. 31;
      INTENCLR       at 16#308# range 0 .. 31;
      ENABLE         at 16#500# range 0 .. 31;
      PDMCLKCTRL     at 16#504# range 0 .. 31;
      MODE           at 16#508# range 0 .. 31;
      GAINL          at 16#518# range 0 .. 31;
      GAINR          at 16#51C# range 0 .. 31;
      RATIO          at 16#520# range 0 .. 31;
      PSEL           at 16#540# range 0 .. 63;
      SAMPLE         at 16#560# range 0 .. 63;
   end record;

   --  Pulse Density Modulation (Digital Microphone) Interface
   PDM_Periph : aliased PDM_Peripheral
     with Import, Address => PDM_Base;

end NRF52833_SVD.PDM;
