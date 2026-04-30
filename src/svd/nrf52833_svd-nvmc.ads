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

package NRF52833_SVD.NVMC is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  NVMC is ready or busy
   type READY_READY_Field is
     (--  NVMC is busy (on-going write or erase operation)
      Busy,
      --  NVMC is ready
      Ready)
     with Size => 1;
   for READY_READY_Field use
     (Busy => 0,
      Ready => 1);

   --  Ready flag
   type READY_Register is record
      --  Read-only. NVMC is ready or busy
      READY         : READY_READY_Field;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for READY_Register use record
      READY         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  NVMC can accept a new write operation
   type READYNEXT_READYNEXT_Field is
     (--  NVMC cannot accept any write operation
      Busy,
      --  NVMC is ready
      Ready)
     with Size => 1;
   for READYNEXT_READYNEXT_Field use
     (Busy => 0,
      Ready => 1);

   --  Ready flag
   type READYNEXT_Register is record
      --  Read-only. NVMC can accept a new write operation
      READYNEXT     : READYNEXT_READYNEXT_Field;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for READYNEXT_Register use record
      READYNEXT     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Program memory access mode. It is strongly recommended to only activate
   --  erase and write modes when they are actively used. Enabling write or
   --  erase will invalidate the cache and keep it invalidated.
   type CONFIG_WEN_Field is
     (--  Read only access
      Ren,
      --  Write enabled
      Wen,
      --  Erase enabled
      Een)
     with Size => 2;
   for CONFIG_WEN_Field use
     (Ren => 0,
      Wen => 1,
      Een => 2);

   --  Configuration register
   type CONFIG_Register is record
      --  Program memory access mode. It is strongly recommended to only
      --  activate erase and write modes when they are actively used. Enabling
      --  write or erase will invalidate the cache and keep it invalidated.
      WEN           : CONFIG_WEN_Field := NRF52833_SVD.NVMC.Ren;
      --  unspecified
      Reserved_2_31 : NRF52833_SVD.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      WEN           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Erase all non-volatile memory including UICR registers. The erase must
   --  be enabled using CONFIG.WEN before the non-volatile memory can be
   --  erased.
   type ERASEALL_ERASEALL_Field is
     (--  No operation
      NoOperation,
      --  Start chip erase
      Erase)
     with Size => 1;
   for ERASEALL_ERASEALL_Field use
     (NoOperation => 0,
      Erase => 1);

   --  Register for erasing all non-volatile user memory
   type ERASEALL_Register is record
      --  Write-only. Erase all non-volatile memory including UICR registers.
      --  The erase must be enabled using CONFIG.WEN before the non-volatile
      --  memory can be erased.
      ERASEALL      : ERASEALL_ERASEALL_Field :=
                       NRF52833_SVD.NVMC.NoOperation;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERASEALL_Register use record
      ERASEALL      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Register starting erase of all user information configuration registers.
   --  The erase must be enabled using CONFIG.WEN before the UICR can be
   --  erased.
   type ERASEUICR_ERASEUICR_Field is
     (--  No operation
      NoOperation,
      --  Start erase of UICR
      Erase)
     with Size => 1;
   for ERASEUICR_ERASEUICR_Field use
     (NoOperation => 0,
      Erase => 1);

   --  Register for erasing user information configuration registers
   type ERASEUICR_Register is record
      --  Write-only. Register starting erase of all user information
      --  configuration registers. The erase must be enabled using CONFIG.WEN
      --  before the UICR can be erased.
      ERASEUICR     : ERASEUICR_ERASEUICR_Field :=
                       NRF52833_SVD.NVMC.NoOperation;
      --  unspecified
      Reserved_1_31 : NRF52833_SVD.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERASEUICR_Register use record
      ERASEUICR     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ERASEPAGEPARTIALCFG_DURATION_Field is NRF52833_SVD.UInt7;

   --  Register for partial erase configuration
   type ERASEPAGEPARTIALCFG_Register is record
      --  Duration of the partial erase in milliseconds
      DURATION      : ERASEPAGEPARTIALCFG_DURATION_Field := 16#A#;
      --  unspecified
      Reserved_7_31 : NRF52833_SVD.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERASEPAGEPARTIALCFG_Register use record
      DURATION      at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  Cache enable
   type ICACHECNF_CACHEEN_Field is
     (--  Disable cache. Invalidates all cache entries.
      Disabled,
      --  Enable cache
      Enabled)
     with Size => 1;
   for ICACHECNF_CACHEEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  Cache profiling enable
   type ICACHECNF_CACHEPROFEN_Field is
     (--  Disable cache profiling
      Disabled,
      --  Enable cache profiling
      Enabled)
     with Size => 1;
   for ICACHECNF_CACHEPROFEN_Field use
     (Disabled => 0,
      Enabled => 1);

   --  I-code cache configuration register
   type ICACHECNF_Register is record
      --  Cache enable
      CACHEEN       : ICACHECNF_CACHEEN_Field := NRF52833_SVD.NVMC.Disabled;
      --  unspecified
      Reserved_1_7  : NRF52833_SVD.UInt7 := 16#0#;
      --  Cache profiling enable
      CACHEPROFEN   : ICACHECNF_CACHEPROFEN_Field :=
                       NRF52833_SVD.NVMC.Disabled;
      --  unspecified
      Reserved_9_31 : NRF52833_SVD.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ICACHECNF_Register use record
      CACHEEN       at 0 range 0 .. 0;
      Reserved_1_7  at 0 range 1 .. 7;
      CACHEPROFEN   at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type NVMC_Disc is
     (AGE,
      CR1);

   --  Non Volatile Memory Controller
   type NVMC_Peripheral
     (Discriminent : NVMC_Disc := AGE)
   is record
      --  Ready flag
      READY               : aliased READY_Register;
      --  Ready flag
      READYNEXT           : aliased READYNEXT_Register;
      --  Configuration register
      CONFIG              : aliased CONFIG_Register;
      --  Register for erasing all non-volatile user memory
      ERASEALL            : aliased ERASEALL_Register;
      --  Deprecated register - Register for erasing a page in code area,
      --  equivalent to ERASEPAGE
      ERASEPCR0           : aliased NRF52833_SVD.UInt32;
      --  Register for erasing user information configuration registers
      ERASEUICR           : aliased ERASEUICR_Register;
      --  Register for partial erase of a page in code area
      ERASEPAGEPARTIAL    : aliased NRF52833_SVD.UInt32;
      --  Register for partial erase configuration
      ERASEPAGEPARTIALCFG : aliased ERASEPAGEPARTIALCFG_Register;
      --  I-code cache configuration register
      ICACHECNF           : aliased ICACHECNF_Register;
      --  I-code cache hit counter
      IHIT                : aliased NRF52833_SVD.UInt32;
      --  I-code cache miss counter
      IMISS               : aliased NRF52833_SVD.UInt32;
      case Discriminent is
         when AGE =>
            --  Register for erasing a page in code area
            ERASEPAGE : aliased NRF52833_SVD.UInt32;
         when CR1 =>
            --  Deprecated register - Register for erasing a page in code area,
            --  equivalent to ERASEPAGE
            ERASEPCR1 : aliased NRF52833_SVD.UInt32;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for NVMC_Peripheral use record
      READY               at 16#400# range 0 .. 31;
      READYNEXT           at 16#408# range 0 .. 31;
      CONFIG              at 16#504# range 0 .. 31;
      ERASEALL            at 16#50C# range 0 .. 31;
      ERASEPCR0           at 16#510# range 0 .. 31;
      ERASEUICR           at 16#514# range 0 .. 31;
      ERASEPAGEPARTIAL    at 16#518# range 0 .. 31;
      ERASEPAGEPARTIALCFG at 16#51C# range 0 .. 31;
      ICACHECNF           at 16#540# range 0 .. 31;
      IHIT                at 16#548# range 0 .. 31;
      IMISS               at 16#54C# range 0 .. 31;
      ERASEPAGE           at 16#508# range 0 .. 31;
      ERASEPCR1           at 16#508# range 0 .. 31;
   end record;

   --  Non Volatile Memory Controller
   NVMC_Periph : aliased NVMC_Peripheral
     with Import, Address => NVMC_Base;

end NRF52833_SVD.NVMC;
