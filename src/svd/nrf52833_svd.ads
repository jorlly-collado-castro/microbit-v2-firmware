pragma Warnings (Off);
pragma SPARK_Mode (Off);
pragma Style_Checks (Off);
pragma Restrictions (No_Elaboration_Code);

with System;

package NRF52833_SVD is
   pragma Preelaborate;

   type Bit is mod 2**1
     with Size => 1;

   type UInt2 is mod 2**2
     with Size => 2;

   type UInt3 is mod 2**3
     with Size => 3;

   type UInt4 is mod 2**4
     with Size => 4;

   type UInt5 is mod 2**5
     with Size => 5;

   type UInt6 is mod 2**6
     with Size => 6;

   type UInt7 is mod 2**7
     with Size => 7;

   type Byte is mod 2**8
     with Size => 8;

   type UInt9 is mod 2**9
     with Size => 9;

   type UInt10 is mod 2**10
     with Size => 10;

   type UInt11 is mod 2**11
     with Size => 11;

   type UInt12 is mod 2**12
     with Size => 12;

   type UInt13 is mod 2**13
     with Size => 13;

   type UInt14 is mod 2**14
     with Size => 14;

   type UInt15 is mod 2**15
     with Size => 15;

   type UInt16 is mod 2**16
     with Size => 16;

   type UInt17 is mod 2**17
     with Size => 17;

   type UInt18 is mod 2**18
     with Size => 18;

   type UInt19 is mod 2**19
     with Size => 19;

   type UInt20 is mod 2**20
     with Size => 20;

   type UInt21 is mod 2**21
     with Size => 21;

   type UInt22 is mod 2**22
     with Size => 22;

   type UInt23 is mod 2**23
     with Size => 23;

   type UInt24 is mod 2**24
     with Size => 24;

   type UInt25 is mod 2**25
     with Size => 25;

   type UInt26 is mod 2**26
     with Size => 26;

   type UInt27 is mod 2**27
     with Size => 27;

   type UInt28 is mod 2**28
     with Size => 28;

   type UInt29 is mod 2**29
     with Size => 29;

   type UInt30 is mod 2**30
     with Size => 30;

   type UInt31 is mod 2**31
     with Size => 31;

   type UInt32 is mod 2**32
     with Size => 32;

   --------------------
   -- Base addresses --
   --------------------

   FICR_Base : constant System.Address := System'To_Address (16#10000000#);
   UICR_Base : constant System.Address := System'To_Address (16#10001000#);
   CLOCK_Base : constant System.Address := System'To_Address (16#40000000#);
   POWER_Base : constant System.Address := System'To_Address (16#40000000#);
   P0_Base : constant System.Address := System'To_Address (16#50000000#);
   P1_Base : constant System.Address := System'To_Address (16#50000300#);
   RADIO_Base : constant System.Address := System'To_Address (16#40001000#);
   UART0_Base : constant System.Address := System'To_Address (16#40002000#);
   UARTE0_Base : constant System.Address := System'To_Address (16#40002000#);
   SPI0_Base : constant System.Address := System'To_Address (16#40003000#);
   SPIM0_Base : constant System.Address := System'To_Address (16#40003000#);
   SPIS0_Base : constant System.Address := System'To_Address (16#40003000#);
   TWI0_Base : constant System.Address := System'To_Address (16#40003000#);
   TWIM0_Base : constant System.Address := System'To_Address (16#40003000#);
   TWIS0_Base : constant System.Address := System'To_Address (16#40003000#);
   SPI1_Base : constant System.Address := System'To_Address (16#40004000#);
   SPIM1_Base : constant System.Address := System'To_Address (16#40004000#);
   SPIS1_Base : constant System.Address := System'To_Address (16#40004000#);
   TWI1_Base : constant System.Address := System'To_Address (16#40004000#);
   TWIM1_Base : constant System.Address := System'To_Address (16#40004000#);
   TWIS1_Base : constant System.Address := System'To_Address (16#40004000#);
   NFCT_Base : constant System.Address := System'To_Address (16#40005000#);
   GPIOTE_Base : constant System.Address := System'To_Address (16#40006000#);
   SAADC_Base : constant System.Address := System'To_Address (16#40007000#);
   TIMER0_Base : constant System.Address := System'To_Address (16#40008000#);
   TIMER1_Base : constant System.Address := System'To_Address (16#40009000#);
   TIMER2_Base : constant System.Address := System'To_Address (16#4000A000#);
   RTC0_Base : constant System.Address := System'To_Address (16#4000B000#);
   TEMP_Base : constant System.Address := System'To_Address (16#4000C000#);
   RNG_Base : constant System.Address := System'To_Address (16#4000D000#);
   ECB_Base : constant System.Address := System'To_Address (16#4000E000#);
   AAR_Base : constant System.Address := System'To_Address (16#4000F000#);
   CCM_Base : constant System.Address := System'To_Address (16#4000F000#);
   WDT_Base : constant System.Address := System'To_Address (16#40010000#);
   RTC1_Base : constant System.Address := System'To_Address (16#40011000#);
   QDEC_Base : constant System.Address := System'To_Address (16#40012000#);
   COMP_Base : constant System.Address := System'To_Address (16#40013000#);
   LPCOMP_Base : constant System.Address := System'To_Address (16#40013000#);
   EGU0_Base : constant System.Address := System'To_Address (16#40014000#);
   SWI0_Base : constant System.Address := System'To_Address (16#40014000#);
   EGU1_Base : constant System.Address := System'To_Address (16#40015000#);
   SWI1_Base : constant System.Address := System'To_Address (16#40015000#);
   EGU2_Base : constant System.Address := System'To_Address (16#40016000#);
   SWI2_Base : constant System.Address := System'To_Address (16#40016000#);
   EGU3_Base : constant System.Address := System'To_Address (16#40017000#);
   SWI3_Base : constant System.Address := System'To_Address (16#40017000#);
   EGU4_Base : constant System.Address := System'To_Address (16#40018000#);
   SWI4_Base : constant System.Address := System'To_Address (16#40018000#);
   EGU5_Base : constant System.Address := System'To_Address (16#40019000#);
   SWI5_Base : constant System.Address := System'To_Address (16#40019000#);
   TIMER3_Base : constant System.Address := System'To_Address (16#4001A000#);
   TIMER4_Base : constant System.Address := System'To_Address (16#4001B000#);
   PWM0_Base : constant System.Address := System'To_Address (16#4001C000#);
   PDM_Base : constant System.Address := System'To_Address (16#4001D000#);
   ACL_Base : constant System.Address := System'To_Address (16#4001E000#);
   NVMC_Base : constant System.Address := System'To_Address (16#4001E000#);
   PPI_Base : constant System.Address := System'To_Address (16#4001F000#);
   MWU_Base : constant System.Address := System'To_Address (16#40020000#);
   PWM1_Base : constant System.Address := System'To_Address (16#40021000#);
   PWM2_Base : constant System.Address := System'To_Address (16#40022000#);
   SPI2_Base : constant System.Address := System'To_Address (16#40023000#);
   SPIM2_Base : constant System.Address := System'To_Address (16#40023000#);
   SPIS2_Base : constant System.Address := System'To_Address (16#40023000#);
   RTC2_Base : constant System.Address := System'To_Address (16#40024000#);
   I2S_Base : constant System.Address := System'To_Address (16#40025000#);
   FPU_Base : constant System.Address := System'To_Address (16#40026000#);
   USBD_Base : constant System.Address := System'To_Address (16#40027000#);
   UARTE1_Base : constant System.Address := System'To_Address (16#40028000#);
   PWM3_Base : constant System.Address := System'To_Address (16#4002D000#);
   SPIM3_Base : constant System.Address := System'To_Address (16#4002F000#);

end NRF52833_SVD;
