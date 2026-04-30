pragma SPARK_Mode (On);
with Microbit.Audio;

package Sound_Meter_Data is
   --  Audio sampling configuration
   Sample_Rate_Hz : constant := 11_004; -- Based on NRF52833 SAADC timer config
   RMS_Window_MS  : constant := 45;     -- The "smoothing window" time in milliseconds
   Samples_Per_Window : constant := (Sample_Rate_Hz * RMS_Window_MS) / 1000;

   Buffer : aliased Microbit.Audio.Audio_Buffer (0 .. 2047) := (others => 0);

   protected Shared_Level is
      procedure Set (L : Float);
      function Get return Float;
   private
      Current_Level : Float := 0.0;
   end Shared_Level;

   protected Sync is
      entry Wait;
      procedure Start;
   private
      Started : Boolean := False;
   end Sync;

   task Audio_Sampler with Priority => 10;

end Sound_Meter_Data;
