pragma SPARK_Mode (On);
with Microbit.Audio;

package Microbit.Microphone is

   --  Initializes the PDM microphone peripheral and enables the power regulator.
   procedure Initialize;

   --  Records audio from the microphone directly into the provided RAM buffer using EasyDMA.
   --  This procedure will block until the buffer is completely filled.
   procedure Record_Sync (Data : out Microbit.Audio.Audio_Buffer);

end Microbit.Microphone;
