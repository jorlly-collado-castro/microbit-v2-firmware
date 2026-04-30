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

package NRF52833_SVD.PWM is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Stops PWM pulse generation on all channels at the end of current PWM
   --  period, and stops sequence playback
   type TASKS_STOP_TASKS_STOP_Field is
     (--  Reset value for the field
      TASKS_STOP_TASKS_STOP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_STOP_TASKS_STOP_Field use
     (TASKS_STOP_TASKS_STOP_Field_Reset => 0,
      Trigger => 1);

   --  Stops PWM pulse generation on all channels at the end of current PWM
   --  period, and stops sequence playback
   type TASKS_STOP_Register is record
      --  Write-only. Stops PWM pulse generation on all channels at the end of
      --  current PWM period, and stops sequence playback
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

   --  Loads the first PWM value on all enabled channels from sequence n, and
   --  starts playing that sequence at the rate defined in SEQ[n]REFRESH and/or
   --  DECODER.MODE. Causes PWM generation to start if not running.
   type TASKS_SEQSTART_TASKS_SEQSTART_Field is
     (--  Reset value for the field
      TASKS_SEQSTART_TASKS_SEQSTART_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_SEQSTART_TASKS_SEQSTART_Field use
     (TASKS_SEQSTART_TASKS_SEQSTART_Field_Reset => 0,
      Trigger => 1);

   --  Description collection: Loads the first PWM value on all enabled
   --  channels from sequence n, and starts playing that sequence at the rate
   --  defined in SEQ[n]REFRESH and/or DECODER.MODE. Causes PWM generation to
   --  start if not running.
   type TASKS_SEQSTART_Register is record
      --  Write-only. Loads the first PWM value on all enabled channels from
      --  sequence n, and starts playing that sequence at the rate defined in
      --  SEQ[n]REFRESH and/or DECODER.MODE. Causes PWM generation to start if
      --  not running.
      TASKS_SEQSTART : TASKS_SEQSTART_TASKS_SEQSTART_Field :=
                        TASKS_SEQSTART_TASKS_SEQSTART_Field_Reset;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_SEQSTART_Register use record
      TASKS_SEQSTART at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Description collection: Loads the first PWM value on all enabled
   --  channels from sequence n, and starts playing that sequence at the rate
   --  defined in SEQ[n]REFRESH and/or DECODER.MODE. Causes PWM generation to
   --  start if not running.
   type TASKS_SEQSTART_Registers is array (0 .. 1) of TASKS_SEQSTART_Register;

   --  Steps by one value in the current sequence on all enabled channels if
   --  DECODER.MODE=NextStep. Does not cause PWM generation to start if not
   --  running.
   type TASKS_NEXTSTEP_TASKS_NEXTSTEP_Field is
     (--  Reset value for the field
      TASKS_NEXTSTEP_TASKS_NEXTSTEP_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_NEXTSTEP_TASKS_NEXTSTEP_Field use
     (TASKS_NEXTSTEP_TASKS_NEXTSTEP_Field_Reset => 0,
      Trigger => 1);

   --  Steps by one value in the current sequence on all enabled channels if
   --  DECODER.MODE=NextStep. Does not cause PWM generation to start if not
   --  running.
   type TASKS_NEXTSTEP_Register is record
      --  Write-only. Steps by one value in the current sequence on all enabled
      --  channels if DECODER.MODE=NextStep. Does not cause PWM generation to
      --  start if not running.
      TASKS_NEXTSTEP : TASKS_NEXTSTEP_TASKS_NEXTSTEP_Field :=
                        TASKS_NEXTSTEP_TASKS_NEXTSTEP_Field_Reset;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_NEXTSTEP_Register use record
      TASKS_NEXTSTEP at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Response to STOP task, emitted when PWM pulses are no longer generated
   type EVENTS_STOPPED_EVENTS_STOPPED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_STOPPED_EVENTS_STOPPED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Response to STOP task, emitted when PWM pulses are no longer generated
   type EVENTS_STOPPED_Register is record
      --  Response to STOP task, emitted when PWM pulses are no longer
      --  generated
      EVENTS_STOPPED : EVENTS_STOPPED_EVENTS_STOPPED_Field :=
                        NRF52833_SVD.PWM.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_STOPPED_Register use record
      EVENTS_STOPPED at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  First PWM period started on sequence n
   type EVENTS_SEQSTARTED_EVENTS_SEQSTARTED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_SEQSTARTED_EVENTS_SEQSTARTED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Description collection: First PWM period started on sequence n
   type EVENTS_SEQSTARTED_Register is record
      --  First PWM period started on sequence n
      EVENTS_SEQSTARTED : EVENTS_SEQSTARTED_EVENTS_SEQSTARTED_Field :=
                           NRF52833_SVD.PWM.NotGenerated;
      --  unspecified
      Reserved_1_31     : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_SEQSTARTED_Register use record
      EVENTS_SEQSTARTED at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  Description collection: First PWM period started on sequence n
   type EVENTS_SEQSTARTED_Registers is array (0 .. 1)
     of EVENTS_SEQSTARTED_Register;

   --  Emitted at end of every sequence n, when last value from RAM has been
   --  applied to wave counter
   type EVENTS_SEQEND_EVENTS_SEQEND_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_SEQEND_EVENTS_SEQEND_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Description collection: Emitted at end of every sequence n, when last
   --  value from RAM has been applied to wave counter
   type EVENTS_SEQEND_Register is record
      --  Emitted at end of every sequence n, when last value from RAM has been
      --  applied to wave counter
      EVENTS_SEQEND : EVENTS_SEQEND_EVENTS_SEQEND_Field :=
                       NRF52833_SVD.PWM.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_SEQEND_Register use record
      EVENTS_SEQEND at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Description collection: Emitted at end of every sequence n, when last
   --  value from RAM has been applied to wave counter
   type EVENTS_SEQEND_Registers is array (0 .. 1) of EVENTS_SEQEND_Register;

   --  Emitted at the end of each PWM period
   type EVENTS_PWMPERIODEND_EVENTS_PWMPERIODEND_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_PWMPERIODEND_EVENTS_PWMPERIODEND_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Emitted at the end of each PWM period
   type EVENTS_PWMPERIODEND_Register is record
      --  Emitted at the end of each PWM period
      EVENTS_PWMPERIODEND : EVENTS_PWMPERIODEND_EVENTS_PWMPERIODEND_Field :=
                             NRF52833_SVD.PWM.NotGenerated;
      --  unspecified
      Reserved_1_31       : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_PWMPERIODEND_Register use record
      EVENTS_PWMPERIODEND at 0 range 0 .. 0;
      Reserved_1_31       at 0 range 1 .. 31;
   end record;

   --  Concatenated sequences have been played the amount of times defined in
   --  LOOP.CNT
   type EVENTS_LOOPSDONE_EVENTS_LOOPSDONE_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_LOOPSDONE_EVENTS_LOOPSDONE_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Concatenated sequences have been played the amount of times defined in
   --  LOOP.CNT
   type EVENTS_LOOPSDONE_Register is record
      --  Concatenated sequences have been played the amount of times defined
      --  in LOOP.CNT
      EVENTS_LOOPSDONE : EVENTS_LOOPSDONE_EVENTS_LOOPSDONE_Field :=
                          NRF52833_SVD.PWM.NotGenerated;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_LOOPSDONE_Register use record
      EVENTS_LOOPSDONE at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Shortcut between event SEQEND[0] and task STOP
   type SHORTS_SEQEND0_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_SEQEND0_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event SEQEND[1] and task STOP
   type SHORTS_SEQEND1_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_SEQEND1_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcut between event LOOPSDONE and task SEQSTART[0]
   type SHORTS_LOOPSDONE_SEQSTART0_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_LOOPSDONE_SEQSTART0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  SHORTS_LOOPSDONE_SEQSTART array
   type SHORTS_LOOPSDONE_SEQSTART_Field_Array is array (0 .. 1)
     of SHORTS_LOOPSDONE_SEQSTART0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for SHORTS_LOOPSDONE_SEQSTART
   type SHORTS_LOOPSDONE_SEQSTART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LOOPSDONE_SEQSTART as a value
            Val : NRF52833_SVD.UInt2;
         when True =>
            --  LOOPSDONE_SEQSTART as an array
            Arr : SHORTS_LOOPSDONE_SEQSTART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for SHORTS_LOOPSDONE_SEQSTART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Shortcut between event LOOPSDONE and task STOP
   type SHORTS_LOOPSDONE_STOP_Field is
     (--  Disable shortcut
      Disabled,
      --  Enable shortcut
      Enabled)
     with Size => 1;
   for SHORTS_LOOPSDONE_STOP_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Shortcuts between local events and tasks
   type SHORTS_Register is record
      --  Shortcut between event SEQEND[0] and task STOP
      SEQEND0_STOP       : SHORTS_SEQEND0_STOP_Field :=
                            NRF52833_SVD.PWM.Disabled;
      --  Shortcut between event SEQEND[1] and task STOP
      SEQEND1_STOP       : SHORTS_SEQEND1_STOP_Field :=
                            NRF52833_SVD.PWM.Disabled;
      --  Shortcut between event LOOPSDONE and task SEQSTART[0]
      LOOPSDONE_SEQSTART : SHORTS_LOOPSDONE_SEQSTART_Field :=
                            (As_Array => False, Val => 16#0#);
      --  Shortcut between event LOOPSDONE and task STOP
      LOOPSDONE_STOP     : SHORTS_LOOPSDONE_STOP_Field :=
                            NRF52833_SVD.PWM.Disabled;
      --  unspecified
      Reserved_5_31      : NRF52833_SVD.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SHORTS_Register use record
      SEQEND0_STOP       at 0 range 0 .. 0;
      SEQEND1_STOP       at 0 range 1 .. 1;
      LOOPSDONE_SEQSTART at 0 range 2 .. 3;
      LOOPSDONE_STOP     at 0 range 4 .. 4;
      Reserved_5_31      at 0 range 5 .. 31;
   end record;

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

   --  Enable or disable interrupt for event SEQSTARTED[0]
   type INTEN_SEQSTARTED0_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_SEQSTARTED0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  INTEN_SEQSTARTED array
   type INTEN_SEQSTARTED_Field_Array is array (0 .. 1)
     of INTEN_SEQSTARTED0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for INTEN_SEQSTARTED
   type INTEN_SEQSTARTED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEQSTARTED as a value
            Val : NRF52833_SVD.UInt2;
         when True =>
            --  SEQSTARTED as an array
            Arr : INTEN_SEQSTARTED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for INTEN_SEQSTARTED_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Enable or disable interrupt for event SEQEND[0]
   type INTEN_SEQEND0_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_SEQEND0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  INTEN_SEQEND array
   type INTEN_SEQEND_Field_Array is array (0 .. 1) of INTEN_SEQEND0_Field
     with Component_Size => 1, Size => 2;

   --  Type definition for INTEN_SEQEND
   type INTEN_SEQEND_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEQEND as a value
            Val : NRF52833_SVD.UInt2;
         when True =>
            --  SEQEND as an array
            Arr : INTEN_SEQEND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for INTEN_SEQEND_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Enable or disable interrupt for event PWMPERIODEND
   type INTEN_PWMPERIODEND_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_PWMPERIODEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event LOOPSDONE
   type INTEN_LOOPSDONE_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_LOOPSDONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  unspecified
      Reserved_0_0  : NRF52833_SVD.Bit := 16#0#;
      --  Enable or disable interrupt for event STOPPED
      STOPPED       : INTEN_STOPPED_Field := NRF52833_SVD.PWM.Disabled;
      --  Enable or disable interrupt for event SEQSTARTED[0]
      SEQSTARTED    : INTEN_SEQSTARTED_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Enable or disable interrupt for event SEQEND[0]
      SEQEND        : INTEN_SEQEND_Field := (As_Array => False, Val => 16#0#);
      --  Enable or disable interrupt for event PWMPERIODEND
      PWMPERIODEND  : INTEN_PWMPERIODEND_Field := NRF52833_SVD.PWM.Disabled;
      --  Enable or disable interrupt for event LOOPSDONE
      LOOPSDONE     : INTEN_LOOPSDONE_Field := NRF52833_SVD.PWM.Disabled;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      STOPPED       at 0 range 1 .. 1;
      SEQSTARTED    at 0 range 2 .. 3;
      SEQEND        at 0 range 4 .. 5;
      PWMPERIODEND  at 0 range 6 .. 6;
      LOOPSDONE     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
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

   --  Write '1' to enable interrupt for event SEQSTARTED[0]
   type INTENSET_SEQSTARTED0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SEQSTARTED0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event SEQSTARTED[0]
   type INTENSET_SEQSTARTED0_Field_1 is
     (--  Reset value for the field
      INTENSET_SEQSTARTED0_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SEQSTARTED0_Field_1 use
     (INTENSET_SEQSTARTED0_Field_Reset => 0,
      Set => 1);

   --  INTENSET_SEQSTARTED array
   type INTENSET_SEQSTARTED_Field_Array is array (0 .. 1)
     of INTENSET_SEQSTARTED0_Field_1
     with Component_Size => 1, Size => 2;

   --  Type definition for INTENSET_SEQSTARTED
   type INTENSET_SEQSTARTED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEQSTARTED as a value
            Val : NRF52833_SVD.UInt2;
         when True =>
            --  SEQSTARTED as an array
            Arr : INTENSET_SEQSTARTED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for INTENSET_SEQSTARTED_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Write '1' to enable interrupt for event SEQEND[0]
   type INTENSET_SEQEND0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SEQEND0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event SEQEND[0]
   type INTENSET_SEQEND0_Field_1 is
     (--  Reset value for the field
      INTENSET_SEQEND0_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SEQEND0_Field_1 use
     (INTENSET_SEQEND0_Field_Reset => 0,
      Set => 1);

   --  INTENSET_SEQEND array
   type INTENSET_SEQEND_Field_Array is array (0 .. 1)
     of INTENSET_SEQEND0_Field_1
     with Component_Size => 1, Size => 2;

   --  Type definition for INTENSET_SEQEND
   type INTENSET_SEQEND_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEQEND as a value
            Val : NRF52833_SVD.UInt2;
         when True =>
            --  SEQEND as an array
            Arr : INTENSET_SEQEND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for INTENSET_SEQEND_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Write '1' to enable interrupt for event PWMPERIODEND
   type INTENSET_PWMPERIODEND_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_PWMPERIODEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PWMPERIODEND
   type INTENSET_PWMPERIODEND_Field_1 is
     (--  Reset value for the field
      INTENSET_PWMPERIODEND_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_PWMPERIODEND_Field_1 use
     (INTENSET_PWMPERIODEND_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event LOOPSDONE
   type INTENSET_LOOPSDONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_LOOPSDONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event LOOPSDONE
   type INTENSET_LOOPSDONE_Field_1 is
     (--  Reset value for the field
      INTENSET_LOOPSDONE_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_LOOPSDONE_Field_1 use
     (INTENSET_LOOPSDONE_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_0  : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to enable interrupt for event STOPPED
      STOPPED       : INTENSET_STOPPED_Field_1 :=
                       INTENSET_STOPPED_Field_Reset;
      --  Write '1' to enable interrupt for event SEQSTARTED[0]
      SEQSTARTED    : INTENSET_SEQSTARTED_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Write '1' to enable interrupt for event SEQEND[0]
      SEQEND        : INTENSET_SEQEND_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Write '1' to enable interrupt for event PWMPERIODEND
      PWMPERIODEND  : INTENSET_PWMPERIODEND_Field_1 :=
                       INTENSET_PWMPERIODEND_Field_Reset;
      --  Write '1' to enable interrupt for event LOOPSDONE
      LOOPSDONE     : INTENSET_LOOPSDONE_Field_1 :=
                       INTENSET_LOOPSDONE_Field_Reset;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      STOPPED       at 0 range 1 .. 1;
      SEQSTARTED    at 0 range 2 .. 3;
      SEQEND        at 0 range 4 .. 5;
      PWMPERIODEND  at 0 range 6 .. 6;
      LOOPSDONE     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
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

   --  Write '1' to disable interrupt for event SEQSTARTED[0]
   type INTENCLR_SEQSTARTED0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SEQSTARTED0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event SEQSTARTED[0]
   type INTENCLR_SEQSTARTED0_Field_1 is
     (--  Reset value for the field
      INTENCLR_SEQSTARTED0_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SEQSTARTED0_Field_1 use
     (INTENCLR_SEQSTARTED0_Field_Reset => 0,
      Clear => 1);

   --  INTENCLR_SEQSTARTED array
   type INTENCLR_SEQSTARTED_Field_Array is array (0 .. 1)
     of INTENCLR_SEQSTARTED0_Field_1
     with Component_Size => 1, Size => 2;

   --  Type definition for INTENCLR_SEQSTARTED
   type INTENCLR_SEQSTARTED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEQSTARTED as a value
            Val : NRF52833_SVD.UInt2;
         when True =>
            --  SEQSTARTED as an array
            Arr : INTENCLR_SEQSTARTED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for INTENCLR_SEQSTARTED_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Write '1' to disable interrupt for event SEQEND[0]
   type INTENCLR_SEQEND0_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SEQEND0_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event SEQEND[0]
   type INTENCLR_SEQEND0_Field_1 is
     (--  Reset value for the field
      INTENCLR_SEQEND0_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SEQEND0_Field_1 use
     (INTENCLR_SEQEND0_Field_Reset => 0,
      Clear => 1);

   --  INTENCLR_SEQEND array
   type INTENCLR_SEQEND_Field_Array is array (0 .. 1)
     of INTENCLR_SEQEND0_Field_1
     with Component_Size => 1, Size => 2;

   --  Type definition for INTENCLR_SEQEND
   type INTENCLR_SEQEND_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SEQEND as a value
            Val : NRF52833_SVD.UInt2;
         when True =>
            --  SEQEND as an array
            Arr : INTENCLR_SEQEND_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for INTENCLR_SEQEND_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Write '1' to disable interrupt for event PWMPERIODEND
   type INTENCLR_PWMPERIODEND_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_PWMPERIODEND_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PWMPERIODEND
   type INTENCLR_PWMPERIODEND_Field_1 is
     (--  Reset value for the field
      INTENCLR_PWMPERIODEND_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_PWMPERIODEND_Field_1 use
     (INTENCLR_PWMPERIODEND_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event LOOPSDONE
   type INTENCLR_LOOPSDONE_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_LOOPSDONE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event LOOPSDONE
   type INTENCLR_LOOPSDONE_Field_1 is
     (--  Reset value for the field
      INTENCLR_LOOPSDONE_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_LOOPSDONE_Field_1 use
     (INTENCLR_LOOPSDONE_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_0  : NRF52833_SVD.Bit := 16#0#;
      --  Write '1' to disable interrupt for event STOPPED
      STOPPED       : INTENCLR_STOPPED_Field_1 :=
                       INTENCLR_STOPPED_Field_Reset;
      --  Write '1' to disable interrupt for event SEQSTARTED[0]
      SEQSTARTED    : INTENCLR_SEQSTARTED_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Write '1' to disable interrupt for event SEQEND[0]
      SEQEND        : INTENCLR_SEQEND_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Write '1' to disable interrupt for event PWMPERIODEND
      PWMPERIODEND  : INTENCLR_PWMPERIODEND_Field_1 :=
                       INTENCLR_PWMPERIODEND_Field_Reset;
      --  Write '1' to disable interrupt for event LOOPSDONE
      LOOPSDONE     : INTENCLR_LOOPSDONE_Field_1 :=
                       INTENCLR_LOOPSDONE_Field_Reset;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      STOPPED       at 0 range 1 .. 1;
      SEQSTARTED    at 0 range 2 .. 3;
      SEQEND        at 0 range 4 .. 5;
      PWMPERIODEND  at 0 range 6 .. 6;
      LOOPSDONE     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Enable or disable PWM module
   type ENABLE_ENABLE_Field is
     (--  Disabled
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for ENABLE_ENABLE_Field use
     (Disabled => 0,
      Enabled => 1);

   --  PWM module enable register
   type ENABLE_Register is record
      --  Enable or disable PWM module
      ENABLE        : ENABLE_ENABLE_Field := NRF52833_SVD.PWM.Disabled;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENABLE_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Selects up mode or up-and-down mode for the counter
   type MODE_UPDOWN_Field is
     (--  Up counter, edge-aligned PWM duty cycle
      Up,
      --  Up and down counter, center-aligned PWM duty cycle
      UpAndDown)
     with Size => 1;
   for MODE_UPDOWN_Field use
     (Up => 0,
      UpAndDown => 1);

   --  Selects operating mode of the wave counter
   type MODE_Register is record
      --  Selects up mode or up-and-down mode for the counter
      UPDOWN        : MODE_UPDOWN_Field := NRF52833_SVD.PWM.Up;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODE_Register use record
      UPDOWN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype COUNTERTOP_COUNTERTOP_Field is NRF52833_SVD.UInt15;

   --  Value up to which the pulse generator counter counts
   type COUNTERTOP_Register is record
      --  Value up to which the pulse generator counter counts. This register
      --  is ignored when DECODER.MODE=WaveForm and only values from RAM are
      --  used.
      COUNTERTOP     : COUNTERTOP_COUNTERTOP_Field := 16#3FF#;
      --  unspecified
      Reserved_15_31 : NRF52833_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COUNTERTOP_Register use record
      COUNTERTOP     at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Prescaler of PWM_CLK
   type PRESCALER_PRESCALER_Field is
     (--  Divide by 1 (16 MHz)
      DIV_1,
      --  Divide by 2 (8 MHz)
      DIV_2,
      --  Divide by 4 (4 MHz)
      DIV_4,
      --  Divide by 8 (2 MHz)
      DIV_8,
      --  Divide by 16 (1 MHz)
      DIV_16,
      --  Divide by 32 (500 kHz)
      DIV_32,
      --  Divide by 64 (250 kHz)
      DIV_64,
      --  Divide by 128 (125 kHz)
      DIV_128)
     with Size => 3;
   for PRESCALER_PRESCALER_Field use
     (DIV_1 => 0,
      DIV_2 => 1,
      DIV_4 => 2,
      DIV_8 => 3,
      DIV_16 => 4,
      DIV_32 => 5,
      DIV_64 => 6,
      DIV_128 => 7);

   --  Configuration for PWM_CLK
   type PRESCALER_Register is record
      --  Prescaler of PWM_CLK
      PRESCALER     : PRESCALER_PRESCALER_Field := NRF52833_SVD.PWM.DIV_1;
      --  unspecified
      Reserved_3_31 : NRF52833_SVD.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRESCALER_Register use record
      PRESCALER     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  How a sequence is read from RAM and spread to the compare register
   type DECODER_LOAD_Field is
     (--  1st half word (16-bit) used in all PWM channels 0..3
      Common,
      --  1st half word (16-bit) used in channel 0..1; 2nd word in channel 2..3
      Grouped,
      --  1st half word (16-bit) in ch.0; 2nd in ch.1; ...; 4th in ch.3
      Individual,
      --  1st half word (16-bit) in ch.0; 2nd in ch.1; ...; 4th in COUNTERTOP
      WaveForm)
     with Size => 2;
   for DECODER_LOAD_Field use
     (Common => 0,
      Grouped => 1,
      Individual => 2,
      WaveForm => 3);

   --  Selects source for advancing the active sequence
   type DECODER_MODE_Field is
     (--  SEQ[n].REFRESH is used to determine loading internal compare registers
      RefreshCount,
      --  NEXTSTEP task causes a new value to be loaded to internal compare registers
      NextStep)
     with Size => 1;
   for DECODER_MODE_Field use
     (RefreshCount => 0,
      NextStep => 1);

   --  Configuration of the decoder
   type DECODER_Register is record
      --  How a sequence is read from RAM and spread to the compare register
      LOAD          : DECODER_LOAD_Field := NRF52833_SVD.PWM.Common;
      --  unspecified
      Reserved_2_7  : NRF52833_SVD.UInt6 := 16#0#;
      --  Selects source for advancing the active sequence
      MODE          : DECODER_MODE_Field := NRF52833_SVD.PWM.RefreshCount;
      --  unspecified
      Reserved_9_31 : NRF52833_SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DECODER_Register use record
      LOAD          at 0 range 0 .. 1;
      Reserved_2_7  at 0 range 2 .. 7;
      MODE          at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  Number of playbacks of pattern cycles
   type LOOP_CNT_Field is
     (--  Looping disabled (stop at the end of the sequence)
      Disabled)
     with Size => 16;
   for LOOP_CNT_Field use
     (Disabled => 0);

   --  Number of playbacks of a loop
   type LOOP_Register is record
      --  Number of playbacks of pattern cycles
      CNT            : LOOP_CNT_Field := NRF52833_SVD.PWM.Disabled;
      --  unspecified
      Reserved_16_31 : NRF52833_SVD.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOOP_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   ---------------------------------
   -- PWM_SEQ cluster's Registers --
   ---------------------------------

   --  Number of values (duty cycles) in this sequence
   type CNT_CNT_Field is
     (--  Sequence is disabled, and shall not be started as it is empty
      Disabled)
     with Size => 15;
   for CNT_CNT_Field use
     (Disabled => 0);

   --  Description cluster: Number of values (duty cycles) in this sequence
   type CNT_SEQ_Register is record
      --  Number of values (duty cycles) in this sequence
      CNT            : CNT_CNT_Field := NRF52833_SVD.PWM.Disabled;
      --  unspecified
      Reserved_15_31 : NRF52833_SVD.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_SEQ_Register use record
      CNT            at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   --  Number of additional PWM periods between samples loaded into compare
   --  register (load every REFRESH.CNT+1 PWM periods)
   type REFRESH_CNT_Field is
     (--  Update every PWM period
      Continuous,
      --  Reset value for the field
      REFRESH_CNT_Field_Reset)
     with Size => 24;
   for REFRESH_CNT_Field use
     (Continuous => 0,
      REFRESH_CNT_Field_Reset => 1);

   --  Description cluster: Number of additional PWM periods between samples
   --  loaded into compare register
   type REFRESH_SEQ_Register is record
      --  Number of additional PWM periods between samples loaded into compare
      --  register (load every REFRESH.CNT+1 PWM periods)
      CNT            : REFRESH_CNT_Field := REFRESH_CNT_Field_Reset;
      --  unspecified
      Reserved_24_31 : NRF52833_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REFRESH_SEQ_Register use record
      CNT            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ENDDELAY_SEQ_CNT_Field is NRF52833_SVD.UInt24;

   --  Description cluster: Time added after the sequence
   type ENDDELAY_SEQ_Register is record
      --  Time added after the sequence in PWM periods
      CNT            : ENDDELAY_SEQ_CNT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : NRF52833_SVD.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ENDDELAY_SEQ_Register use record
      CNT            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Unspecified
   type PWM_SEQ_Cluster is record
      --  Description cluster: Beginning address in RAM of this sequence
      PTR      : aliased NRF52833_SVD.UInt32;
      --  Description cluster: Number of values (duty cycles) in this sequence
      CNT      : aliased CNT_SEQ_Register;
      --  Description cluster: Number of additional PWM periods between samples
      --  loaded into compare register
      REFRESH  : aliased REFRESH_SEQ_Register;
      --  Description cluster: Time added after the sequence
      ENDDELAY : aliased ENDDELAY_SEQ_Register;
   end record
     with Size => 256;

   for PWM_SEQ_Cluster use record
      PTR      at 16#0# range 0 .. 31;
      CNT      at 16#4# range 0 .. 31;
      REFRESH  at 16#8# range 0 .. 31;
      ENDDELAY at 16#C# range 0 .. 31;
   end record;

   --  Unspecified
   type PWM_SEQ_Clusters is array (0 .. 1) of PWM_SEQ_Cluster;

   ----------------------------------
   -- PWM_PSEL cluster's Registers --
   ----------------------------------

   subtype OUT_PSEL_PIN_Field is NRF52833_SVD.UInt5;
   subtype OUT_PSEL_PORT_Field is NRF52833_SVD.Bit;

   --  Connection
   type OUT_CONNECT_Field is
     (--  Connect
      Connected,
      --  Disconnect
      Disconnected)
     with Size => 1;
   for OUT_CONNECT_Field use
     (Connected => 0,
      Disconnected => 1);

   --  Description collection: Output pin select for PWM channel n
   type OUT_PSEL_Register is record
      --  Pin number
      PIN           : OUT_PSEL_PIN_Field := 16#1F#;
      --  Port number
      PORT          : OUT_PSEL_PORT_Field := 16#1#;
      --  unspecified
      Reserved_6_30 : NRF52833_SVD.UInt25 := 16#1FFFFFF#;
      --  Connection
      CONNECT       : OUT_CONNECT_Field := NRF52833_SVD.PWM.Disconnected;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OUT_PSEL_Register use record
      PIN           at 0 range 0 .. 4;
      PORT          at 0 range 5 .. 5;
      Reserved_6_30 at 0 range 6 .. 30;
      CONNECT       at 0 range 31 .. 31;
   end record;

   --  Description collection: Output pin select for PWM channel n
   type OUT_PSEL_Registers is array (0 .. 3) of OUT_PSEL_Register;

   --  Unspecified
   type PWM_PSEL_Cluster is record
      --  Description collection: Output pin select for PWM channel n
      OUT_k : aliased OUT_PSEL_Registers;
   end record
     with Size => 128;

   for PWM_PSEL_Cluster use record
      OUT_k at 0 range 0 .. 127;
   end record;

   ---------------------------------
   -- PWM_SEQ cluster's Registers --
   ---------------------------------

   ----------------------------------
   -- PWM_PSEL cluster's Registers --
   ----------------------------------

   ---------------------------------
   -- PWM_SEQ cluster's Registers --
   ---------------------------------

   ----------------------------------
   -- PWM_PSEL cluster's Registers --
   ----------------------------------

   ---------------------------------
   -- PWM_SEQ cluster's Registers --
   ---------------------------------

   ----------------------------------
   -- PWM_PSEL cluster's Registers --
   ----------------------------------

   -----------------
   -- Peripherals --
   -----------------

   --  Pulse width modulation unit 0
   type PWM_Peripheral is record
      --  Stops PWM pulse generation on all channels at the end of current PWM
      --  period, and stops sequence playback
      TASKS_STOP          : aliased TASKS_STOP_Register;
      --  Description collection: Loads the first PWM value on all enabled
      --  channels from sequence n, and starts playing that sequence at the
      --  rate defined in SEQ[n]REFRESH and/or DECODER.MODE. Causes PWM
      --  generation to start if not running.
      TASKS_SEQSTART      : aliased TASKS_SEQSTART_Registers;
      --  Steps by one value in the current sequence on all enabled channels if
      --  DECODER.MODE=NextStep. Does not cause PWM generation to start if not
      --  running.
      TASKS_NEXTSTEP      : aliased TASKS_NEXTSTEP_Register;
      --  Response to STOP task, emitted when PWM pulses are no longer
      --  generated
      EVENTS_STOPPED      : aliased EVENTS_STOPPED_Register;
      --  Description collection: First PWM period started on sequence n
      EVENTS_SEQSTARTED   : aliased EVENTS_SEQSTARTED_Registers;
      --  Description collection: Emitted at end of every sequence n, when last
      --  value from RAM has been applied to wave counter
      EVENTS_SEQEND       : aliased EVENTS_SEQEND_Registers;
      --  Emitted at the end of each PWM period
      EVENTS_PWMPERIODEND : aliased EVENTS_PWMPERIODEND_Register;
      --  Concatenated sequences have been played the amount of times defined
      --  in LOOP.CNT
      EVENTS_LOOPSDONE    : aliased EVENTS_LOOPSDONE_Register;
      --  Shortcuts between local events and tasks
      SHORTS              : aliased SHORTS_Register;
      --  Enable or disable interrupt
      INTEN               : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET            : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR            : aliased INTENCLR_Register;
      --  PWM module enable register
      ENABLE              : aliased ENABLE_Register;
      --  Selects operating mode of the wave counter
      MODE                : aliased MODE_Register;
      --  Value up to which the pulse generator counter counts
      COUNTERTOP          : aliased COUNTERTOP_Register;
      --  Configuration for PWM_CLK
      PRESCALER           : aliased PRESCALER_Register;
      --  Configuration of the decoder
      DECODER             : aliased DECODER_Register;
      --  Number of playbacks of a loop
      LOOP_k              : aliased LOOP_Register;
      --  Unspecified
      SEQ                 : aliased PWM_SEQ_Clusters;
      --  Unspecified
      PSEL                : aliased PWM_PSEL_Cluster;
   end record
     with Volatile;

   for PWM_Peripheral use record
      TASKS_STOP          at 16#4# range 0 .. 31;
      TASKS_SEQSTART      at 16#8# range 0 .. 63;
      TASKS_NEXTSTEP      at 16#10# range 0 .. 31;
      EVENTS_STOPPED      at 16#104# range 0 .. 31;
      EVENTS_SEQSTARTED   at 16#108# range 0 .. 63;
      EVENTS_SEQEND       at 16#110# range 0 .. 63;
      EVENTS_PWMPERIODEND at 16#118# range 0 .. 31;
      EVENTS_LOOPSDONE    at 16#11C# range 0 .. 31;
      SHORTS              at 16#200# range 0 .. 31;
      INTEN               at 16#300# range 0 .. 31;
      INTENSET            at 16#304# range 0 .. 31;
      INTENCLR            at 16#308# range 0 .. 31;
      ENABLE              at 16#500# range 0 .. 31;
      MODE                at 16#504# range 0 .. 31;
      COUNTERTOP          at 16#508# range 0 .. 31;
      PRESCALER           at 16#50C# range 0 .. 31;
      DECODER             at 16#510# range 0 .. 31;
      LOOP_k              at 16#514# range 0 .. 31;
      SEQ                 at 16#520# range 0 .. 511;
      PSEL                at 16#560# range 0 .. 127;
   end record;

   --  Pulse width modulation unit 0
   PWM0_Periph : aliased PWM_Peripheral
     with Import, Address => PWM0_Base;

   --  Pulse width modulation unit 1
   PWM1_Periph : aliased PWM_Peripheral
     with Import, Address => PWM1_Base;

   --  Pulse width modulation unit 2
   PWM2_Periph : aliased PWM_Peripheral
     with Import, Address => PWM2_Base;

   --  Pulse width modulation unit 3
   PWM3_Periph : aliased PWM_Peripheral
     with Import, Address => PWM3_Base;

end NRF52833_SVD.PWM;
