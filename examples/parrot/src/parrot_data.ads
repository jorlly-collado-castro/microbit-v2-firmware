pragma SPARK_Mode (On);
with Microbit.Audio;

package Parrot_Data is
   --  32767 samples at ~16kHz = ~2 seconds of audio.
   --  Declared at library level to allocate in .bss, avoiding stack overflow!
   --  Note: EasyDMA MAXCNT is 15-bit, so max length is 32767 (not 32768).
   Buffer : aliased Microbit.Audio.Audio_Buffer (0 .. 32766) := (others => 0);
end Parrot_Data;
