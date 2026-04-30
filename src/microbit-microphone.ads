pragma SPARK_Mode (On);
with System;

package Microbit.Microphone is

   --  Initializes the PDM microphone peripheral and enables the power regulator.
   procedure Initialize;

   --  Records audio from the microphone directly into the provided RAM buffer using EasyDMA.
   --  This procedure will block until the buffer is completely filled.
   --  EasyDMA MAXCNT is 15-bit, so buffer length must not exceed 32767.
   procedure Record_Sync (Buffer_Address : System.Address; Length : Natural)
     with Pre => Length <= 32767,
          SPARK_Mode => Off; -- Passing explicit Address is outside SPARK rules, but required for DMA safety

end Microbit.Microphone;
