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

package NRF52833_SVD.POWER is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Enable Constant Latency mode
   type TASKS_CONSTLAT_TASKS_CONSTLAT_Field is
     (--  Reset value for the field
      TASKS_CONSTLAT_TASKS_CONSTLAT_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_CONSTLAT_TASKS_CONSTLAT_Field use
     (TASKS_CONSTLAT_TASKS_CONSTLAT_Field_Reset => 0,
      Trigger => 1);

   --  Enable Constant Latency mode
   type TASKS_CONSTLAT_Register is record
      --  Write-only. Enable Constant Latency mode
      TASKS_CONSTLAT : TASKS_CONSTLAT_TASKS_CONSTLAT_Field :=
                        TASKS_CONSTLAT_TASKS_CONSTLAT_Field_Reset;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_CONSTLAT_Register use record
      TASKS_CONSTLAT at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Enable Low-power mode (variable latency)
   type TASKS_LOWPWR_TASKS_LOWPWR_Field is
     (--  Reset value for the field
      TASKS_LOWPWR_TASKS_LOWPWR_Field_Reset,
      --  Trigger task
      Trigger)
     with Size => 1;
   for TASKS_LOWPWR_TASKS_LOWPWR_Field use
     (TASKS_LOWPWR_TASKS_LOWPWR_Field_Reset => 0,
      Trigger => 1);

   --  Enable Low-power mode (variable latency)
   type TASKS_LOWPWR_Register is record
      --  Write-only. Enable Low-power mode (variable latency)
      TASKS_LOWPWR  : TASKS_LOWPWR_TASKS_LOWPWR_Field :=
                       TASKS_LOWPWR_TASKS_LOWPWR_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TASKS_LOWPWR_Register use record
      TASKS_LOWPWR  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Power failure warning
   type EVENTS_POFWARN_EVENTS_POFWARN_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_POFWARN_EVENTS_POFWARN_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Power failure warning
   type EVENTS_POFWARN_Register is record
      --  Power failure warning
      EVENTS_POFWARN : EVENTS_POFWARN_EVENTS_POFWARN_Field :=
                        NRF52833_SVD.POWER.NotGenerated;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_POFWARN_Register use record
      EVENTS_POFWARN at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  CPU entered WFI/WFE sleep
   type EVENTS_SLEEPENTER_EVENTS_SLEEPENTER_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_SLEEPENTER_EVENTS_SLEEPENTER_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  CPU entered WFI/WFE sleep
   type EVENTS_SLEEPENTER_Register is record
      --  CPU entered WFI/WFE sleep
      EVENTS_SLEEPENTER : EVENTS_SLEEPENTER_EVENTS_SLEEPENTER_Field :=
                           NRF52833_SVD.POWER.NotGenerated;
      --  unspecified
      Reserved_1_31     : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_SLEEPENTER_Register use record
      EVENTS_SLEEPENTER at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  CPU exited WFI/WFE sleep
   type EVENTS_SLEEPEXIT_EVENTS_SLEEPEXIT_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_SLEEPEXIT_EVENTS_SLEEPEXIT_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  CPU exited WFI/WFE sleep
   type EVENTS_SLEEPEXIT_Register is record
      --  CPU exited WFI/WFE sleep
      EVENTS_SLEEPEXIT : EVENTS_SLEEPEXIT_EVENTS_SLEEPEXIT_Field :=
                          NRF52833_SVD.POWER.NotGenerated;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_SLEEPEXIT_Register use record
      EVENTS_SLEEPEXIT at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Voltage supply detected on VBUS
   type EVENTS_USBDETECTED_EVENTS_USBDETECTED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_USBDETECTED_EVENTS_USBDETECTED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Voltage supply detected on VBUS
   type EVENTS_USBDETECTED_Register is record
      --  Voltage supply detected on VBUS
      EVENTS_USBDETECTED : EVENTS_USBDETECTED_EVENTS_USBDETECTED_Field :=
                            NRF52833_SVD.POWER.NotGenerated;
      --  unspecified
      Reserved_1_31      : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_USBDETECTED_Register use record
      EVENTS_USBDETECTED at 0 range 0 .. 0;
      Reserved_1_31      at 0 range 1 .. 31;
   end record;

   --  Voltage supply removed from VBUS
   type EVENTS_USBREMOVED_EVENTS_USBREMOVED_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_USBREMOVED_EVENTS_USBREMOVED_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Voltage supply removed from VBUS
   type EVENTS_USBREMOVED_Register is record
      --  Voltage supply removed from VBUS
      EVENTS_USBREMOVED : EVENTS_USBREMOVED_EVENTS_USBREMOVED_Field :=
                           NRF52833_SVD.POWER.NotGenerated;
      --  unspecified
      Reserved_1_31     : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_USBREMOVED_Register use record
      EVENTS_USBREMOVED at 0 range 0 .. 0;
      Reserved_1_31     at 0 range 1 .. 31;
   end record;

   --  USB 3.3 V supply ready
   type EVENTS_USBPWRRDY_EVENTS_USBPWRRDY_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for EVENTS_USBPWRRDY_EVENTS_USBPWRRDY_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  USB 3.3 V supply ready
   type EVENTS_USBPWRRDY_Register is record
      --  USB 3.3 V supply ready
      EVENTS_USBPWRRDY : EVENTS_USBPWRRDY_EVENTS_USBPWRRDY_Field :=
                          NRF52833_SVD.POWER.NotGenerated;
      --  unspecified
      Reserved_1_31    : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVENTS_USBPWRRDY_Register use record
      EVENTS_USBPWRRDY at 0 range 0 .. 0;
      Reserved_1_31    at 0 range 1 .. 31;
   end record;

   --  Write '1' to enable interrupt for event POFWARN
   type INTENSET_POFWARN_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_POFWARN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event POFWARN
   type INTENSET_POFWARN_Field_1 is
     (--  Reset value for the field
      INTENSET_POFWARN_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_POFWARN_Field_1 use
     (INTENSET_POFWARN_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event SLEEPENTER
   type INTENSET_SLEEPENTER_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SLEEPENTER_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event SLEEPENTER
   type INTENSET_SLEEPENTER_Field_1 is
     (--  Reset value for the field
      INTENSET_SLEEPENTER_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SLEEPENTER_Field_1 use
     (INTENSET_SLEEPENTER_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event SLEEPEXIT
   type INTENSET_SLEEPEXIT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_SLEEPEXIT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event SLEEPEXIT
   type INTENSET_SLEEPEXIT_Field_1 is
     (--  Reset value for the field
      INTENSET_SLEEPEXIT_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_SLEEPEXIT_Field_1 use
     (INTENSET_SLEEPEXIT_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event USBDETECTED
   type INTENSET_USBDETECTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_USBDETECTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event USBDETECTED
   type INTENSET_USBDETECTED_Field_1 is
     (--  Reset value for the field
      INTENSET_USBDETECTED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_USBDETECTED_Field_1 use
     (INTENSET_USBDETECTED_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event USBREMOVED
   type INTENSET_USBREMOVED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_USBREMOVED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event USBREMOVED
   type INTENSET_USBREMOVED_Field_1 is
     (--  Reset value for the field
      INTENSET_USBREMOVED_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_USBREMOVED_Field_1 use
     (INTENSET_USBREMOVED_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event USBPWRRDY
   type INTENSET_USBPWRRDY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_USBPWRRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event USBPWRRDY
   type INTENSET_USBPWRRDY_Field_1 is
     (--  Reset value for the field
      INTENSET_USBPWRRDY_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_USBPWRRDY_Field_1 use
     (INTENSET_USBPWRRDY_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  unspecified
      Reserved_0_1   : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to enable interrupt for event POFWARN
      POFWARN        : INTENSET_POFWARN_Field_1 :=
                        INTENSET_POFWARN_Field_Reset;
      --  unspecified
      Reserved_3_4   : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to enable interrupt for event SLEEPENTER
      SLEEPENTER     : INTENSET_SLEEPENTER_Field_1 :=
                        INTENSET_SLEEPENTER_Field_Reset;
      --  Write '1' to enable interrupt for event SLEEPEXIT
      SLEEPEXIT      : INTENSET_SLEEPEXIT_Field_1 :=
                        INTENSET_SLEEPEXIT_Field_Reset;
      --  Write '1' to enable interrupt for event USBDETECTED
      USBDETECTED    : INTENSET_USBDETECTED_Field_1 :=
                        INTENSET_USBDETECTED_Field_Reset;
      --  Write '1' to enable interrupt for event USBREMOVED
      USBREMOVED     : INTENSET_USBREMOVED_Field_1 :=
                        INTENSET_USBREMOVED_Field_Reset;
      --  Write '1' to enable interrupt for event USBPWRRDY
      USBPWRRDY      : INTENSET_USBPWRRDY_Field_1 :=
                        INTENSET_USBPWRRDY_Field_Reset;
      --  unspecified
      Reserved_10_31 : NRF52833_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      POFWARN        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      SLEEPENTER     at 0 range 5 .. 5;
      SLEEPEXIT      at 0 range 6 .. 6;
      USBDETECTED    at 0 range 7 .. 7;
      USBREMOVED     at 0 range 8 .. 8;
      USBPWRRDY      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Write '1' to disable interrupt for event POFWARN
   type INTENCLR_POFWARN_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_POFWARN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event POFWARN
   type INTENCLR_POFWARN_Field_1 is
     (--  Reset value for the field
      INTENCLR_POFWARN_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_POFWARN_Field_1 use
     (INTENCLR_POFWARN_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event SLEEPENTER
   type INTENCLR_SLEEPENTER_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SLEEPENTER_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event SLEEPENTER
   type INTENCLR_SLEEPENTER_Field_1 is
     (--  Reset value for the field
      INTENCLR_SLEEPENTER_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SLEEPENTER_Field_1 use
     (INTENCLR_SLEEPENTER_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event SLEEPEXIT
   type INTENCLR_SLEEPEXIT_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_SLEEPEXIT_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event SLEEPEXIT
   type INTENCLR_SLEEPEXIT_Field_1 is
     (--  Reset value for the field
      INTENCLR_SLEEPEXIT_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_SLEEPEXIT_Field_1 use
     (INTENCLR_SLEEPEXIT_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event USBDETECTED
   type INTENCLR_USBDETECTED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_USBDETECTED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event USBDETECTED
   type INTENCLR_USBDETECTED_Field_1 is
     (--  Reset value for the field
      INTENCLR_USBDETECTED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_USBDETECTED_Field_1 use
     (INTENCLR_USBDETECTED_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event USBREMOVED
   type INTENCLR_USBREMOVED_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_USBREMOVED_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event USBREMOVED
   type INTENCLR_USBREMOVED_Field_1 is
     (--  Reset value for the field
      INTENCLR_USBREMOVED_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_USBREMOVED_Field_1 use
     (INTENCLR_USBREMOVED_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event USBPWRRDY
   type INTENCLR_USBPWRRDY_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_USBPWRRDY_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event USBPWRRDY
   type INTENCLR_USBPWRRDY_Field_1 is
     (--  Reset value for the field
      INTENCLR_USBPWRRDY_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_USBPWRRDY_Field_1 use
     (INTENCLR_USBPWRRDY_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  unspecified
      Reserved_0_1   : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to disable interrupt for event POFWARN
      POFWARN        : INTENCLR_POFWARN_Field_1 :=
                        INTENCLR_POFWARN_Field_Reset;
      --  unspecified
      Reserved_3_4   : NRF52833_SVD.UInt2 := 16#0#;
      --  Write '1' to disable interrupt for event SLEEPENTER
      SLEEPENTER     : INTENCLR_SLEEPENTER_Field_1 :=
                        INTENCLR_SLEEPENTER_Field_Reset;
      --  Write '1' to disable interrupt for event SLEEPEXIT
      SLEEPEXIT      : INTENCLR_SLEEPEXIT_Field_1 :=
                        INTENCLR_SLEEPEXIT_Field_Reset;
      --  Write '1' to disable interrupt for event USBDETECTED
      USBDETECTED    : INTENCLR_USBDETECTED_Field_1 :=
                        INTENCLR_USBDETECTED_Field_Reset;
      --  Write '1' to disable interrupt for event USBREMOVED
      USBREMOVED     : INTENCLR_USBREMOVED_Field_1 :=
                        INTENCLR_USBREMOVED_Field_Reset;
      --  Write '1' to disable interrupt for event USBPWRRDY
      USBPWRRDY      : INTENCLR_USBPWRRDY_Field_1 :=
                        INTENCLR_USBPWRRDY_Field_Reset;
      --  unspecified
      Reserved_10_31 : NRF52833_SVD.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      POFWARN        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      SLEEPENTER     at 0 range 5 .. 5;
      SLEEPEXIT      at 0 range 6 .. 6;
      USBDETECTED    at 0 range 7 .. 7;
      USBREMOVED     at 0 range 8 .. 8;
      USBPWRRDY      at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  Reset from pin-reset detected
   type RESETREAS_RESETPIN_Field is
     (--  Not detected
      NotDetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_RESETPIN_Field use
     (NotDetected => 0,
      Detected => 1);

   --  Reset from watchdog detected
   type RESETREAS_DOG_Field is
     (--  Not detected
      NotDetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_DOG_Field use
     (NotDetected => 0,
      Detected => 1);

   --  Reset from soft reset detected
   type RESETREAS_SREQ_Field is
     (--  Not detected
      NotDetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_SREQ_Field use
     (NotDetected => 0,
      Detected => 1);

   --  Reset from CPU lock-up detected
   type RESETREAS_LOCKUP_Field is
     (--  Not detected
      NotDetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_LOCKUP_Field use
     (NotDetected => 0,
      Detected => 1);

   --  Reset due to wake up from System OFF mode when wakeup is triggered from
   --  DETECT signal from GPIO
   type RESETREAS_OFF_Field is
     (--  Not detected
      NotDetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_OFF_Field use
     (NotDetected => 0,
      Detected => 1);

   --  Reset due to wake up from System OFF mode when wakeup is triggered from
   --  ANADETECT signal from LPCOMP
   type RESETREAS_LPCOMP_Field is
     (--  Not detected
      NotDetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_LPCOMP_Field use
     (NotDetected => 0,
      Detected => 1);

   --  Reset due to wake up from System OFF mode when wakeup is triggered from
   --  entering into debug interface mode
   type RESETREAS_DIF_Field is
     (--  Not detected
      NotDetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_DIF_Field use
     (NotDetected => 0,
      Detected => 1);

   --  Reset due to wake up from System OFF mode by NFC field detect
   type RESETREAS_NFC_Field is
     (--  Not detected
      NotDetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_NFC_Field use
     (NotDetected => 0,
      Detected => 1);

   --  Reset due to wake up from System OFF mode by VBUS rising into valid
   --  range
   type RESETREAS_VBUS_Field is
     (--  Not detected
      NotDetected,
      --  Detected
      Detected)
     with Size => 1;
   for RESETREAS_VBUS_Field use
     (NotDetected => 0,
      Detected => 1);

   --  Reset reason
   type RESETREAS_Register is record
      --  Reset from pin-reset detected
      RESETPIN       : RESETREAS_RESETPIN_Field :=
                        NRF52833_SVD.POWER.NotDetected;
      --  Reset from watchdog detected
      DOG            : RESETREAS_DOG_Field := NRF52833_SVD.POWER.NotDetected;
      --  Reset from soft reset detected
      SREQ           : RESETREAS_SREQ_Field := NRF52833_SVD.POWER.NotDetected;
      --  Reset from CPU lock-up detected
      LOCKUP         : RESETREAS_LOCKUP_Field :=
                        NRF52833_SVD.POWER.NotDetected;
      --  unspecified
      Reserved_4_15  : NRF52833_SVD.UInt12 := 16#0#;
      --  Reset due to wake up from System OFF mode when wakeup is triggered
      --  from DETECT signal from GPIO
      OFF            : RESETREAS_OFF_Field := NRF52833_SVD.POWER.NotDetected;
      --  Reset due to wake up from System OFF mode when wakeup is triggered
      --  from ANADETECT signal from LPCOMP
      LPCOMP         : RESETREAS_LPCOMP_Field :=
                        NRF52833_SVD.POWER.NotDetected;
      --  Reset due to wake up from System OFF mode when wakeup is triggered
      --  from entering into debug interface mode
      DIF            : RESETREAS_DIF_Field := NRF52833_SVD.POWER.NotDetected;
      --  Reset due to wake up from System OFF mode by NFC field detect
      NFC            : RESETREAS_NFC_Field := NRF52833_SVD.POWER.NotDetected;
      --  Reset due to wake up from System OFF mode by VBUS rising into valid
      --  range
      VBUS           : RESETREAS_VBUS_Field := NRF52833_SVD.POWER.NotDetected;
      --  unspecified
      Reserved_21_31 : NRF52833_SVD.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RESETREAS_Register use record
      RESETPIN       at 0 range 0 .. 0;
      DOG            at 0 range 1 .. 1;
      SREQ           at 0 range 2 .. 2;
      LOCKUP         at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OFF            at 0 range 16 .. 16;
      LPCOMP         at 0 range 17 .. 17;
      DIF            at 0 range 18 .. 18;
      NFC            at 0 range 19 .. 19;
      VBUS           at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  RAM block 0 is on or off/powering up
   type RAMSTATUS_RAMBLOCK0_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for RAMSTATUS_RAMBLOCK0_Field use
     (Off => 0,
      On => 1);

   --  RAMSTATUS_RAMBLOCK array
   type RAMSTATUS_RAMBLOCK_Field_Array is array (0 .. 3)
     of RAMSTATUS_RAMBLOCK0_Field
     with Component_Size => 1, Size => 4;

   --  Type definition for RAMSTATUS_RAMBLOCK
   type RAMSTATUS_RAMBLOCK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RAMBLOCK as a value
            Val : NRF52833_SVD.UInt4;
         when True =>
            --  RAMBLOCK as an array
            Arr : RAMSTATUS_RAMBLOCK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for RAMSTATUS_RAMBLOCK_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Deprecated register - RAM status register
   type RAMSTATUS_Register is record
      --  Read-only. RAM block 0 is on or off/powering up
      RAMBLOCK      : RAMSTATUS_RAMBLOCK_Field;
      --  unspecified
      Reserved_4_31 : NRF52833_SVD.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMSTATUS_Register use record
      RAMBLOCK      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  VBUS input detection status (USBDETECTED and USBREMOVED events are
   --  derived from this information)
   type USBREGSTATUS_VBUSDETECT_Field is
     (--  VBUS voltage below valid threshold
      NoVbus,
      --  VBUS voltage above valid threshold
      VbusPresent)
     with Size => 1;
   for USBREGSTATUS_VBUSDETECT_Field use
     (NoVbus => 0,
      VbusPresent => 1);

   --  USB supply output settling time elapsed
   type USBREGSTATUS_OUTPUTRDY_Field is
     (--  USBREG output settling time not elapsed
      NotReady,
      --  USBREG output settling time elapsed (same information as USBPWRRDY event)
      Ready)
     with Size => 1;
   for USBREGSTATUS_OUTPUTRDY_Field use
     (NotReady => 0,
      Ready => 1);

   --  USB supply status
   type USBREGSTATUS_Register is record
      --  Read-only. VBUS input detection status (USBDETECTED and USBREMOVED
      --  events are derived from this information)
      VBUSDETECT    : USBREGSTATUS_VBUSDETECT_Field;
      --  Read-only. USB supply output settling time elapsed
      OUTPUTRDY     : USBREGSTATUS_OUTPUTRDY_Field;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBREGSTATUS_Register use record
      VBUSDETECT    at 0 range 0 .. 0;
      OUTPUTRDY     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Enable System OFF mode
   type SYSTEMOFF_SYSTEMOFF_Field is
     (--  Reset value for the field
      SYSTEMOFF_SYSTEMOFF_Field_Reset,
      --  Enable System OFF mode
      Enter)
     with Size => 1;
   for SYSTEMOFF_SYSTEMOFF_Field use
     (SYSTEMOFF_SYSTEMOFF_Field_Reset => 0,
      Enter => 1);

   --  System OFF register
   type SYSTEMOFF_Register is record
      --  Write-only. Enable System OFF mode
      SYSTEMOFF     : SYSTEMOFF_SYSTEMOFF_Field :=
                       SYSTEMOFF_SYSTEMOFF_Field_Reset;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYSTEMOFF_Register use record
      SYSTEMOFF     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Enable or disable power failure warning
   type POFCON_POF_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for POFCON_POF_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Power-fail comparator threshold setting. This setting applies both for
   --  normal voltage mode (supply connected to both VDD and VDDH) and high
   --  voltage mode (supply connected to VDDH only). Values 0-3 set threshold
   --  below 1.7 V and should not be used as brown out detection will be
   --  activated before power failure warning on such low voltages.
   type POFCON_THRESHOLD_Field is
     (--  Reset value for the field
      POFCON_THRESHOLD_Field_Reset,
      --  Set threshold to 1.7 V
      V17,
      --  Set threshold to 1.8 V
      V18,
      --  Set threshold to 1.9 V
      V19,
      --  Set threshold to 2.0 V
      V20,
      --  Set threshold to 2.1 V
      V21,
      --  Set threshold to 2.2 V
      V22,
      --  Set threshold to 2.3 V
      V23,
      --  Set threshold to 2.4 V
      V24,
      --  Set threshold to 2.5 V
      V25,
      --  Set threshold to 2.6 V
      V26,
      --  Set threshold to 2.7 V
      V27,
      --  Set threshold to 2.8 V
      V28)
     with Size => 4;
   for POFCON_THRESHOLD_Field use
     (POFCON_THRESHOLD_Field_Reset => 0,
      V17 => 4,
      V18 => 5,
      V19 => 6,
      V20 => 7,
      V21 => 8,
      V22 => 9,
      V23 => 10,
      V24 => 11,
      V25 => 12,
      V26 => 13,
      V27 => 14,
      V28 => 15);

   --  Power-fail comparator threshold setting for high voltage mode (supply
   --  connected to VDDH only). This setting does not apply for normal voltage
   --  mode (supply connected to both VDD and VDDH).
   type POFCON_THRESHOLDVDDH_Field is
     (--  Set threshold to 2.7 V
      V27,
      --  Set threshold to 2.8 V
      V28,
      --  Set threshold to 2.9 V
      V29,
      --  Set threshold to 3.0 V
      V30,
      --  Set threshold to 3.1 V
      V31,
      --  Set threshold to 3.2 V
      V32,
      --  Set threshold to 3.3 V
      V33,
      --  Set threshold to 3.4 V
      V34,
      --  Set threshold to 3.5 V
      V35,
      --  Set threshold to 3.6 V
      V36,
      --  Set threshold to 3.7 V
      V37,
      --  Set threshold to 3.8 V
      V38,
      --  Set threshold to 3.9 V
      V39,
      --  Set threshold to 4.0 V
      V40,
      --  Set threshold to 4.1 V
      V41,
      --  Set threshold to 4.2 V
      V42)
     with Size => 4;
   for POFCON_THRESHOLDVDDH_Field use
     (V27 => 0,
      V28 => 1,
      V29 => 2,
      V30 => 3,
      V31 => 4,
      V32 => 5,
      V33 => 6,
      V34 => 7,
      V35 => 8,
      V36 => 9,
      V37 => 10,
      V38 => 11,
      V39 => 12,
      V40 => 13,
      V41 => 14,
      V42 => 15);

   --  Power-fail comparator configuration
   type POFCON_Register is record
      --  Enable or disable power failure warning
      POF            : POFCON_POF_Field := NRF52833_SVD.POWER.Disabled;
      --  Power-fail comparator threshold setting. This setting applies both
      --  for normal voltage mode (supply connected to both VDD and VDDH) and
      --  high voltage mode (supply connected to VDDH only). Values 0-3 set
      --  threshold below 1.7 V and should not be used as brown out detection
      --  will be activated before power failure warning on such low voltages.
      THRESHOLD      : POFCON_THRESHOLD_Field := POFCON_THRESHOLD_Field_Reset;
      --  unspecified
      Reserved_5_7   : NRF52833_SVD.UInt3 := 16#0#;
      --  Power-fail comparator threshold setting for high voltage mode (supply
      --  connected to VDDH only). This setting does not apply for normal
      --  voltage mode (supply connected to both VDD and VDDH).
      THRESHOLDVDDH  : POFCON_THRESHOLDVDDH_Field := NRF52833_SVD.POWER.V27;
      --  unspecified
      Reserved_12_31 : NRF52833_SVD.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POFCON_Register use record
      POF            at 0 range 0 .. 0;
      THRESHOLD      at 0 range 1 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      THRESHOLDVDDH  at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype GPREGRET_GPREGRET_Field is NRF52833_SVD.Byte;

   --  General purpose retention register
   type GPREGRET_Register is record
      --  General purpose retention register
      GPREGRET      : GPREGRET_GPREGRET_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GPREGRET_Register use record
      GPREGRET      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Enable DC/DC converter for REG1 stage.
   type DCDCEN_DCDCEN_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for DCDCEN_DCDCEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable DC/DC converter for REG1 stage
   type DCDCEN_Register is record
      --  Enable DC/DC converter for REG1 stage.
      DCDCEN        : DCDCEN_DCDCEN_Field := NRF52833_SVD.POWER.Disabled;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCEN_Register use record
      DCDCEN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Main supply status
   type MAINREGSTATUS_MAINREGSTATUS_Field is
     (--  Normal voltage mode. Voltage supplied on VDD.
      Normal,
      --  High voltage mode. Voltage supplied on VDDH.
      High)
     with Size => 1;
   for MAINREGSTATUS_MAINREGSTATUS_Field use
     (Normal => 0,
      High => 1);

   --  Main supply status
   type MAINREGSTATUS_Register is record
      --  Read-only. Main supply status
      MAINREGSTATUS : MAINREGSTATUS_MAINREGSTATUS_Field;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAINREGSTATUS_Register use record
      MAINREGSTATUS at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------------------------
   -- POWER_RAM cluster's Registers --
   -----------------------------------

   --  Keep RAM section S0 on or off in System ON mode.
   type POWER_S0POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S0POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S1 on or off in System ON mode.
   type POWER_S1POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S1POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S2 on or off in System ON mode.
   type POWER_S2POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S2POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S3 on or off in System ON mode.
   type POWER_S3POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S3POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S4 on or off in System ON mode.
   type POWER_S4POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S4POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S5 on or off in System ON mode.
   type POWER_S5POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S5POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S6 on or off in System ON mode.
   type POWER_S6POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S6POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S7 on or off in System ON mode.
   type POWER_S7POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S7POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S8 on or off in System ON mode.
   type POWER_S8POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S8POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S9 on or off in System ON mode.
   type POWER_S9POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S9POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S10 on or off in System ON mode.
   type POWER_S10POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S10POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S11 on or off in System ON mode.
   type POWER_S11POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S11POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S12 on or off in System ON mode.
   type POWER_S12POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S12POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S13 on or off in System ON mode.
   type POWER_S13POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S13POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S14 on or off in System ON mode.
   type POWER_S14POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S14POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep RAM section S15 on or off in System ON mode.
   type POWER_S15POWER_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S15POWER_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S0 when RAM section is off
   type POWER_S0RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S0RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S1 when RAM section is off
   type POWER_S1RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S1RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S2 when RAM section is off
   type POWER_S2RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S2RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S3 when RAM section is off
   type POWER_S3RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S3RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S4 when RAM section is off
   type POWER_S4RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S4RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S5 when RAM section is off
   type POWER_S5RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S5RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S6 when RAM section is off
   type POWER_S6RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S6RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S7 when RAM section is off
   type POWER_S7RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S7RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S8 when RAM section is off
   type POWER_S8RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S8RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S9 when RAM section is off
   type POWER_S9RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S9RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S10 when RAM section is off
   type POWER_S10RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S10RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S11 when RAM section is off
   type POWER_S11RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S11RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S12 when RAM section is off
   type POWER_S12RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S12RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S13 when RAM section is off
   type POWER_S13RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S13RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S14 when RAM section is off
   type POWER_S14RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S14RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Keep retention on RAM section S15 when RAM section is off
   type POWER_S15RETENTION_Field is
     (--  Off
      Off,
      --  On
      On)
     with Size => 1;
   for POWER_S15RETENTION_Field use
     (Off => 0,
      On => 1);

   --  Description cluster: RAMn power control register
   type POWER_RAM_Register is record
      --  Keep RAM section S0 on or off in System ON mode.
      S0POWER      : POWER_S0POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S1 on or off in System ON mode.
      S1POWER      : POWER_S1POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S2 on or off in System ON mode.
      S2POWER      : POWER_S2POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S3 on or off in System ON mode.
      S3POWER      : POWER_S3POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S4 on or off in System ON mode.
      S4POWER      : POWER_S4POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S5 on or off in System ON mode.
      S5POWER      : POWER_S5POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S6 on or off in System ON mode.
      S6POWER      : POWER_S6POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S7 on or off in System ON mode.
      S7POWER      : POWER_S7POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S8 on or off in System ON mode.
      S8POWER      : POWER_S8POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S9 on or off in System ON mode.
      S9POWER      : POWER_S9POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S10 on or off in System ON mode.
      S10POWER     : POWER_S10POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S11 on or off in System ON mode.
      S11POWER     : POWER_S11POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S12 on or off in System ON mode.
      S12POWER     : POWER_S12POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S13 on or off in System ON mode.
      S13POWER     : POWER_S13POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S14 on or off in System ON mode.
      S14POWER     : POWER_S14POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep RAM section S15 on or off in System ON mode.
      S15POWER     : POWER_S15POWER_Field := NRF52833_SVD.POWER.On;
      --  Keep retention on RAM section S0 when RAM section is off
      S0RETENTION  : POWER_S0RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S1 when RAM section is off
      S1RETENTION  : POWER_S1RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S2 when RAM section is off
      S2RETENTION  : POWER_S2RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S3 when RAM section is off
      S3RETENTION  : POWER_S3RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S4 when RAM section is off
      S4RETENTION  : POWER_S4RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S5 when RAM section is off
      S5RETENTION  : POWER_S5RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S6 when RAM section is off
      S6RETENTION  : POWER_S6RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S7 when RAM section is off
      S7RETENTION  : POWER_S7RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S8 when RAM section is off
      S8RETENTION  : POWER_S8RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S9 when RAM section is off
      S9RETENTION  : POWER_S9RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S10 when RAM section is off
      S10RETENTION : POWER_S10RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S11 when RAM section is off
      S11RETENTION : POWER_S11RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S12 when RAM section is off
      S12RETENTION : POWER_S12RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S13 when RAM section is off
      S13RETENTION : POWER_S13RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S14 when RAM section is off
      S14RETENTION : POWER_S14RETENTION_Field := NRF52833_SVD.POWER.Off;
      --  Keep retention on RAM section S15 when RAM section is off
      S15RETENTION : POWER_S15RETENTION_Field := NRF52833_SVD.POWER.Off;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWER_RAM_Register use record
      S0POWER      at 0 range 0 .. 0;
      S1POWER      at 0 range 1 .. 1;
      S2POWER      at 0 range 2 .. 2;
      S3POWER      at 0 range 3 .. 3;
      S4POWER      at 0 range 4 .. 4;
      S5POWER      at 0 range 5 .. 5;
      S6POWER      at 0 range 6 .. 6;
      S7POWER      at 0 range 7 .. 7;
      S8POWER      at 0 range 8 .. 8;
      S9POWER      at 0 range 9 .. 9;
      S10POWER     at 0 range 10 .. 10;
      S11POWER     at 0 range 11 .. 11;
      S12POWER     at 0 range 12 .. 12;
      S13POWER     at 0 range 13 .. 13;
      S14POWER     at 0 range 14 .. 14;
      S15POWER     at 0 range 15 .. 15;
      S0RETENTION  at 0 range 16 .. 16;
      S1RETENTION  at 0 range 17 .. 17;
      S2RETENTION  at 0 range 18 .. 18;
      S3RETENTION  at 0 range 19 .. 19;
      S4RETENTION  at 0 range 20 .. 20;
      S5RETENTION  at 0 range 21 .. 21;
      S6RETENTION  at 0 range 22 .. 22;
      S7RETENTION  at 0 range 23 .. 23;
      S8RETENTION  at 0 range 24 .. 24;
      S9RETENTION  at 0 range 25 .. 25;
      S10RETENTION at 0 range 26 .. 26;
      S11RETENTION at 0 range 27 .. 27;
      S12RETENTION at 0 range 28 .. 28;
      S13RETENTION at 0 range 29 .. 29;
      S14RETENTION at 0 range 30 .. 30;
      S15RETENTION at 0 range 31 .. 31;
   end record;

   --  Keep RAM section S0 of RAMn on or off in System ON mode
   type POWERSET_S0POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S0POWER_Field use
     (On => 1);

   --  Keep RAM section S1 of RAMn on or off in System ON mode
   type POWERSET_S1POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S1POWER_Field use
     (On => 1);

   --  Keep RAM section S2 of RAMn on or off in System ON mode
   type POWERSET_S2POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S2POWER_Field use
     (On => 1);

   --  Keep RAM section S3 of RAMn on or off in System ON mode
   type POWERSET_S3POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S3POWER_Field use
     (On => 1);

   --  Keep RAM section S4 of RAMn on or off in System ON mode
   type POWERSET_S4POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S4POWER_Field use
     (On => 1);

   --  Keep RAM section S5 of RAMn on or off in System ON mode
   type POWERSET_S5POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S5POWER_Field use
     (On => 1);

   --  Keep RAM section S6 of RAMn on or off in System ON mode
   type POWERSET_S6POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S6POWER_Field use
     (On => 1);

   --  Keep RAM section S7 of RAMn on or off in System ON mode
   type POWERSET_S7POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S7POWER_Field use
     (On => 1);

   --  Keep RAM section S8 of RAMn on or off in System ON mode
   type POWERSET_S8POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S8POWER_Field use
     (On => 1);

   --  Keep RAM section S9 of RAMn on or off in System ON mode
   type POWERSET_S9POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S9POWER_Field use
     (On => 1);

   --  Keep RAM section S10 of RAMn on or off in System ON mode
   type POWERSET_S10POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S10POWER_Field use
     (On => 1);

   --  Keep RAM section S11 of RAMn on or off in System ON mode
   type POWERSET_S11POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S11POWER_Field use
     (On => 1);

   --  Keep RAM section S12 of RAMn on or off in System ON mode
   type POWERSET_S12POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S12POWER_Field use
     (On => 1);

   --  Keep RAM section S13 of RAMn on or off in System ON mode
   type POWERSET_S13POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S13POWER_Field use
     (On => 1);

   --  Keep RAM section S14 of RAMn on or off in System ON mode
   type POWERSET_S14POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S14POWER_Field use
     (On => 1);

   --  Keep RAM section S15 of RAMn on or off in System ON mode
   type POWERSET_S15POWER_Field is
     (--  On
      On)
     with Size => 1;
   for POWERSET_S15POWER_Field use
     (On => 1);

   --  Keep retention on RAM section S0 when RAM section is switched off
   type POWERSET_S0RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S0RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S0RETENTION_Field use
     (POWERSET_S0RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S1 when RAM section is switched off
   type POWERSET_S1RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S1RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S1RETENTION_Field use
     (POWERSET_S1RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S2 when RAM section is switched off
   type POWERSET_S2RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S2RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S2RETENTION_Field use
     (POWERSET_S2RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S3 when RAM section is switched off
   type POWERSET_S3RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S3RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S3RETENTION_Field use
     (POWERSET_S3RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S4 when RAM section is switched off
   type POWERSET_S4RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S4RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S4RETENTION_Field use
     (POWERSET_S4RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S5 when RAM section is switched off
   type POWERSET_S5RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S5RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S5RETENTION_Field use
     (POWERSET_S5RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S6 when RAM section is switched off
   type POWERSET_S6RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S6RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S6RETENTION_Field use
     (POWERSET_S6RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S7 when RAM section is switched off
   type POWERSET_S7RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S7RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S7RETENTION_Field use
     (POWERSET_S7RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S8 when RAM section is switched off
   type POWERSET_S8RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S8RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S8RETENTION_Field use
     (POWERSET_S8RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S9 when RAM section is switched off
   type POWERSET_S9RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S9RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S9RETENTION_Field use
     (POWERSET_S9RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S10 when RAM section is switched off
   type POWERSET_S10RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S10RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S10RETENTION_Field use
     (POWERSET_S10RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S11 when RAM section is switched off
   type POWERSET_S11RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S11RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S11RETENTION_Field use
     (POWERSET_S11RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S12 when RAM section is switched off
   type POWERSET_S12RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S12RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S12RETENTION_Field use
     (POWERSET_S12RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S13 when RAM section is switched off
   type POWERSET_S13RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S13RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S13RETENTION_Field use
     (POWERSET_S13RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S14 when RAM section is switched off
   type POWERSET_S14RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S14RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S14RETENTION_Field use
     (POWERSET_S14RETENTION_Field_Reset => 0,
      On => 1);

   --  Keep retention on RAM section S15 when RAM section is switched off
   type POWERSET_S15RETENTION_Field is
     (--  Reset value for the field
      POWERSET_S15RETENTION_Field_Reset,
      --  On
      On)
     with Size => 1;
   for POWERSET_S15RETENTION_Field use
     (POWERSET_S15RETENTION_Field_Reset => 0,
      On => 1);

   --  Description cluster: RAMn power control set register
   type POWERSET_RAM_Register is record
      --  Write-only. Keep RAM section S0 of RAMn on or off in System ON mode
      S0POWER      : POWERSET_S0POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S1 of RAMn on or off in System ON mode
      S1POWER      : POWERSET_S1POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S2 of RAMn on or off in System ON mode
      S2POWER      : POWERSET_S2POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S3 of RAMn on or off in System ON mode
      S3POWER      : POWERSET_S3POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S4 of RAMn on or off in System ON mode
      S4POWER      : POWERSET_S4POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S5 of RAMn on or off in System ON mode
      S5POWER      : POWERSET_S5POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S6 of RAMn on or off in System ON mode
      S6POWER      : POWERSET_S6POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S7 of RAMn on or off in System ON mode
      S7POWER      : POWERSET_S7POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S8 of RAMn on or off in System ON mode
      S8POWER      : POWERSET_S8POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S9 of RAMn on or off in System ON mode
      S9POWER      : POWERSET_S9POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S10 of RAMn on or off in System ON mode
      S10POWER     : POWERSET_S10POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S11 of RAMn on or off in System ON mode
      S11POWER     : POWERSET_S11POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S12 of RAMn on or off in System ON mode
      S12POWER     : POWERSET_S12POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S13 of RAMn on or off in System ON mode
      S13POWER     : POWERSET_S13POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S14 of RAMn on or off in System ON mode
      S14POWER     : POWERSET_S14POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep RAM section S15 of RAMn on or off in System ON mode
      S15POWER     : POWERSET_S15POWER_Field := NRF52833_SVD.POWER.On;
      --  Write-only. Keep retention on RAM section S0 when RAM section is
      --  switched off
      S0RETENTION  : POWERSET_S0RETENTION_Field :=
                      POWERSET_S0RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S1 when RAM section is
      --  switched off
      S1RETENTION  : POWERSET_S1RETENTION_Field :=
                      POWERSET_S1RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S2 when RAM section is
      --  switched off
      S2RETENTION  : POWERSET_S2RETENTION_Field :=
                      POWERSET_S2RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S3 when RAM section is
      --  switched off
      S3RETENTION  : POWERSET_S3RETENTION_Field :=
                      POWERSET_S3RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S4 when RAM section is
      --  switched off
      S4RETENTION  : POWERSET_S4RETENTION_Field :=
                      POWERSET_S4RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S5 when RAM section is
      --  switched off
      S5RETENTION  : POWERSET_S5RETENTION_Field :=
                      POWERSET_S5RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S6 when RAM section is
      --  switched off
      S6RETENTION  : POWERSET_S6RETENTION_Field :=
                      POWERSET_S6RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S7 when RAM section is
      --  switched off
      S7RETENTION  : POWERSET_S7RETENTION_Field :=
                      POWERSET_S7RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S8 when RAM section is
      --  switched off
      S8RETENTION  : POWERSET_S8RETENTION_Field :=
                      POWERSET_S8RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S9 when RAM section is
      --  switched off
      S9RETENTION  : POWERSET_S9RETENTION_Field :=
                      POWERSET_S9RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S10 when RAM section is
      --  switched off
      S10RETENTION : POWERSET_S10RETENTION_Field :=
                      POWERSET_S10RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S11 when RAM section is
      --  switched off
      S11RETENTION : POWERSET_S11RETENTION_Field :=
                      POWERSET_S11RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S12 when RAM section is
      --  switched off
      S12RETENTION : POWERSET_S12RETENTION_Field :=
                      POWERSET_S12RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S13 when RAM section is
      --  switched off
      S13RETENTION : POWERSET_S13RETENTION_Field :=
                      POWERSET_S13RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S14 when RAM section is
      --  switched off
      S14RETENTION : POWERSET_S14RETENTION_Field :=
                      POWERSET_S14RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S15 when RAM section is
      --  switched off
      S15RETENTION : POWERSET_S15RETENTION_Field :=
                      POWERSET_S15RETENTION_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWERSET_RAM_Register use record
      S0POWER      at 0 range 0 .. 0;
      S1POWER      at 0 range 1 .. 1;
      S2POWER      at 0 range 2 .. 2;
      S3POWER      at 0 range 3 .. 3;
      S4POWER      at 0 range 4 .. 4;
      S5POWER      at 0 range 5 .. 5;
      S6POWER      at 0 range 6 .. 6;
      S7POWER      at 0 range 7 .. 7;
      S8POWER      at 0 range 8 .. 8;
      S9POWER      at 0 range 9 .. 9;
      S10POWER     at 0 range 10 .. 10;
      S11POWER     at 0 range 11 .. 11;
      S12POWER     at 0 range 12 .. 12;
      S13POWER     at 0 range 13 .. 13;
      S14POWER     at 0 range 14 .. 14;
      S15POWER     at 0 range 15 .. 15;
      S0RETENTION  at 0 range 16 .. 16;
      S1RETENTION  at 0 range 17 .. 17;
      S2RETENTION  at 0 range 18 .. 18;
      S3RETENTION  at 0 range 19 .. 19;
      S4RETENTION  at 0 range 20 .. 20;
      S5RETENTION  at 0 range 21 .. 21;
      S6RETENTION  at 0 range 22 .. 22;
      S7RETENTION  at 0 range 23 .. 23;
      S8RETENTION  at 0 range 24 .. 24;
      S9RETENTION  at 0 range 25 .. 25;
      S10RETENTION at 0 range 26 .. 26;
      S11RETENTION at 0 range 27 .. 27;
      S12RETENTION at 0 range 28 .. 28;
      S13RETENTION at 0 range 29 .. 29;
      S14RETENTION at 0 range 30 .. 30;
      S15RETENTION at 0 range 31 .. 31;
   end record;

   --  Keep RAM section S0 of RAMn on or off in System ON mode
   type POWERCLR_S0POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S0POWER_Field use
     (Off => 1);

   --  Keep RAM section S1 of RAMn on or off in System ON mode
   type POWERCLR_S1POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S1POWER_Field use
     (Off => 1);

   --  Keep RAM section S2 of RAMn on or off in System ON mode
   type POWERCLR_S2POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S2POWER_Field use
     (Off => 1);

   --  Keep RAM section S3 of RAMn on or off in System ON mode
   type POWERCLR_S3POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S3POWER_Field use
     (Off => 1);

   --  Keep RAM section S4 of RAMn on or off in System ON mode
   type POWERCLR_S4POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S4POWER_Field use
     (Off => 1);

   --  Keep RAM section S5 of RAMn on or off in System ON mode
   type POWERCLR_S5POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S5POWER_Field use
     (Off => 1);

   --  Keep RAM section S6 of RAMn on or off in System ON mode
   type POWERCLR_S6POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S6POWER_Field use
     (Off => 1);

   --  Keep RAM section S7 of RAMn on or off in System ON mode
   type POWERCLR_S7POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S7POWER_Field use
     (Off => 1);

   --  Keep RAM section S8 of RAMn on or off in System ON mode
   type POWERCLR_S8POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S8POWER_Field use
     (Off => 1);

   --  Keep RAM section S9 of RAMn on or off in System ON mode
   type POWERCLR_S9POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S9POWER_Field use
     (Off => 1);

   --  Keep RAM section S10 of RAMn on or off in System ON mode
   type POWERCLR_S10POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S10POWER_Field use
     (Off => 1);

   --  Keep RAM section S11 of RAMn on or off in System ON mode
   type POWERCLR_S11POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S11POWER_Field use
     (Off => 1);

   --  Keep RAM section S12 of RAMn on or off in System ON mode
   type POWERCLR_S12POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S12POWER_Field use
     (Off => 1);

   --  Keep RAM section S13 of RAMn on or off in System ON mode
   type POWERCLR_S13POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S13POWER_Field use
     (Off => 1);

   --  Keep RAM section S14 of RAMn on or off in System ON mode
   type POWERCLR_S14POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S14POWER_Field use
     (Off => 1);

   --  Keep RAM section S15 of RAMn on or off in System ON mode
   type POWERCLR_S15POWER_Field is
     (--  Off
      Off)
     with Size => 1;
   for POWERCLR_S15POWER_Field use
     (Off => 1);

   --  Keep retention on RAM section S0 when RAM section is switched off
   type POWERCLR_S0RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S0RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S0RETENTION_Field use
     (POWERCLR_S0RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S1 when RAM section is switched off
   type POWERCLR_S1RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S1RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S1RETENTION_Field use
     (POWERCLR_S1RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S2 when RAM section is switched off
   type POWERCLR_S2RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S2RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S2RETENTION_Field use
     (POWERCLR_S2RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S3 when RAM section is switched off
   type POWERCLR_S3RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S3RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S3RETENTION_Field use
     (POWERCLR_S3RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S4 when RAM section is switched off
   type POWERCLR_S4RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S4RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S4RETENTION_Field use
     (POWERCLR_S4RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S5 when RAM section is switched off
   type POWERCLR_S5RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S5RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S5RETENTION_Field use
     (POWERCLR_S5RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S6 when RAM section is switched off
   type POWERCLR_S6RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S6RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S6RETENTION_Field use
     (POWERCLR_S6RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S7 when RAM section is switched off
   type POWERCLR_S7RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S7RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S7RETENTION_Field use
     (POWERCLR_S7RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S8 when RAM section is switched off
   type POWERCLR_S8RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S8RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S8RETENTION_Field use
     (POWERCLR_S8RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S9 when RAM section is switched off
   type POWERCLR_S9RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S9RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S9RETENTION_Field use
     (POWERCLR_S9RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S10 when RAM section is switched off
   type POWERCLR_S10RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S10RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S10RETENTION_Field use
     (POWERCLR_S10RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S11 when RAM section is switched off
   type POWERCLR_S11RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S11RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S11RETENTION_Field use
     (POWERCLR_S11RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S12 when RAM section is switched off
   type POWERCLR_S12RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S12RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S12RETENTION_Field use
     (POWERCLR_S12RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S13 when RAM section is switched off
   type POWERCLR_S13RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S13RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S13RETENTION_Field use
     (POWERCLR_S13RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S14 when RAM section is switched off
   type POWERCLR_S14RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S14RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S14RETENTION_Field use
     (POWERCLR_S14RETENTION_Field_Reset => 0,
      Off => 1);

   --  Keep retention on RAM section S15 when RAM section is switched off
   type POWERCLR_S15RETENTION_Field is
     (--  Reset value for the field
      POWERCLR_S15RETENTION_Field_Reset,
      --  Off
      Off)
     with Size => 1;
   for POWERCLR_S15RETENTION_Field use
     (POWERCLR_S15RETENTION_Field_Reset => 0,
      Off => 1);

   --  Description cluster: RAMn power control clear register
   type POWERCLR_RAM_Register is record
      --  Write-only. Keep RAM section S0 of RAMn on or off in System ON mode
      S0POWER      : POWERCLR_S0POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S1 of RAMn on or off in System ON mode
      S1POWER      : POWERCLR_S1POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S2 of RAMn on or off in System ON mode
      S2POWER      : POWERCLR_S2POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S3 of RAMn on or off in System ON mode
      S3POWER      : POWERCLR_S3POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S4 of RAMn on or off in System ON mode
      S4POWER      : POWERCLR_S4POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S5 of RAMn on or off in System ON mode
      S5POWER      : POWERCLR_S5POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S6 of RAMn on or off in System ON mode
      S6POWER      : POWERCLR_S6POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S7 of RAMn on or off in System ON mode
      S7POWER      : POWERCLR_S7POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S8 of RAMn on or off in System ON mode
      S8POWER      : POWERCLR_S8POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S9 of RAMn on or off in System ON mode
      S9POWER      : POWERCLR_S9POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S10 of RAMn on or off in System ON mode
      S10POWER     : POWERCLR_S10POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S11 of RAMn on or off in System ON mode
      S11POWER     : POWERCLR_S11POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S12 of RAMn on or off in System ON mode
      S12POWER     : POWERCLR_S12POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S13 of RAMn on or off in System ON mode
      S13POWER     : POWERCLR_S13POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S14 of RAMn on or off in System ON mode
      S14POWER     : POWERCLR_S14POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep RAM section S15 of RAMn on or off in System ON mode
      S15POWER     : POWERCLR_S15POWER_Field := NRF52833_SVD.POWER.Off;
      --  Write-only. Keep retention on RAM section S0 when RAM section is
      --  switched off
      S0RETENTION  : POWERCLR_S0RETENTION_Field :=
                      POWERCLR_S0RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S1 when RAM section is
      --  switched off
      S1RETENTION  : POWERCLR_S1RETENTION_Field :=
                      POWERCLR_S1RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S2 when RAM section is
      --  switched off
      S2RETENTION  : POWERCLR_S2RETENTION_Field :=
                      POWERCLR_S2RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S3 when RAM section is
      --  switched off
      S3RETENTION  : POWERCLR_S3RETENTION_Field :=
                      POWERCLR_S3RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S4 when RAM section is
      --  switched off
      S4RETENTION  : POWERCLR_S4RETENTION_Field :=
                      POWERCLR_S4RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S5 when RAM section is
      --  switched off
      S5RETENTION  : POWERCLR_S5RETENTION_Field :=
                      POWERCLR_S5RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S6 when RAM section is
      --  switched off
      S6RETENTION  : POWERCLR_S6RETENTION_Field :=
                      POWERCLR_S6RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S7 when RAM section is
      --  switched off
      S7RETENTION  : POWERCLR_S7RETENTION_Field :=
                      POWERCLR_S7RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S8 when RAM section is
      --  switched off
      S8RETENTION  : POWERCLR_S8RETENTION_Field :=
                      POWERCLR_S8RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S9 when RAM section is
      --  switched off
      S9RETENTION  : POWERCLR_S9RETENTION_Field :=
                      POWERCLR_S9RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S10 when RAM section is
      --  switched off
      S10RETENTION : POWERCLR_S10RETENTION_Field :=
                      POWERCLR_S10RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S11 when RAM section is
      --  switched off
      S11RETENTION : POWERCLR_S11RETENTION_Field :=
                      POWERCLR_S11RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S12 when RAM section is
      --  switched off
      S12RETENTION : POWERCLR_S12RETENTION_Field :=
                      POWERCLR_S12RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S13 when RAM section is
      --  switched off
      S13RETENTION : POWERCLR_S13RETENTION_Field :=
                      POWERCLR_S13RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S14 when RAM section is
      --  switched off
      S14RETENTION : POWERCLR_S14RETENTION_Field :=
                      POWERCLR_S14RETENTION_Field_Reset;
      --  Write-only. Keep retention on RAM section S15 when RAM section is
      --  switched off
      S15RETENTION : POWERCLR_S15RETENTION_Field :=
                      POWERCLR_S15RETENTION_Field_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWERCLR_RAM_Register use record
      S0POWER      at 0 range 0 .. 0;
      S1POWER      at 0 range 1 .. 1;
      S2POWER      at 0 range 2 .. 2;
      S3POWER      at 0 range 3 .. 3;
      S4POWER      at 0 range 4 .. 4;
      S5POWER      at 0 range 5 .. 5;
      S6POWER      at 0 range 6 .. 6;
      S7POWER      at 0 range 7 .. 7;
      S8POWER      at 0 range 8 .. 8;
      S9POWER      at 0 range 9 .. 9;
      S10POWER     at 0 range 10 .. 10;
      S11POWER     at 0 range 11 .. 11;
      S12POWER     at 0 range 12 .. 12;
      S13POWER     at 0 range 13 .. 13;
      S14POWER     at 0 range 14 .. 14;
      S15POWER     at 0 range 15 .. 15;
      S0RETENTION  at 0 range 16 .. 16;
      S1RETENTION  at 0 range 17 .. 17;
      S2RETENTION  at 0 range 18 .. 18;
      S3RETENTION  at 0 range 19 .. 19;
      S4RETENTION  at 0 range 20 .. 20;
      S5RETENTION  at 0 range 21 .. 21;
      S6RETENTION  at 0 range 22 .. 22;
      S7RETENTION  at 0 range 23 .. 23;
      S8RETENTION  at 0 range 24 .. 24;
      S9RETENTION  at 0 range 25 .. 25;
      S10RETENTION at 0 range 26 .. 26;
      S11RETENTION at 0 range 27 .. 27;
      S12RETENTION at 0 range 28 .. 28;
      S13RETENTION at 0 range 29 .. 29;
      S14RETENTION at 0 range 30 .. 30;
      S15RETENTION at 0 range 31 .. 31;
   end record;

   --  Unspecified
   type POWER_RAM_Cluster is record
      --  Description cluster: RAMn power control register
      POWER    : aliased POWER_RAM_Register;
      --  Description cluster: RAMn power control set register
      POWERSET : aliased POWERSET_RAM_Register;
      --  Description cluster: RAMn power control clear register
      POWERCLR : aliased POWERCLR_RAM_Register;
   end record
     with Size => 128;

   for POWER_RAM_Cluster use record
      POWER    at 16#0# range 0 .. 31;
      POWERSET at 16#4# range 0 .. 31;
      POWERCLR at 16#8# range 0 .. 31;
   end record;

   --  Unspecified
   type POWER_RAM_Clusters is array (0 .. 8) of POWER_RAM_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Power control
   type POWER_Peripheral is record
      --  Enable Constant Latency mode
      TASKS_CONSTLAT     : aliased TASKS_CONSTLAT_Register;
      --  Enable Low-power mode (variable latency)
      TASKS_LOWPWR       : aliased TASKS_LOWPWR_Register;
      --  Power failure warning
      EVENTS_POFWARN     : aliased EVENTS_POFWARN_Register;
      --  CPU entered WFI/WFE sleep
      EVENTS_SLEEPENTER  : aliased EVENTS_SLEEPENTER_Register;
      --  CPU exited WFI/WFE sleep
      EVENTS_SLEEPEXIT   : aliased EVENTS_SLEEPEXIT_Register;
      --  Voltage supply detected on VBUS
      EVENTS_USBDETECTED : aliased EVENTS_USBDETECTED_Register;
      --  Voltage supply removed from VBUS
      EVENTS_USBREMOVED  : aliased EVENTS_USBREMOVED_Register;
      --  USB 3.3 V supply ready
      EVENTS_USBPWRRDY   : aliased EVENTS_USBPWRRDY_Register;
      --  Enable interrupt
      INTENSET           : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR           : aliased INTENCLR_Register;
      --  Reset reason
      RESETREAS          : aliased RESETREAS_Register;
      --  Deprecated register - RAM status register
      RAMSTATUS          : aliased RAMSTATUS_Register;
      --  USB supply status
      USBREGSTATUS       : aliased USBREGSTATUS_Register;
      --  System OFF register
      SYSTEMOFF          : aliased SYSTEMOFF_Register;
      --  Power-fail comparator configuration
      POFCON             : aliased POFCON_Register;
      --  General purpose retention register
      GPREGRET           : aliased GPREGRET_Register;
      --  General purpose retention register
      GPREGRET2          : aliased GPREGRET_Register;
      --  Enable DC/DC converter for REG1 stage
      DCDCEN             : aliased DCDCEN_Register;
      --  Main supply status
      MAINREGSTATUS      : aliased MAINREGSTATUS_Register;
      --  Unspecified
      RAM                : aliased POWER_RAM_Clusters;
   end record
     with Volatile;

   for POWER_Peripheral use record
      TASKS_CONSTLAT     at 16#78# range 0 .. 31;
      TASKS_LOWPWR       at 16#7C# range 0 .. 31;
      EVENTS_POFWARN     at 16#108# range 0 .. 31;
      EVENTS_SLEEPENTER  at 16#114# range 0 .. 31;
      EVENTS_SLEEPEXIT   at 16#118# range 0 .. 31;
      EVENTS_USBDETECTED at 16#11C# range 0 .. 31;
      EVENTS_USBREMOVED  at 16#120# range 0 .. 31;
      EVENTS_USBPWRRDY   at 16#124# range 0 .. 31;
      INTENSET           at 16#304# range 0 .. 31;
      INTENCLR           at 16#308# range 0 .. 31;
      RESETREAS          at 16#400# range 0 .. 31;
      RAMSTATUS          at 16#428# range 0 .. 31;
      USBREGSTATUS       at 16#438# range 0 .. 31;
      SYSTEMOFF          at 16#500# range 0 .. 31;
      POFCON             at 16#510# range 0 .. 31;
      GPREGRET           at 16#51C# range 0 .. 31;
      GPREGRET2          at 16#520# range 0 .. 31;
      DCDCEN             at 16#578# range 0 .. 31;
      MAINREGSTATUS      at 16#640# range 0 .. 31;
      RAM                at 16#900# range 0 .. 1151;
   end record;

   --  Power control
   POWER_Periph : aliased POWER_Peripheral
     with Import, Address => POWER_Base;

end NRF52833_SVD.POWER;
