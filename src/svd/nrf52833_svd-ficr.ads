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

package NRF52833_SVD.FICR is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Description collection: Device identifier

   --  Description collection: Device identifier
   type DEVICEID_Registers is array (0 .. 1) of NRF52833_SVD.UInt32;

   --  Description collection: Encryption root, word n

   --  Description collection: Encryption root, word n
   type ER_Registers is array (0 .. 3) of NRF52833_SVD.UInt32;

   --  Description collection: Identity Root, word n

   --  Description collection: Identity Root, word n
   type IR_Registers is array (0 .. 3) of NRF52833_SVD.UInt32;

   --  Device address type
   type DEVICEADDRTYPE_DEVICEADDRTYPE_Field is
     (--  Public address
      Public,
      --  Random address
      Random)
     with Size => 1;
   for DEVICEADDRTYPE_DEVICEADDRTYPE_Field use
     (Public => 0,
      Random => 1);

   --  Device address type
   type DEVICEADDRTYPE_Register is record
      --  Read-only. Device address type
      DEVICEADDRTYPE : DEVICEADDRTYPE_DEVICEADDRTYPE_Field;
      --  unspecified
      Reserved_1_31  : NRF52833_SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVICEADDRTYPE_Register use record
      DEVICEADDRTYPE at 0 range 0 .. 0;
      Reserved_1_31  at 0 range 1 .. 31;
   end record;

   --  Description collection: Device address n

   --  Description collection: Device address n
   type DEVICEADDR_Registers is array (0 .. 1) of NRF52833_SVD.UInt32;

   -----------------------------------
   -- FICR_INFO cluster's Registers --
   -----------------------------------

   --  Device info
   type FICR_INFO_Cluster is record
      --  Part code
      PART      : aliased NRF52833_SVD.UInt32;
      --  Build code (hardware version and production configuration)
      VARIANT   : aliased NRF52833_SVD.UInt32;
      --  Package option
      PACKAGE_k : aliased NRF52833_SVD.UInt32;
      --  RAM variant
      RAM       : aliased NRF52833_SVD.UInt32;
      --  Flash variant
      FLASH     : aliased NRF52833_SVD.UInt32;
   end record
     with Size => 160;

   for FICR_INFO_Cluster use record
      PART      at 16#0# range 0 .. 31;
      VARIANT   at 16#4# range 0 .. 31;
      PACKAGE_k at 16#8# range 0 .. 31;
      RAM       at 16#C# range 0 .. 31;
      FLASH     at 16#10# range 0 .. 31;
   end record;

   --  Description collection: Production test signature n

   --  Description collection: Production test signature n
   type PRODTEST_Registers is array (0 .. 2) of NRF52833_SVD.UInt32;

   -----------------------------------
   -- FICR_TEMP cluster's Registers --
   -----------------------------------

   subtype A_A_Field is NRF52833_SVD.UInt12;

   --  Slope definition A0
   type A_Register is record
      --  Read-only. A (slope definition) register.
      A              : A_A_Field;
      --  unspecified
      Reserved_12_31 : NRF52833_SVD.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for A_Register use record
      A              at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype B_B_Field is NRF52833_SVD.UInt14;

   --  Y-intercept B0
   type B_Register is record
      --  Read-only. B (y-intercept)
      B              : B_B_Field;
      --  unspecified
      Reserved_14_31 : NRF52833_SVD.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for B_Register use record
      B              at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype T_T_Field is NRF52833_SVD.Byte;

   --  Segment end T0
   type T_Register is record
      --  Read-only. T (segment end) register
      T             : T_T_Field;
      --  unspecified
      Reserved_8_31 : NRF52833_SVD.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for T_Register use record
      T             at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Registers storing factory TEMP module linearization coefficients
   type FICR_TEMP_Cluster is record
      --  Slope definition A0
      A0 : aliased A_Register;
      --  Slope definition A1
      A1 : aliased A_Register;
      --  Slope definition A2
      A2 : aliased A_Register;
      --  Slope definition A3
      A3 : aliased A_Register;
      --  Slope definition A4
      A4 : aliased A_Register;
      --  Slope definition A5
      A5 : aliased A_Register;
      --  Y-intercept B0
      B0 : aliased B_Register;
      --  Y-intercept B1
      B1 : aliased B_Register;
      --  Y-intercept B2
      B2 : aliased B_Register;
      --  Y-intercept B3
      B3 : aliased B_Register;
      --  Y-intercept B4
      B4 : aliased B_Register;
      --  Y-intercept B5
      B5 : aliased B_Register;
      --  Segment end T0
      T0 : aliased T_Register;
      --  Segment end T1
      T1 : aliased T_Register;
      --  Segment end T2
      T2 : aliased T_Register;
      --  Segment end T3
      T3 : aliased T_Register;
      --  Segment end T4
      T4 : aliased T_Register;
   end record
     with Size => 544;

   for FICR_TEMP_Cluster use record
      A0 at 16#0# range 0 .. 31;
      A1 at 16#4# range 0 .. 31;
      A2 at 16#8# range 0 .. 31;
      A3 at 16#C# range 0 .. 31;
      A4 at 16#10# range 0 .. 31;
      A5 at 16#14# range 0 .. 31;
      B0 at 16#18# range 0 .. 31;
      B1 at 16#1C# range 0 .. 31;
      B2 at 16#20# range 0 .. 31;
      B3 at 16#24# range 0 .. 31;
      B4 at 16#28# range 0 .. 31;
      B5 at 16#2C# range 0 .. 31;
      T0 at 16#30# range 0 .. 31;
      T1 at 16#34# range 0 .. 31;
      T2 at 16#38# range 0 .. 31;
      T3 at 16#3C# range 0 .. 31;
      T4 at 16#40# range 0 .. 31;
   end record;

   ----------------------------------
   -- FICR_NFC cluster's Registers --
   ----------------------------------

   subtype TAGHEADER0_NFC_MFGID_Field is NRF52833_SVD.Byte;
   --  TAGHEADER0_NFC_UD array element
   subtype TAGHEADER0_NFC_UD_Element is NRF52833_SVD.Byte;

   --  TAGHEADER0_NFC_UD array
   type TAGHEADER0_NFC_UD_Field_Array is array (1 .. 3)
     of TAGHEADER0_NFC_UD_Element
     with Component_Size => 8, Size => 24;

   --  Type definition for TAGHEADER0_NFC_UD
   type TAGHEADER0_NFC_UD_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UD as a value
            Val : NRF52833_SVD.UInt24;
         when True =>
            --  UD as an array
            Arr : TAGHEADER0_NFC_UD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 24;

   for TAGHEADER0_NFC_UD_Field use record
      Val at 0 range 0 .. 23;
      Arr at 0 range 0 .. 23;
   end record;

   --  Default header for NFC tag. Software can read these values to populate
   --  NFCID1_3RD_LAST, NFCID1_2ND_LAST, and NFCID1_LAST.
   type TAGHEADER0_NFC_Register is record
      --  Read-only. Default Manufacturer ID: Nordic Semiconductor ASA has ICM
      --  0x5F
      MFGID : TAGHEADER0_NFC_MFGID_Field;
      --  Read-only. Unique identifier byte 1
      UD    : TAGHEADER0_NFC_UD_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAGHEADER0_NFC_Register use record
      MFGID at 0 range 0 .. 7;
      UD    at 0 range 8 .. 31;
   end record;

   --  TAGHEADER1_NFC_UD array element
   subtype TAGHEADER1_NFC_UD_Element is NRF52833_SVD.Byte;

   --  TAGHEADER1_NFC_UD array
   type TAGHEADER1_NFC_UD_Field_Array is array (4 .. 7)
     of TAGHEADER1_NFC_UD_Element
     with Component_Size => 8, Size => 32;

   --  Default header for NFC tag. Software can read these values to populate
   --  NFCID1_3RD_LAST, NFCID1_2ND_LAST, and NFCID1_LAST.
   type TAGHEADER1_NFC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UD as a value
            Val : NRF52833_SVD.UInt32;
         when True =>
            --  UD as an array
            Arr : TAGHEADER1_NFC_UD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAGHEADER1_NFC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  TAGHEADER2_NFC_UD array element
   subtype TAGHEADER2_NFC_UD_Element is NRF52833_SVD.Byte;

   --  TAGHEADER2_NFC_UD array
   type TAGHEADER2_NFC_UD_Field_Array is array (8 .. 11)
     of TAGHEADER2_NFC_UD_Element
     with Component_Size => 8, Size => 32;

   --  Default header for NFC tag. Software can read these values to populate
   --  NFCID1_3RD_LAST, NFCID1_2ND_LAST, and NFCID1_LAST.
   type TAGHEADER2_NFC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UD as a value
            Val : NRF52833_SVD.UInt32;
         when True =>
            --  UD as an array
            Arr : TAGHEADER2_NFC_UD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAGHEADER2_NFC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  TAGHEADER3_NFC_UD array element
   subtype TAGHEADER3_NFC_UD_Element is NRF52833_SVD.Byte;

   --  TAGHEADER3_NFC_UD array
   type TAGHEADER3_NFC_UD_Field_Array is array (12 .. 15)
     of TAGHEADER3_NFC_UD_Element
     with Component_Size => 8, Size => 32;

   --  Default header for NFC tag. Software can read these values to populate
   --  NFCID1_3RD_LAST, NFCID1_2ND_LAST, and NFCID1_LAST.
   type TAGHEADER3_NFC_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UD as a value
            Val : NRF52833_SVD.UInt32;
         when True =>
            --  UD as an array
            Arr : TAGHEADER3_NFC_UD_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TAGHEADER3_NFC_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Unspecified
   type FICR_NFC_Cluster is record
      --  Default header for NFC tag. Software can read these values to
      --  populate NFCID1_3RD_LAST, NFCID1_2ND_LAST, and NFCID1_LAST.
      TAGHEADER0 : aliased TAGHEADER0_NFC_Register;
      --  Default header for NFC tag. Software can read these values to
      --  populate NFCID1_3RD_LAST, NFCID1_2ND_LAST, and NFCID1_LAST.
      TAGHEADER1 : aliased TAGHEADER1_NFC_Register;
      --  Default header for NFC tag. Software can read these values to
      --  populate NFCID1_3RD_LAST, NFCID1_2ND_LAST, and NFCID1_LAST.
      TAGHEADER2 : aliased TAGHEADER2_NFC_Register;
      --  Default header for NFC tag. Software can read these values to
      --  populate NFCID1_3RD_LAST, NFCID1_2ND_LAST, and NFCID1_LAST.
      TAGHEADER3 : aliased TAGHEADER3_NFC_Register;
   end record
     with Size => 128;

   for FICR_NFC_Cluster use record
      TAGHEADER0 at 16#0# range 0 .. 31;
      TAGHEADER1 at 16#4# range 0 .. 31;
      TAGHEADER2 at 16#8# range 0 .. 31;
      TAGHEADER3 at 16#C# range 0 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Factory information configuration registers
   type FICR_Peripheral is record
      --  Code memory page size
      CODEPAGESIZE   : aliased NRF52833_SVD.UInt32;
      --  Code memory size
      CODESIZE       : aliased NRF52833_SVD.UInt32;
      --  Description collection: Device identifier
      DEVICEID       : aliased DEVICEID_Registers;
      --  Description collection: Encryption root, word n
      ER             : aliased ER_Registers;
      --  Description collection: Identity Root, word n
      IR             : aliased IR_Registers;
      --  Device address type
      DEVICEADDRTYPE : aliased DEVICEADDRTYPE_Register;
      --  Description collection: Device address n
      DEVICEADDR     : aliased DEVICEADDR_Registers;
      --  Device info
      INFO           : aliased FICR_INFO_Cluster;
      --  Description collection: Production test signature n
      PRODTEST       : aliased PRODTEST_Registers;
      --  Registers storing factory TEMP module linearization coefficients
      TEMP           : aliased FICR_TEMP_Cluster;
      --  Unspecified
      NFC            : aliased FICR_NFC_Cluster;
   end record
     with Volatile;

   for FICR_Peripheral use record
      CODEPAGESIZE   at 16#10# range 0 .. 31;
      CODESIZE       at 16#14# range 0 .. 31;
      DEVICEID       at 16#60# range 0 .. 63;
      ER             at 16#80# range 0 .. 127;
      IR             at 16#90# range 0 .. 127;
      DEVICEADDRTYPE at 16#A0# range 0 .. 31;
      DEVICEADDR     at 16#A4# range 0 .. 63;
      INFO           at 16#100# range 0 .. 159;
      PRODTEST       at 16#350# range 0 .. 95;
      TEMP           at 16#404# range 0 .. 543;
      NFC            at 16#450# range 0 .. 127;
   end record;

   --  Factory information configuration registers
   FICR_Periph : aliased FICR_Peripheral
     with Import, Address => FICR_Base;

end NRF52833_SVD.FICR;
