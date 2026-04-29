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

package NRF52833_SVD.MWU is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   -------------------------------------------
   -- MWU_EVENTS_REGION cluster's Registers --
   -------------------------------------------

   --  Write access to region n detected
   type WA_WA_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for WA_WA_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Description cluster: Write access to region n detected
   type WA_EVENTS_REGION_Register is record
      --  Write access to region n detected
      WA            : WA_WA_Field := NRF52833_SVD.MWU.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WA_EVENTS_REGION_Register use record
      WA            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Read access to region n detected
   type RA_RA_Field is
     (--  Event not generated
      NotGenerated,
      --  Event generated
      Generated)
     with Size => 1;
   for RA_RA_Field use
     (NotGenerated => 0,
      Generated => 1);

   --  Description cluster: Read access to region n detected
   type RA_EVENTS_REGION_Register is record
      --  Read access to region n detected
      RA            : RA_RA_Field := NRF52833_SVD.MWU.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RA_EVENTS_REGION_Register use record
      RA            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Peripheral events.
   type MWU_EVENTS_REGION_Cluster is record
      --  Description cluster: Write access to region n detected
      WA : aliased WA_EVENTS_REGION_Register;
      --  Description cluster: Read access to region n detected
      RA : aliased RA_EVENTS_REGION_Register;
   end record
     with Size => 64;

   for MWU_EVENTS_REGION_Cluster use record
      WA at 16#0# range 0 .. 31;
      RA at 16#4# range 0 .. 31;
   end record;

   --  Peripheral events.
   type MWU_EVENTS_REGION_Clusters is array (0 .. 3)
     of MWU_EVENTS_REGION_Cluster;

   --------------------------------------------
   -- MWU_EVENTS_PREGION cluster's Registers --
   --------------------------------------------

   --  Description cluster: Write access to peripheral region n detected
   type WA_EVENTS_PREGION_Register is record
      --  Write access to peripheral region n detected
      WA            : WA_WA_Field := NRF52833_SVD.MWU.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WA_EVENTS_PREGION_Register use record
      WA            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Description cluster: Read access to peripheral region n detected
   type RA_EVENTS_PREGION_Register is record
      --  Read access to peripheral region n detected
      RA            : RA_RA_Field := NRF52833_SVD.MWU.NotGenerated;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RA_EVENTS_PREGION_Register use record
      RA            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Peripheral events.
   type MWU_EVENTS_PREGION_Cluster is record
      --  Description cluster: Write access to peripheral region n detected
      WA : aliased WA_EVENTS_PREGION_Register;
      --  Description cluster: Read access to peripheral region n detected
      RA : aliased RA_EVENTS_PREGION_Register;
   end record
     with Size => 64;

   for MWU_EVENTS_PREGION_Cluster use record
      WA at 16#0# range 0 .. 31;
      RA at 16#4# range 0 .. 31;
   end record;

   --  Peripheral events.
   type MWU_EVENTS_PREGION_Clusters is array (0 .. 1)
     of MWU_EVENTS_PREGION_Cluster;

   --  Enable or disable interrupt for event REGION0WA
   type INTEN_REGION0WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_REGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION0RA
   type INTEN_REGION0RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_REGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION1WA
   type INTEN_REGION1WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_REGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION1RA
   type INTEN_REGION1RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_REGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION2WA
   type INTEN_REGION2WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_REGION2WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION2RA
   type INTEN_REGION2RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_REGION2RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION3WA
   type INTEN_REGION3WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_REGION3WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION3RA
   type INTEN_REGION3RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_REGION3RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event PREGION0WA
   type INTEN_PREGION0WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_PREGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event PREGION0RA
   type INTEN_PREGION0RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_PREGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event PREGION1WA
   type INTEN_PREGION1WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_PREGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event PREGION1RA
   type INTEN_PREGION1RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for INTEN_PREGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type INTEN_Register is record
      --  Enable or disable interrupt for event REGION0WA
      REGION0WA      : INTEN_REGION0WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION0RA
      REGION0RA      : INTEN_REGION0RA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION1WA
      REGION1WA      : INTEN_REGION1WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION1RA
      REGION1RA      : INTEN_REGION1RA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION2WA
      REGION2WA      : INTEN_REGION2WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION2RA
      REGION2RA      : INTEN_REGION2RA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION3WA
      REGION3WA      : INTEN_REGION3WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION3RA
      REGION3RA      : INTEN_REGION3RA_Field := NRF52833_SVD.MWU.Disabled;
      --  unspecified
      Reserved_8_23  : NRF52833_SVD.UInt16 := 16#0#;
      --  Enable or disable interrupt for event PREGION0WA
      PREGION0WA     : INTEN_PREGION0WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event PREGION0RA
      PREGION0RA     : INTEN_PREGION0RA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event PREGION1WA
      PREGION1WA     : INTEN_PREGION1WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event PREGION1RA
      PREGION1RA     : INTEN_PREGION1RA_Field := NRF52833_SVD.MWU.Disabled;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTEN_Register use record
      REGION0WA      at 0 range 0 .. 0;
      REGION0RA      at 0 range 1 .. 1;
      REGION1WA      at 0 range 2 .. 2;
      REGION1RA      at 0 range 3 .. 3;
      REGION2WA      at 0 range 4 .. 4;
      REGION2RA      at 0 range 5 .. 5;
      REGION3WA      at 0 range 6 .. 6;
      REGION3RA      at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      PREGION0WA     at 0 range 24 .. 24;
      PREGION0RA     at 0 range 25 .. 25;
      PREGION1WA     at 0 range 26 .. 26;
      PREGION1RA     at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Write '1' to enable interrupt for event REGION0WA
   type INTENSET_REGION0WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_REGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION0WA
   type INTENSET_REGION0WA_Field_1 is
     (--  Reset value for the field
      INTENSET_REGION0WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_REGION0WA_Field_1 use
     (INTENSET_REGION0WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION0RA
   type INTENSET_REGION0RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_REGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION0RA
   type INTENSET_REGION0RA_Field_1 is
     (--  Reset value for the field
      INTENSET_REGION0RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_REGION0RA_Field_1 use
     (INTENSET_REGION0RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION1WA
   type INTENSET_REGION1WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_REGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION1WA
   type INTENSET_REGION1WA_Field_1 is
     (--  Reset value for the field
      INTENSET_REGION1WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_REGION1WA_Field_1 use
     (INTENSET_REGION1WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION1RA
   type INTENSET_REGION1RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_REGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION1RA
   type INTENSET_REGION1RA_Field_1 is
     (--  Reset value for the field
      INTENSET_REGION1RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_REGION1RA_Field_1 use
     (INTENSET_REGION1RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION2WA
   type INTENSET_REGION2WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_REGION2WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION2WA
   type INTENSET_REGION2WA_Field_1 is
     (--  Reset value for the field
      INTENSET_REGION2WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_REGION2WA_Field_1 use
     (INTENSET_REGION2WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION2RA
   type INTENSET_REGION2RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_REGION2RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION2RA
   type INTENSET_REGION2RA_Field_1 is
     (--  Reset value for the field
      INTENSET_REGION2RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_REGION2RA_Field_1 use
     (INTENSET_REGION2RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION3WA
   type INTENSET_REGION3WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_REGION3WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION3WA
   type INTENSET_REGION3WA_Field_1 is
     (--  Reset value for the field
      INTENSET_REGION3WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_REGION3WA_Field_1 use
     (INTENSET_REGION3WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION3RA
   type INTENSET_REGION3RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_REGION3RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION3RA
   type INTENSET_REGION3RA_Field_1 is
     (--  Reset value for the field
      INTENSET_REGION3RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_REGION3RA_Field_1 use
     (INTENSET_REGION3RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PREGION0WA
   type INTENSET_PREGION0WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_PREGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PREGION0WA
   type INTENSET_PREGION0WA_Field_1 is
     (--  Reset value for the field
      INTENSET_PREGION0WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_PREGION0WA_Field_1 use
     (INTENSET_PREGION0WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PREGION0RA
   type INTENSET_PREGION0RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_PREGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PREGION0RA
   type INTENSET_PREGION0RA_Field_1 is
     (--  Reset value for the field
      INTENSET_PREGION0RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_PREGION0RA_Field_1 use
     (INTENSET_PREGION0RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PREGION1WA
   type INTENSET_PREGION1WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_PREGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PREGION1WA
   type INTENSET_PREGION1WA_Field_1 is
     (--  Reset value for the field
      INTENSET_PREGION1WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_PREGION1WA_Field_1 use
     (INTENSET_PREGION1WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PREGION1RA
   type INTENSET_PREGION1RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENSET_PREGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PREGION1RA
   type INTENSET_PREGION1RA_Field_1 is
     (--  Reset value for the field
      INTENSET_PREGION1RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for INTENSET_PREGION1RA_Field_1 use
     (INTENSET_PREGION1RA_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type INTENSET_Register is record
      --  Write '1' to enable interrupt for event REGION0WA
      REGION0WA      : INTENSET_REGION0WA_Field_1 :=
                        INTENSET_REGION0WA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION0RA
      REGION0RA      : INTENSET_REGION0RA_Field_1 :=
                        INTENSET_REGION0RA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION1WA
      REGION1WA      : INTENSET_REGION1WA_Field_1 :=
                        INTENSET_REGION1WA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION1RA
      REGION1RA      : INTENSET_REGION1RA_Field_1 :=
                        INTENSET_REGION1RA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION2WA
      REGION2WA      : INTENSET_REGION2WA_Field_1 :=
                        INTENSET_REGION2WA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION2RA
      REGION2RA      : INTENSET_REGION2RA_Field_1 :=
                        INTENSET_REGION2RA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION3WA
      REGION3WA      : INTENSET_REGION3WA_Field_1 :=
                        INTENSET_REGION3WA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION3RA
      REGION3RA      : INTENSET_REGION3RA_Field_1 :=
                        INTENSET_REGION3RA_Field_Reset;
      --  unspecified
      Reserved_8_23  : NRF52833_SVD.UInt16 := 16#0#;
      --  Write '1' to enable interrupt for event PREGION0WA
      PREGION0WA     : INTENSET_PREGION0WA_Field_1 :=
                        INTENSET_PREGION0WA_Field_Reset;
      --  Write '1' to enable interrupt for event PREGION0RA
      PREGION0RA     : INTENSET_PREGION0RA_Field_1 :=
                        INTENSET_PREGION0RA_Field_Reset;
      --  Write '1' to enable interrupt for event PREGION1WA
      PREGION1WA     : INTENSET_PREGION1WA_Field_1 :=
                        INTENSET_PREGION1WA_Field_Reset;
      --  Write '1' to enable interrupt for event PREGION1RA
      PREGION1RA     : INTENSET_PREGION1RA_Field_1 :=
                        INTENSET_PREGION1RA_Field_Reset;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENSET_Register use record
      REGION0WA      at 0 range 0 .. 0;
      REGION0RA      at 0 range 1 .. 1;
      REGION1WA      at 0 range 2 .. 2;
      REGION1RA      at 0 range 3 .. 3;
      REGION2WA      at 0 range 4 .. 4;
      REGION2RA      at 0 range 5 .. 5;
      REGION3WA      at 0 range 6 .. 6;
      REGION3RA      at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      PREGION0WA     at 0 range 24 .. 24;
      PREGION0RA     at 0 range 25 .. 25;
      PREGION1WA     at 0 range 26 .. 26;
      PREGION1RA     at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Write '1' to disable interrupt for event REGION0WA
   type INTENCLR_REGION0WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_REGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION0WA
   type INTENCLR_REGION0WA_Field_1 is
     (--  Reset value for the field
      INTENCLR_REGION0WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_REGION0WA_Field_1 use
     (INTENCLR_REGION0WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION0RA
   type INTENCLR_REGION0RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_REGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION0RA
   type INTENCLR_REGION0RA_Field_1 is
     (--  Reset value for the field
      INTENCLR_REGION0RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_REGION0RA_Field_1 use
     (INTENCLR_REGION0RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION1WA
   type INTENCLR_REGION1WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_REGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION1WA
   type INTENCLR_REGION1WA_Field_1 is
     (--  Reset value for the field
      INTENCLR_REGION1WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_REGION1WA_Field_1 use
     (INTENCLR_REGION1WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION1RA
   type INTENCLR_REGION1RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_REGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION1RA
   type INTENCLR_REGION1RA_Field_1 is
     (--  Reset value for the field
      INTENCLR_REGION1RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_REGION1RA_Field_1 use
     (INTENCLR_REGION1RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION2WA
   type INTENCLR_REGION2WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_REGION2WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION2WA
   type INTENCLR_REGION2WA_Field_1 is
     (--  Reset value for the field
      INTENCLR_REGION2WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_REGION2WA_Field_1 use
     (INTENCLR_REGION2WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION2RA
   type INTENCLR_REGION2RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_REGION2RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION2RA
   type INTENCLR_REGION2RA_Field_1 is
     (--  Reset value for the field
      INTENCLR_REGION2RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_REGION2RA_Field_1 use
     (INTENCLR_REGION2RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION3WA
   type INTENCLR_REGION3WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_REGION3WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION3WA
   type INTENCLR_REGION3WA_Field_1 is
     (--  Reset value for the field
      INTENCLR_REGION3WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_REGION3WA_Field_1 use
     (INTENCLR_REGION3WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION3RA
   type INTENCLR_REGION3RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_REGION3RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION3RA
   type INTENCLR_REGION3RA_Field_1 is
     (--  Reset value for the field
      INTENCLR_REGION3RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_REGION3RA_Field_1 use
     (INTENCLR_REGION3RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PREGION0WA
   type INTENCLR_PREGION0WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_PREGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PREGION0WA
   type INTENCLR_PREGION0WA_Field_1 is
     (--  Reset value for the field
      INTENCLR_PREGION0WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_PREGION0WA_Field_1 use
     (INTENCLR_PREGION0WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PREGION0RA
   type INTENCLR_PREGION0RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_PREGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PREGION0RA
   type INTENCLR_PREGION0RA_Field_1 is
     (--  Reset value for the field
      INTENCLR_PREGION0RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_PREGION0RA_Field_1 use
     (INTENCLR_PREGION0RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PREGION1WA
   type INTENCLR_PREGION1WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_PREGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PREGION1WA
   type INTENCLR_PREGION1WA_Field_1 is
     (--  Reset value for the field
      INTENCLR_PREGION1WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_PREGION1WA_Field_1 use
     (INTENCLR_PREGION1WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PREGION1RA
   type INTENCLR_PREGION1RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for INTENCLR_PREGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PREGION1RA
   type INTENCLR_PREGION1RA_Field_1 is
     (--  Reset value for the field
      INTENCLR_PREGION1RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for INTENCLR_PREGION1RA_Field_1 use
     (INTENCLR_PREGION1RA_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type INTENCLR_Register is record
      --  Write '1' to disable interrupt for event REGION0WA
      REGION0WA      : INTENCLR_REGION0WA_Field_1 :=
                        INTENCLR_REGION0WA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION0RA
      REGION0RA      : INTENCLR_REGION0RA_Field_1 :=
                        INTENCLR_REGION0RA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION1WA
      REGION1WA      : INTENCLR_REGION1WA_Field_1 :=
                        INTENCLR_REGION1WA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION1RA
      REGION1RA      : INTENCLR_REGION1RA_Field_1 :=
                        INTENCLR_REGION1RA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION2WA
      REGION2WA      : INTENCLR_REGION2WA_Field_1 :=
                        INTENCLR_REGION2WA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION2RA
      REGION2RA      : INTENCLR_REGION2RA_Field_1 :=
                        INTENCLR_REGION2RA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION3WA
      REGION3WA      : INTENCLR_REGION3WA_Field_1 :=
                        INTENCLR_REGION3WA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION3RA
      REGION3RA      : INTENCLR_REGION3RA_Field_1 :=
                        INTENCLR_REGION3RA_Field_Reset;
      --  unspecified
      Reserved_8_23  : NRF52833_SVD.UInt16 := 16#0#;
      --  Write '1' to disable interrupt for event PREGION0WA
      PREGION0WA     : INTENCLR_PREGION0WA_Field_1 :=
                        INTENCLR_PREGION0WA_Field_Reset;
      --  Write '1' to disable interrupt for event PREGION0RA
      PREGION0RA     : INTENCLR_PREGION0RA_Field_1 :=
                        INTENCLR_PREGION0RA_Field_Reset;
      --  Write '1' to disable interrupt for event PREGION1WA
      PREGION1WA     : INTENCLR_PREGION1WA_Field_1 :=
                        INTENCLR_PREGION1WA_Field_Reset;
      --  Write '1' to disable interrupt for event PREGION1RA
      PREGION1RA     : INTENCLR_PREGION1RA_Field_1 :=
                        INTENCLR_PREGION1RA_Field_Reset;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTENCLR_Register use record
      REGION0WA      at 0 range 0 .. 0;
      REGION0RA      at 0 range 1 .. 1;
      REGION1WA      at 0 range 2 .. 2;
      REGION1RA      at 0 range 3 .. 3;
      REGION2WA      at 0 range 4 .. 4;
      REGION2RA      at 0 range 5 .. 5;
      REGION3WA      at 0 range 6 .. 6;
      REGION3RA      at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      PREGION0WA     at 0 range 24 .. 24;
      PREGION0RA     at 0 range 25 .. 25;
      PREGION1WA     at 0 range 26 .. 26;
      PREGION1RA     at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Enable or disable interrupt for event REGION0WA
   type NMIEN_REGION0WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_REGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION0RA
   type NMIEN_REGION0RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_REGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION1WA
   type NMIEN_REGION1WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_REGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION1RA
   type NMIEN_REGION1RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_REGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION2WA
   type NMIEN_REGION2WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_REGION2WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION2RA
   type NMIEN_REGION2RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_REGION2RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION3WA
   type NMIEN_REGION3WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_REGION3WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event REGION3RA
   type NMIEN_REGION3RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_REGION3RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event PREGION0WA
   type NMIEN_PREGION0WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_PREGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event PREGION0RA
   type NMIEN_PREGION0RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_PREGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event PREGION1WA
   type NMIEN_PREGION1WA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_PREGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt for event PREGION1RA
   type NMIEN_PREGION1RA_Field is
     (--  Disable
      Disabled,
      --  Enable
      Enabled)
     with Size => 1;
   for NMIEN_PREGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable or disable interrupt
   type NMIEN_Register is record
      --  Enable or disable interrupt for event REGION0WA
      REGION0WA      : NMIEN_REGION0WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION0RA
      REGION0RA      : NMIEN_REGION0RA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION1WA
      REGION1WA      : NMIEN_REGION1WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION1RA
      REGION1RA      : NMIEN_REGION1RA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION2WA
      REGION2WA      : NMIEN_REGION2WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION2RA
      REGION2RA      : NMIEN_REGION2RA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION3WA
      REGION3WA      : NMIEN_REGION3WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event REGION3RA
      REGION3RA      : NMIEN_REGION3RA_Field := NRF52833_SVD.MWU.Disabled;
      --  unspecified
      Reserved_8_23  : NRF52833_SVD.UInt16 := 16#0#;
      --  Enable or disable interrupt for event PREGION0WA
      PREGION0WA     : NMIEN_PREGION0WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event PREGION0RA
      PREGION0RA     : NMIEN_PREGION0RA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event PREGION1WA
      PREGION1WA     : NMIEN_PREGION1WA_Field := NRF52833_SVD.MWU.Disabled;
      --  Enable or disable interrupt for event PREGION1RA
      PREGION1RA     : NMIEN_PREGION1RA_Field := NRF52833_SVD.MWU.Disabled;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIEN_Register use record
      REGION0WA      at 0 range 0 .. 0;
      REGION0RA      at 0 range 1 .. 1;
      REGION1WA      at 0 range 2 .. 2;
      REGION1RA      at 0 range 3 .. 3;
      REGION2WA      at 0 range 4 .. 4;
      REGION2RA      at 0 range 5 .. 5;
      REGION3WA      at 0 range 6 .. 6;
      REGION3RA      at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      PREGION0WA     at 0 range 24 .. 24;
      PREGION0RA     at 0 range 25 .. 25;
      PREGION1WA     at 0 range 26 .. 26;
      PREGION1RA     at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Write '1' to enable interrupt for event REGION0WA
   type NMIENSET_REGION0WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_REGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION0WA
   type NMIENSET_REGION0WA_Field_1 is
     (--  Reset value for the field
      NMIENSET_REGION0WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_REGION0WA_Field_1 use
     (NMIENSET_REGION0WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION0RA
   type NMIENSET_REGION0RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_REGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION0RA
   type NMIENSET_REGION0RA_Field_1 is
     (--  Reset value for the field
      NMIENSET_REGION0RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_REGION0RA_Field_1 use
     (NMIENSET_REGION0RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION1WA
   type NMIENSET_REGION1WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_REGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION1WA
   type NMIENSET_REGION1WA_Field_1 is
     (--  Reset value for the field
      NMIENSET_REGION1WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_REGION1WA_Field_1 use
     (NMIENSET_REGION1WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION1RA
   type NMIENSET_REGION1RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_REGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION1RA
   type NMIENSET_REGION1RA_Field_1 is
     (--  Reset value for the field
      NMIENSET_REGION1RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_REGION1RA_Field_1 use
     (NMIENSET_REGION1RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION2WA
   type NMIENSET_REGION2WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_REGION2WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION2WA
   type NMIENSET_REGION2WA_Field_1 is
     (--  Reset value for the field
      NMIENSET_REGION2WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_REGION2WA_Field_1 use
     (NMIENSET_REGION2WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION2RA
   type NMIENSET_REGION2RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_REGION2RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION2RA
   type NMIENSET_REGION2RA_Field_1 is
     (--  Reset value for the field
      NMIENSET_REGION2RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_REGION2RA_Field_1 use
     (NMIENSET_REGION2RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION3WA
   type NMIENSET_REGION3WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_REGION3WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION3WA
   type NMIENSET_REGION3WA_Field_1 is
     (--  Reset value for the field
      NMIENSET_REGION3WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_REGION3WA_Field_1 use
     (NMIENSET_REGION3WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event REGION3RA
   type NMIENSET_REGION3RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_REGION3RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event REGION3RA
   type NMIENSET_REGION3RA_Field_1 is
     (--  Reset value for the field
      NMIENSET_REGION3RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_REGION3RA_Field_1 use
     (NMIENSET_REGION3RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PREGION0WA
   type NMIENSET_PREGION0WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_PREGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PREGION0WA
   type NMIENSET_PREGION0WA_Field_1 is
     (--  Reset value for the field
      NMIENSET_PREGION0WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_PREGION0WA_Field_1 use
     (NMIENSET_PREGION0WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PREGION0RA
   type NMIENSET_PREGION0RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_PREGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PREGION0RA
   type NMIENSET_PREGION0RA_Field_1 is
     (--  Reset value for the field
      NMIENSET_PREGION0RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_PREGION0RA_Field_1 use
     (NMIENSET_PREGION0RA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PREGION1WA
   type NMIENSET_PREGION1WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_PREGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PREGION1WA
   type NMIENSET_PREGION1WA_Field_1 is
     (--  Reset value for the field
      NMIENSET_PREGION1WA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_PREGION1WA_Field_1 use
     (NMIENSET_PREGION1WA_Field_Reset => 0,
      Set => 1);

   --  Write '1' to enable interrupt for event PREGION1RA
   type NMIENSET_PREGION1RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENSET_PREGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to enable interrupt for event PREGION1RA
   type NMIENSET_PREGION1RA_Field_1 is
     (--  Reset value for the field
      NMIENSET_PREGION1RA_Field_Reset,
      --  Enable
      Set)
     with Size => 1;
   for NMIENSET_PREGION1RA_Field_1 use
     (NMIENSET_PREGION1RA_Field_Reset => 0,
      Set => 1);

   --  Enable interrupt
   type NMIENSET_Register is record
      --  Write '1' to enable interrupt for event REGION0WA
      REGION0WA      : NMIENSET_REGION0WA_Field_1 :=
                        NMIENSET_REGION0WA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION0RA
      REGION0RA      : NMIENSET_REGION0RA_Field_1 :=
                        NMIENSET_REGION0RA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION1WA
      REGION1WA      : NMIENSET_REGION1WA_Field_1 :=
                        NMIENSET_REGION1WA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION1RA
      REGION1RA      : NMIENSET_REGION1RA_Field_1 :=
                        NMIENSET_REGION1RA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION2WA
      REGION2WA      : NMIENSET_REGION2WA_Field_1 :=
                        NMIENSET_REGION2WA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION2RA
      REGION2RA      : NMIENSET_REGION2RA_Field_1 :=
                        NMIENSET_REGION2RA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION3WA
      REGION3WA      : NMIENSET_REGION3WA_Field_1 :=
                        NMIENSET_REGION3WA_Field_Reset;
      --  Write '1' to enable interrupt for event REGION3RA
      REGION3RA      : NMIENSET_REGION3RA_Field_1 :=
                        NMIENSET_REGION3RA_Field_Reset;
      --  unspecified
      Reserved_8_23  : NRF52833_SVD.UInt16 := 16#0#;
      --  Write '1' to enable interrupt for event PREGION0WA
      PREGION0WA     : NMIENSET_PREGION0WA_Field_1 :=
                        NMIENSET_PREGION0WA_Field_Reset;
      --  Write '1' to enable interrupt for event PREGION0RA
      PREGION0RA     : NMIENSET_PREGION0RA_Field_1 :=
                        NMIENSET_PREGION0RA_Field_Reset;
      --  Write '1' to enable interrupt for event PREGION1WA
      PREGION1WA     : NMIENSET_PREGION1WA_Field_1 :=
                        NMIENSET_PREGION1WA_Field_Reset;
      --  Write '1' to enable interrupt for event PREGION1RA
      PREGION1RA     : NMIENSET_PREGION1RA_Field_1 :=
                        NMIENSET_PREGION1RA_Field_Reset;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIENSET_Register use record
      REGION0WA      at 0 range 0 .. 0;
      REGION0RA      at 0 range 1 .. 1;
      REGION1WA      at 0 range 2 .. 2;
      REGION1RA      at 0 range 3 .. 3;
      REGION2WA      at 0 range 4 .. 4;
      REGION2RA      at 0 range 5 .. 5;
      REGION3WA      at 0 range 6 .. 6;
      REGION3RA      at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      PREGION0WA     at 0 range 24 .. 24;
      PREGION0RA     at 0 range 25 .. 25;
      PREGION1WA     at 0 range 26 .. 26;
      PREGION1RA     at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Write '1' to disable interrupt for event REGION0WA
   type NMIENCLR_REGION0WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_REGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION0WA
   type NMIENCLR_REGION0WA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_REGION0WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_REGION0WA_Field_1 use
     (NMIENCLR_REGION0WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION0RA
   type NMIENCLR_REGION0RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_REGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION0RA
   type NMIENCLR_REGION0RA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_REGION0RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_REGION0RA_Field_1 use
     (NMIENCLR_REGION0RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION1WA
   type NMIENCLR_REGION1WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_REGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION1WA
   type NMIENCLR_REGION1WA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_REGION1WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_REGION1WA_Field_1 use
     (NMIENCLR_REGION1WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION1RA
   type NMIENCLR_REGION1RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_REGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION1RA
   type NMIENCLR_REGION1RA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_REGION1RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_REGION1RA_Field_1 use
     (NMIENCLR_REGION1RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION2WA
   type NMIENCLR_REGION2WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_REGION2WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION2WA
   type NMIENCLR_REGION2WA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_REGION2WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_REGION2WA_Field_1 use
     (NMIENCLR_REGION2WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION2RA
   type NMIENCLR_REGION2RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_REGION2RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION2RA
   type NMIENCLR_REGION2RA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_REGION2RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_REGION2RA_Field_1 use
     (NMIENCLR_REGION2RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION3WA
   type NMIENCLR_REGION3WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_REGION3WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION3WA
   type NMIENCLR_REGION3WA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_REGION3WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_REGION3WA_Field_1 use
     (NMIENCLR_REGION3WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event REGION3RA
   type NMIENCLR_REGION3RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_REGION3RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event REGION3RA
   type NMIENCLR_REGION3RA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_REGION3RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_REGION3RA_Field_1 use
     (NMIENCLR_REGION3RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PREGION0WA
   type NMIENCLR_PREGION0WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_PREGION0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PREGION0WA
   type NMIENCLR_PREGION0WA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_PREGION0WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_PREGION0WA_Field_1 use
     (NMIENCLR_PREGION0WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PREGION0RA
   type NMIENCLR_PREGION0RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_PREGION0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PREGION0RA
   type NMIENCLR_PREGION0RA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_PREGION0RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_PREGION0RA_Field_1 use
     (NMIENCLR_PREGION0RA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PREGION1WA
   type NMIENCLR_PREGION1WA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_PREGION1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PREGION1WA
   type NMIENCLR_PREGION1WA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_PREGION1WA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_PREGION1WA_Field_1 use
     (NMIENCLR_PREGION1WA_Field_Reset => 0,
      Clear => 1);

   --  Write '1' to disable interrupt for event PREGION1RA
   type NMIENCLR_PREGION1RA_Field is
     (--  Read: Disabled
      Disabled,
      --  Read: Enabled
      Enabled)
     with Size => 1;
   for NMIENCLR_PREGION1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Write '1' to disable interrupt for event PREGION1RA
   type NMIENCLR_PREGION1RA_Field_1 is
     (--  Reset value for the field
      NMIENCLR_PREGION1RA_Field_Reset,
      --  Disable
      Clear)
     with Size => 1;
   for NMIENCLR_PREGION1RA_Field_1 use
     (NMIENCLR_PREGION1RA_Field_Reset => 0,
      Clear => 1);

   --  Disable interrupt
   type NMIENCLR_Register is record
      --  Write '1' to disable interrupt for event REGION0WA
      REGION0WA      : NMIENCLR_REGION0WA_Field_1 :=
                        NMIENCLR_REGION0WA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION0RA
      REGION0RA      : NMIENCLR_REGION0RA_Field_1 :=
                        NMIENCLR_REGION0RA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION1WA
      REGION1WA      : NMIENCLR_REGION1WA_Field_1 :=
                        NMIENCLR_REGION1WA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION1RA
      REGION1RA      : NMIENCLR_REGION1RA_Field_1 :=
                        NMIENCLR_REGION1RA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION2WA
      REGION2WA      : NMIENCLR_REGION2WA_Field_1 :=
                        NMIENCLR_REGION2WA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION2RA
      REGION2RA      : NMIENCLR_REGION2RA_Field_1 :=
                        NMIENCLR_REGION2RA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION3WA
      REGION3WA      : NMIENCLR_REGION3WA_Field_1 :=
                        NMIENCLR_REGION3WA_Field_Reset;
      --  Write '1' to disable interrupt for event REGION3RA
      REGION3RA      : NMIENCLR_REGION3RA_Field_1 :=
                        NMIENCLR_REGION3RA_Field_Reset;
      --  unspecified
      Reserved_8_23  : NRF52833_SVD.UInt16 := 16#0#;
      --  Write '1' to disable interrupt for event PREGION0WA
      PREGION0WA     : NMIENCLR_PREGION0WA_Field_1 :=
                        NMIENCLR_PREGION0WA_Field_Reset;
      --  Write '1' to disable interrupt for event PREGION0RA
      PREGION0RA     : NMIENCLR_PREGION0RA_Field_1 :=
                        NMIENCLR_PREGION0RA_Field_Reset;
      --  Write '1' to disable interrupt for event PREGION1WA
      PREGION1WA     : NMIENCLR_PREGION1WA_Field_1 :=
                        NMIENCLR_PREGION1WA_Field_Reset;
      --  Write '1' to disable interrupt for event PREGION1RA
      PREGION1RA     : NMIENCLR_PREGION1RA_Field_1 :=
                        NMIENCLR_PREGION1RA_Field_Reset;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NMIENCLR_Register use record
      REGION0WA      at 0 range 0 .. 0;
      REGION0RA      at 0 range 1 .. 1;
      REGION1WA      at 0 range 2 .. 2;
      REGION1RA      at 0 range 3 .. 3;
      REGION2WA      at 0 range 4 .. 4;
      REGION2RA      at 0 range 5 .. 5;
      REGION3WA      at 0 range 6 .. 6;
      REGION3RA      at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      PREGION0WA     at 0 range 24 .. 24;
      PREGION0RA     at 0 range 25 .. 25;
      PREGION1WA     at 0 range 26 .. 26;
      PREGION1RA     at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ---------------------------------------
   -- MWU_PERREGION cluster's Registers --
   ---------------------------------------

   --  Subregion 0 in region n (write '1' to clear)
   type SUBSTATWA_SR0_Field is
     (--  No write access occurred in this subregion
      NoAccess,
      --  Write access(es) occurred in this subregion
      Access_k)
     with Size => 1;
   for SUBSTATWA_SR0_Field use
     (NoAccess => 0,
      Access_k => 1);

   --  SUBSTATWA_PERREGION_SR array
   type SUBSTATWA_PERREGION_SR_Field_Array is array (0 .. 31)
     of SUBSTATWA_SR0_Field
     with Component_Size => 1, Size => 32;

   --  Description cluster: Source of event/interrupt in region n, write access
   --  detected while corresponding subregion was enabled for watching
   type SUBSTATWA_PERREGION_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SR as a value
            Val : NRF52833_SVD.UInt32;
         when True =>
            --  SR as an array
            Arr : SUBSTATWA_PERREGION_SR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUBSTATWA_PERREGION_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Subregion 0 in region n (write '1' to clear)
   type SUBSTATRA_SR0_Field is
     (--  No read access occurred in this subregion
      NoAccess,
      --  Read access(es) occurred in this subregion
      Access_k)
     with Size => 1;
   for SUBSTATRA_SR0_Field use
     (NoAccess => 0,
      Access_k => 1);

   --  SUBSTATRA_PERREGION_SR array
   type SUBSTATRA_PERREGION_SR_Field_Array is array (0 .. 31)
     of SUBSTATRA_SR0_Field
     with Component_Size => 1, Size => 32;

   --  Description cluster: Source of event/interrupt in region n, read access
   --  detected while corresponding subregion was enabled for watching
   type SUBSTATRA_PERREGION_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SR as a value
            Val : NRF52833_SVD.UInt32;
         when True =>
            --  SR as an array
            Arr : SUBSTATRA_PERREGION_SR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUBSTATRA_PERREGION_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Unspecified
   type MWU_PERREGION_Cluster is record
      --  Description cluster: Source of event/interrupt in region n, write
      --  access detected while corresponding subregion was enabled for
      --  watching
      SUBSTATWA : aliased SUBSTATWA_PERREGION_Register;
      --  Description cluster: Source of event/interrupt in region n, read
      --  access detected while corresponding subregion was enabled for
      --  watching
      SUBSTATRA : aliased SUBSTATRA_PERREGION_Register;
   end record
     with Size => 64;

   for MWU_PERREGION_Cluster use record
      SUBSTATWA at 16#0# range 0 .. 31;
      SUBSTATRA at 16#4# range 0 .. 31;
   end record;

   --  Unspecified
   type MWU_PERREGION_Clusters is array (0 .. 1) of MWU_PERREGION_Cluster;

   --  Enable/disable write access watch in region[0]
   type REGIONEN_RGN0WA_Field is
     (--  Disable write access watch in this region
      Disable,
      --  Enable write access watch in this region
      Enable)
     with Size => 1;
   for REGIONEN_RGN0WA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable read access watch in region[0]
   type REGIONEN_RGN0RA_Field is
     (--  Disable read access watch in this region
      Disable,
      --  Enable read access watch in this region
      Enable)
     with Size => 1;
   for REGIONEN_RGN0RA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable write access watch in region[1]
   type REGIONEN_RGN1WA_Field is
     (--  Disable write access watch in this region
      Disable,
      --  Enable write access watch in this region
      Enable)
     with Size => 1;
   for REGIONEN_RGN1WA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable read access watch in region[1]
   type REGIONEN_RGN1RA_Field is
     (--  Disable read access watch in this region
      Disable,
      --  Enable read access watch in this region
      Enable)
     with Size => 1;
   for REGIONEN_RGN1RA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable write access watch in region[2]
   type REGIONEN_RGN2WA_Field is
     (--  Disable write access watch in this region
      Disable,
      --  Enable write access watch in this region
      Enable)
     with Size => 1;
   for REGIONEN_RGN2WA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable read access watch in region[2]
   type REGIONEN_RGN2RA_Field is
     (--  Disable read access watch in this region
      Disable,
      --  Enable read access watch in this region
      Enable)
     with Size => 1;
   for REGIONEN_RGN2RA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable write access watch in region[3]
   type REGIONEN_RGN3WA_Field is
     (--  Disable write access watch in this region
      Disable,
      --  Enable write access watch in this region
      Enable)
     with Size => 1;
   for REGIONEN_RGN3WA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable read access watch in region[3]
   type REGIONEN_RGN3RA_Field is
     (--  Disable read access watch in this region
      Disable,
      --  Enable read access watch in this region
      Enable)
     with Size => 1;
   for REGIONEN_RGN3RA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable write access watch in PREGION[0]
   type REGIONEN_PRGN0WA_Field is
     (--  Disable write access watch in this PREGION
      Disable,
      --  Enable write access watch in this PREGION
      Enable)
     with Size => 1;
   for REGIONEN_PRGN0WA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable read access watch in PREGION[0]
   type REGIONEN_PRGN0RA_Field is
     (--  Disable read access watch in this PREGION
      Disable,
      --  Enable read access watch in this PREGION
      Enable)
     with Size => 1;
   for REGIONEN_PRGN0RA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable write access watch in PREGION[1]
   type REGIONEN_PRGN1WA_Field is
     (--  Disable write access watch in this PREGION
      Disable,
      --  Enable write access watch in this PREGION
      Enable)
     with Size => 1;
   for REGIONEN_PRGN1WA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable read access watch in PREGION[1]
   type REGIONEN_PRGN1RA_Field is
     (--  Disable read access watch in this PREGION
      Disable,
      --  Enable read access watch in this PREGION
      Enable)
     with Size => 1;
   for REGIONEN_PRGN1RA_Field use
     (Disable => 0,
      Enable => 1);

   --  Enable/disable regions watch
   type REGIONEN_Register is record
      --  Enable/disable write access watch in region[0]
      RGN0WA         : REGIONEN_RGN0WA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable read access watch in region[0]
      RGN0RA         : REGIONEN_RGN0RA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable write access watch in region[1]
      RGN1WA         : REGIONEN_RGN1WA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable read access watch in region[1]
      RGN1RA         : REGIONEN_RGN1RA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable write access watch in region[2]
      RGN2WA         : REGIONEN_RGN2WA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable read access watch in region[2]
      RGN2RA         : REGIONEN_RGN2RA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable write access watch in region[3]
      RGN3WA         : REGIONEN_RGN3WA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable read access watch in region[3]
      RGN3RA         : REGIONEN_RGN3RA_Field := NRF52833_SVD.MWU.Disable;
      --  unspecified
      Reserved_8_23  : NRF52833_SVD.UInt16 := 16#0#;
      --  Enable/disable write access watch in PREGION[0]
      PRGN0WA        : REGIONEN_PRGN0WA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable read access watch in PREGION[0]
      PRGN0RA        : REGIONEN_PRGN0RA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable write access watch in PREGION[1]
      PRGN1WA        : REGIONEN_PRGN1WA_Field := NRF52833_SVD.MWU.Disable;
      --  Enable/disable read access watch in PREGION[1]
      PRGN1RA        : REGIONEN_PRGN1RA_Field := NRF52833_SVD.MWU.Disable;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGIONEN_Register use record
      RGN0WA         at 0 range 0 .. 0;
      RGN0RA         at 0 range 1 .. 1;
      RGN1WA         at 0 range 2 .. 2;
      RGN1RA         at 0 range 3 .. 3;
      RGN2WA         at 0 range 4 .. 4;
      RGN2RA         at 0 range 5 .. 5;
      RGN3WA         at 0 range 6 .. 6;
      RGN3RA         at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      PRGN0WA        at 0 range 24 .. 24;
      PRGN0RA        at 0 range 25 .. 25;
      PRGN1WA        at 0 range 26 .. 26;
      PRGN1RA        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Enable write access watch in region[0]
   type REGIONENSET_RGN0WA_Field is
     (--  Write access watch in this region is disabled
      Disabled,
      --  Write access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_RGN0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable write access watch in region[0]
   type REGIONENSET_RGN0WA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_RGN0WA_Field_Reset,
      --  Enable write access watch in this region
      Set)
     with Size => 1;
   for REGIONENSET_RGN0WA_Field_1 use
     (REGIONENSET_RGN0WA_Field_Reset => 0,
      Set => 1);

   --  Enable read access watch in region[0]
   type REGIONENSET_RGN0RA_Field is
     (--  Read access watch in this region is disabled
      Disabled,
      --  Read access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_RGN0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable read access watch in region[0]
   type REGIONENSET_RGN0RA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_RGN0RA_Field_Reset,
      --  Enable read access watch in this region
      Set)
     with Size => 1;
   for REGIONENSET_RGN0RA_Field_1 use
     (REGIONENSET_RGN0RA_Field_Reset => 0,
      Set => 1);

   --  Enable write access watch in region[1]
   type REGIONENSET_RGN1WA_Field is
     (--  Write access watch in this region is disabled
      Disabled,
      --  Write access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_RGN1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable write access watch in region[1]
   type REGIONENSET_RGN1WA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_RGN1WA_Field_Reset,
      --  Enable write access watch in this region
      Set)
     with Size => 1;
   for REGIONENSET_RGN1WA_Field_1 use
     (REGIONENSET_RGN1WA_Field_Reset => 0,
      Set => 1);

   --  Enable read access watch in region[1]
   type REGIONENSET_RGN1RA_Field is
     (--  Read access watch in this region is disabled
      Disabled,
      --  Read access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_RGN1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable read access watch in region[1]
   type REGIONENSET_RGN1RA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_RGN1RA_Field_Reset,
      --  Enable read access watch in this region
      Set)
     with Size => 1;
   for REGIONENSET_RGN1RA_Field_1 use
     (REGIONENSET_RGN1RA_Field_Reset => 0,
      Set => 1);

   --  Enable write access watch in region[2]
   type REGIONENSET_RGN2WA_Field is
     (--  Write access watch in this region is disabled
      Disabled,
      --  Write access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_RGN2WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable write access watch in region[2]
   type REGIONENSET_RGN2WA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_RGN2WA_Field_Reset,
      --  Enable write access watch in this region
      Set)
     with Size => 1;
   for REGIONENSET_RGN2WA_Field_1 use
     (REGIONENSET_RGN2WA_Field_Reset => 0,
      Set => 1);

   --  Enable read access watch in region[2]
   type REGIONENSET_RGN2RA_Field is
     (--  Read access watch in this region is disabled
      Disabled,
      --  Read access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_RGN2RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable read access watch in region[2]
   type REGIONENSET_RGN2RA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_RGN2RA_Field_Reset,
      --  Enable read access watch in this region
      Set)
     with Size => 1;
   for REGIONENSET_RGN2RA_Field_1 use
     (REGIONENSET_RGN2RA_Field_Reset => 0,
      Set => 1);

   --  Enable write access watch in region[3]
   type REGIONENSET_RGN3WA_Field is
     (--  Write access watch in this region is disabled
      Disabled,
      --  Write access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_RGN3WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable write access watch in region[3]
   type REGIONENSET_RGN3WA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_RGN3WA_Field_Reset,
      --  Enable write access watch in this region
      Set)
     with Size => 1;
   for REGIONENSET_RGN3WA_Field_1 use
     (REGIONENSET_RGN3WA_Field_Reset => 0,
      Set => 1);

   --  Enable read access watch in region[3]
   type REGIONENSET_RGN3RA_Field is
     (--  Read access watch in this region is disabled
      Disabled,
      --  Read access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_RGN3RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable read access watch in region[3]
   type REGIONENSET_RGN3RA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_RGN3RA_Field_Reset,
      --  Enable read access watch in this region
      Set)
     with Size => 1;
   for REGIONENSET_RGN3RA_Field_1 use
     (REGIONENSET_RGN3RA_Field_Reset => 0,
      Set => 1);

   --  Enable write access watch in PREGION[0]
   type REGIONENSET_PRGN0WA_Field is
     (--  Write access watch in this PREGION is disabled
      Disabled,
      --  Write access watch in this PREGION is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_PRGN0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable write access watch in PREGION[0]
   type REGIONENSET_PRGN0WA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_PRGN0WA_Field_Reset,
      --  Enable write access watch in this PREGION
      Set)
     with Size => 1;
   for REGIONENSET_PRGN0WA_Field_1 use
     (REGIONENSET_PRGN0WA_Field_Reset => 0,
      Set => 1);

   --  Enable read access watch in PREGION[0]
   type REGIONENSET_PRGN0RA_Field is
     (--  Read access watch in this PREGION is disabled
      Disabled,
      --  Read access watch in this PREGION is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_PRGN0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable read access watch in PREGION[0]
   type REGIONENSET_PRGN0RA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_PRGN0RA_Field_Reset,
      --  Enable read access watch in this PREGION
      Set)
     with Size => 1;
   for REGIONENSET_PRGN0RA_Field_1 use
     (REGIONENSET_PRGN0RA_Field_Reset => 0,
      Set => 1);

   --  Enable write access watch in PREGION[1]
   type REGIONENSET_PRGN1WA_Field is
     (--  Write access watch in this PREGION is disabled
      Disabled,
      --  Write access watch in this PREGION is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_PRGN1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable write access watch in PREGION[1]
   type REGIONENSET_PRGN1WA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_PRGN1WA_Field_Reset,
      --  Enable write access watch in this PREGION
      Set)
     with Size => 1;
   for REGIONENSET_PRGN1WA_Field_1 use
     (REGIONENSET_PRGN1WA_Field_Reset => 0,
      Set => 1);

   --  Enable read access watch in PREGION[1]
   type REGIONENSET_PRGN1RA_Field is
     (--  Read access watch in this PREGION is disabled
      Disabled,
      --  Read access watch in this PREGION is enabled
      Enabled)
     with Size => 1;
   for REGIONENSET_PRGN1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Enable read access watch in PREGION[1]
   type REGIONENSET_PRGN1RA_Field_1 is
     (--  Reset value for the field
      REGIONENSET_PRGN1RA_Field_Reset,
      --  Enable read access watch in this PREGION
      Set)
     with Size => 1;
   for REGIONENSET_PRGN1RA_Field_1 use
     (REGIONENSET_PRGN1RA_Field_Reset => 0,
      Set => 1);

   --  Enable regions watch
   type REGIONENSET_Register is record
      --  Enable write access watch in region[0]
      RGN0WA         : REGIONENSET_RGN0WA_Field_1 :=
                        REGIONENSET_RGN0WA_Field_Reset;
      --  Enable read access watch in region[0]
      RGN0RA         : REGIONENSET_RGN0RA_Field_1 :=
                        REGIONENSET_RGN0RA_Field_Reset;
      --  Enable write access watch in region[1]
      RGN1WA         : REGIONENSET_RGN1WA_Field_1 :=
                        REGIONENSET_RGN1WA_Field_Reset;
      --  Enable read access watch in region[1]
      RGN1RA         : REGIONENSET_RGN1RA_Field_1 :=
                        REGIONENSET_RGN1RA_Field_Reset;
      --  Enable write access watch in region[2]
      RGN2WA         : REGIONENSET_RGN2WA_Field_1 :=
                        REGIONENSET_RGN2WA_Field_Reset;
      --  Enable read access watch in region[2]
      RGN2RA         : REGIONENSET_RGN2RA_Field_1 :=
                        REGIONENSET_RGN2RA_Field_Reset;
      --  Enable write access watch in region[3]
      RGN3WA         : REGIONENSET_RGN3WA_Field_1 :=
                        REGIONENSET_RGN3WA_Field_Reset;
      --  Enable read access watch in region[3]
      RGN3RA         : REGIONENSET_RGN3RA_Field_1 :=
                        REGIONENSET_RGN3RA_Field_Reset;
      --  unspecified
      Reserved_8_23  : NRF52833_SVD.UInt16 := 16#0#;
      --  Enable write access watch in PREGION[0]
      PRGN0WA        : REGIONENSET_PRGN0WA_Field_1 :=
                        REGIONENSET_PRGN0WA_Field_Reset;
      --  Enable read access watch in PREGION[0]
      PRGN0RA        : REGIONENSET_PRGN0RA_Field_1 :=
                        REGIONENSET_PRGN0RA_Field_Reset;
      --  Enable write access watch in PREGION[1]
      PRGN1WA        : REGIONENSET_PRGN1WA_Field_1 :=
                        REGIONENSET_PRGN1WA_Field_Reset;
      --  Enable read access watch in PREGION[1]
      PRGN1RA        : REGIONENSET_PRGN1RA_Field_1 :=
                        REGIONENSET_PRGN1RA_Field_Reset;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGIONENSET_Register use record
      RGN0WA         at 0 range 0 .. 0;
      RGN0RA         at 0 range 1 .. 1;
      RGN1WA         at 0 range 2 .. 2;
      RGN1RA         at 0 range 3 .. 3;
      RGN2WA         at 0 range 4 .. 4;
      RGN2RA         at 0 range 5 .. 5;
      RGN3WA         at 0 range 6 .. 6;
      RGN3RA         at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      PRGN0WA        at 0 range 24 .. 24;
      PRGN0RA        at 0 range 25 .. 25;
      PRGN1WA        at 0 range 26 .. 26;
      PRGN1RA        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Disable write access watch in region[0]
   type REGIONENCLR_RGN0WA_Field is
     (--  Write access watch in this region is disabled
      Disabled,
      --  Write access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_RGN0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable write access watch in region[0]
   type REGIONENCLR_RGN0WA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_RGN0WA_Field_Reset,
      --  Disable write access watch in this region
      Clear)
     with Size => 1;
   for REGIONENCLR_RGN0WA_Field_1 use
     (REGIONENCLR_RGN0WA_Field_Reset => 0,
      Clear => 1);

   --  Disable read access watch in region[0]
   type REGIONENCLR_RGN0RA_Field is
     (--  Read access watch in this region is disabled
      Disabled,
      --  Read access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_RGN0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable read access watch in region[0]
   type REGIONENCLR_RGN0RA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_RGN0RA_Field_Reset,
      --  Disable read access watch in this region
      Clear)
     with Size => 1;
   for REGIONENCLR_RGN0RA_Field_1 use
     (REGIONENCLR_RGN0RA_Field_Reset => 0,
      Clear => 1);

   --  Disable write access watch in region[1]
   type REGIONENCLR_RGN1WA_Field is
     (--  Write access watch in this region is disabled
      Disabled,
      --  Write access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_RGN1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable write access watch in region[1]
   type REGIONENCLR_RGN1WA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_RGN1WA_Field_Reset,
      --  Disable write access watch in this region
      Clear)
     with Size => 1;
   for REGIONENCLR_RGN1WA_Field_1 use
     (REGIONENCLR_RGN1WA_Field_Reset => 0,
      Clear => 1);

   --  Disable read access watch in region[1]
   type REGIONENCLR_RGN1RA_Field is
     (--  Read access watch in this region is disabled
      Disabled,
      --  Read access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_RGN1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable read access watch in region[1]
   type REGIONENCLR_RGN1RA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_RGN1RA_Field_Reset,
      --  Disable read access watch in this region
      Clear)
     with Size => 1;
   for REGIONENCLR_RGN1RA_Field_1 use
     (REGIONENCLR_RGN1RA_Field_Reset => 0,
      Clear => 1);

   --  Disable write access watch in region[2]
   type REGIONENCLR_RGN2WA_Field is
     (--  Write access watch in this region is disabled
      Disabled,
      --  Write access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_RGN2WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable write access watch in region[2]
   type REGIONENCLR_RGN2WA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_RGN2WA_Field_Reset,
      --  Disable write access watch in this region
      Clear)
     with Size => 1;
   for REGIONENCLR_RGN2WA_Field_1 use
     (REGIONENCLR_RGN2WA_Field_Reset => 0,
      Clear => 1);

   --  Disable read access watch in region[2]
   type REGIONENCLR_RGN2RA_Field is
     (--  Read access watch in this region is disabled
      Disabled,
      --  Read access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_RGN2RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable read access watch in region[2]
   type REGIONENCLR_RGN2RA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_RGN2RA_Field_Reset,
      --  Disable read access watch in this region
      Clear)
     with Size => 1;
   for REGIONENCLR_RGN2RA_Field_1 use
     (REGIONENCLR_RGN2RA_Field_Reset => 0,
      Clear => 1);

   --  Disable write access watch in region[3]
   type REGIONENCLR_RGN3WA_Field is
     (--  Write access watch in this region is disabled
      Disabled,
      --  Write access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_RGN3WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable write access watch in region[3]
   type REGIONENCLR_RGN3WA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_RGN3WA_Field_Reset,
      --  Disable write access watch in this region
      Clear)
     with Size => 1;
   for REGIONENCLR_RGN3WA_Field_1 use
     (REGIONENCLR_RGN3WA_Field_Reset => 0,
      Clear => 1);

   --  Disable read access watch in region[3]
   type REGIONENCLR_RGN3RA_Field is
     (--  Read access watch in this region is disabled
      Disabled,
      --  Read access watch in this region is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_RGN3RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable read access watch in region[3]
   type REGIONENCLR_RGN3RA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_RGN3RA_Field_Reset,
      --  Disable read access watch in this region
      Clear)
     with Size => 1;
   for REGIONENCLR_RGN3RA_Field_1 use
     (REGIONENCLR_RGN3RA_Field_Reset => 0,
      Clear => 1);

   --  Disable write access watch in PREGION[0]
   type REGIONENCLR_PRGN0WA_Field is
     (--  Write access watch in this PREGION is disabled
      Disabled,
      --  Write access watch in this PREGION is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_PRGN0WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable write access watch in PREGION[0]
   type REGIONENCLR_PRGN0WA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_PRGN0WA_Field_Reset,
      --  Disable write access watch in this PREGION
      Clear)
     with Size => 1;
   for REGIONENCLR_PRGN0WA_Field_1 use
     (REGIONENCLR_PRGN0WA_Field_Reset => 0,
      Clear => 1);

   --  Disable read access watch in PREGION[0]
   type REGIONENCLR_PRGN0RA_Field is
     (--  Read access watch in this PREGION is disabled
      Disabled,
      --  Read access watch in this PREGION is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_PRGN0RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable read access watch in PREGION[0]
   type REGIONENCLR_PRGN0RA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_PRGN0RA_Field_Reset,
      --  Disable read access watch in this PREGION
      Clear)
     with Size => 1;
   for REGIONENCLR_PRGN0RA_Field_1 use
     (REGIONENCLR_PRGN0RA_Field_Reset => 0,
      Clear => 1);

   --  Disable write access watch in PREGION[1]
   type REGIONENCLR_PRGN1WA_Field is
     (--  Write access watch in this PREGION is disabled
      Disabled,
      --  Write access watch in this PREGION is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_PRGN1WA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable write access watch in PREGION[1]
   type REGIONENCLR_PRGN1WA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_PRGN1WA_Field_Reset,
      --  Disable write access watch in this PREGION
      Clear)
     with Size => 1;
   for REGIONENCLR_PRGN1WA_Field_1 use
     (REGIONENCLR_PRGN1WA_Field_Reset => 0,
      Clear => 1);

   --  Disable read access watch in PREGION[1]
   type REGIONENCLR_PRGN1RA_Field is
     (--  Read access watch in this PREGION is disabled
      Disabled,
      --  Read access watch in this PREGION is enabled
      Enabled)
     with Size => 1;
   for REGIONENCLR_PRGN1RA_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Disable read access watch in PREGION[1]
   type REGIONENCLR_PRGN1RA_Field_1 is
     (--  Reset value for the field
      REGIONENCLR_PRGN1RA_Field_Reset,
      --  Disable read access watch in this PREGION
      Clear)
     with Size => 1;
   for REGIONENCLR_PRGN1RA_Field_1 use
     (REGIONENCLR_PRGN1RA_Field_Reset => 0,
      Clear => 1);

   --  Disable regions watch
   type REGIONENCLR_Register is record
      --  Disable write access watch in region[0]
      RGN0WA         : REGIONENCLR_RGN0WA_Field_1 :=
                        REGIONENCLR_RGN0WA_Field_Reset;
      --  Disable read access watch in region[0]
      RGN0RA         : REGIONENCLR_RGN0RA_Field_1 :=
                        REGIONENCLR_RGN0RA_Field_Reset;
      --  Disable write access watch in region[1]
      RGN1WA         : REGIONENCLR_RGN1WA_Field_1 :=
                        REGIONENCLR_RGN1WA_Field_Reset;
      --  Disable read access watch in region[1]
      RGN1RA         : REGIONENCLR_RGN1RA_Field_1 :=
                        REGIONENCLR_RGN1RA_Field_Reset;
      --  Disable write access watch in region[2]
      RGN2WA         : REGIONENCLR_RGN2WA_Field_1 :=
                        REGIONENCLR_RGN2WA_Field_Reset;
      --  Disable read access watch in region[2]
      RGN2RA         : REGIONENCLR_RGN2RA_Field_1 :=
                        REGIONENCLR_RGN2RA_Field_Reset;
      --  Disable write access watch in region[3]
      RGN3WA         : REGIONENCLR_RGN3WA_Field_1 :=
                        REGIONENCLR_RGN3WA_Field_Reset;
      --  Disable read access watch in region[3]
      RGN3RA         : REGIONENCLR_RGN3RA_Field_1 :=
                        REGIONENCLR_RGN3RA_Field_Reset;
      --  unspecified
      Reserved_8_23  : NRF52833_SVD.UInt16 := 16#0#;
      --  Disable write access watch in PREGION[0]
      PRGN0WA        : REGIONENCLR_PRGN0WA_Field_1 :=
                        REGIONENCLR_PRGN0WA_Field_Reset;
      --  Disable read access watch in PREGION[0]
      PRGN0RA        : REGIONENCLR_PRGN0RA_Field_1 :=
                        REGIONENCLR_PRGN0RA_Field_Reset;
      --  Disable write access watch in PREGION[1]
      PRGN1WA        : REGIONENCLR_PRGN1WA_Field_1 :=
                        REGIONENCLR_PRGN1WA_Field_Reset;
      --  Disable read access watch in PREGION[1]
      PRGN1RA        : REGIONENCLR_PRGN1RA_Field_1 :=
                        REGIONENCLR_PRGN1RA_Field_Reset;
      --  unspecified
      Reserved_28_31 : NRF52833_SVD.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REGIONENCLR_Register use record
      RGN0WA         at 0 range 0 .. 0;
      RGN0RA         at 0 range 1 .. 1;
      RGN1WA         at 0 range 2 .. 2;
      RGN1RA         at 0 range 3 .. 3;
      RGN2WA         at 0 range 4 .. 4;
      RGN2RA         at 0 range 5 .. 5;
      RGN3WA         at 0 range 6 .. 6;
      RGN3RA         at 0 range 7 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      PRGN0WA        at 0 range 24 .. 24;
      PRGN0RA        at 0 range 25 .. 25;
      PRGN1WA        at 0 range 26 .. 26;
      PRGN1RA        at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   ------------------------------------
   -- MWU_REGION cluster's Registers --
   ------------------------------------

   --  Unspecified
   type MWU_REGION_Cluster is record
      --  Description cluster: Start address for region n
      START : aliased NRF52833_SVD.UInt32;
      --  Description cluster: End address of region n
      END_k : aliased NRF52833_SVD.UInt32;
   end record
     with Size => 128;

   for MWU_REGION_Cluster use record
      START at 16#0# range 0 .. 31;
      END_k at 16#4# range 0 .. 31;
   end record;

   --  Unspecified
   type MWU_REGION_Clusters is array (0 .. 3) of MWU_REGION_Cluster;

   -------------------------------------
   -- MWU_PREGION cluster's Registers --
   -------------------------------------

   --  Include or exclude subregion 0 in region
   type SUBS_SR0_Field is
     (--  Exclude
      Exclude,
      --  Include
      Include)
     with Size => 1;
   for SUBS_SR0_Field use
     (Exclude => 0,
      Include => 1);

   --  SUBS_PREGION_SR array
   type SUBS_PREGION_SR_Field_Array is array (0 .. 31) of SUBS_SR0_Field
     with Component_Size => 1, Size => 32;

   --  Description cluster: Subregions of region n
   type SUBS_PREGION_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SR as a value
            Val : NRF52833_SVD.UInt32;
         when True =>
            --  SR as an array
            Arr : SUBS_PREGION_SR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SUBS_PREGION_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Unspecified
   type MWU_PREGION_Cluster is record
      --  Description cluster: Reserved for future use
      START : aliased NRF52833_SVD.UInt32;
      --  Description cluster: Reserved for future use
      END_k : aliased NRF52833_SVD.UInt32;
      --  Description cluster: Subregions of region n
      SUBS  : aliased SUBS_PREGION_Register;
   end record
     with Size => 128;

   for MWU_PREGION_Cluster use record
      START at 16#0# range 0 .. 31;
      END_k at 16#4# range 0 .. 31;
      SUBS  at 16#8# range 0 .. 31;
   end record;

   --  Unspecified
   type MWU_PREGION_Clusters is array (0 .. 1) of MWU_PREGION_Cluster;

   -----------------
   -- Peripherals --
   -----------------

   --  Memory Watch Unit
   type MWU_Peripheral is record
      --  Peripheral events.
      EVENTS_REGION  : aliased MWU_EVENTS_REGION_Clusters;
      --  Peripheral events.
      EVENTS_PREGION : aliased MWU_EVENTS_PREGION_Clusters;
      --  Enable or disable interrupt
      INTEN          : aliased INTEN_Register;
      --  Enable interrupt
      INTENSET       : aliased INTENSET_Register;
      --  Disable interrupt
      INTENCLR       : aliased INTENCLR_Register;
      --  Enable or disable interrupt
      NMIEN          : aliased NMIEN_Register;
      --  Enable interrupt
      NMIENSET       : aliased NMIENSET_Register;
      --  Disable interrupt
      NMIENCLR       : aliased NMIENCLR_Register;
      --  Unspecified
      PERREGION      : aliased MWU_PERREGION_Clusters;
      --  Enable/disable regions watch
      REGIONEN       : aliased REGIONEN_Register;
      --  Enable regions watch
      REGIONENSET    : aliased REGIONENSET_Register;
      --  Disable regions watch
      REGIONENCLR    : aliased REGIONENCLR_Register;
      --  Unspecified
      REGION         : aliased MWU_REGION_Clusters;
      --  Unspecified
      PREGION        : aliased MWU_PREGION_Clusters;
   end record
     with Volatile;

   for MWU_Peripheral use record
      EVENTS_REGION  at 16#100# range 0 .. 255;
      EVENTS_PREGION at 16#160# range 0 .. 127;
      INTEN          at 16#300# range 0 .. 31;
      INTENSET       at 16#304# range 0 .. 31;
      INTENCLR       at 16#308# range 0 .. 31;
      NMIEN          at 16#320# range 0 .. 31;
      NMIENSET       at 16#324# range 0 .. 31;
      NMIENCLR       at 16#328# range 0 .. 31;
      PERREGION      at 16#400# range 0 .. 127;
      REGIONEN       at 16#510# range 0 .. 31;
      REGIONENSET    at 16#514# range 0 .. 31;
      REGIONENCLR    at 16#518# range 0 .. 31;
      REGION         at 16#600# range 0 .. 511;
      PREGION        at 16#6C0# range 0 .. 255;
   end record;

   --  Memory Watch Unit
   MWU_Periph : aliased MWU_Peripheral
     with Import, Address => MWU_Base;

end NRF52833_SVD.MWU;
