pragma SPARK_Mode (Off);
with Microbit.Microphone;

package body Sound_Meter_Data is

   protected body Shared_Level is
      procedure Set (L : Float) is
      begin
         Current_Level := L;
      end Set;

      function Get return Float is
      begin
         return Current_Level;
      end Get;
   end Shared_Level;

   protected body Sync is
      entry Wait when Started is
      begin
         null;
      end Wait;

      procedure Start is
      begin
         Started := True;
      end Start;
   end Sync;

   task body Audio_Sampler is
      L : Float;
   begin
      -- Wait for main procedure to initialize peripherals
      Sync.Wait;

      loop
         -- Record a chunk of audio based on the configured window time
         Microbit.Microphone.Record_Sync (Buffer'Address, Samples_Per_Window);
         
         -- Calculate Sound Level (0 - 255 scale)
         L := Microbit.Audio.Calculate_Sound_Level (Buffer(Buffer'First .. Buffer'First + Samples_Per_Window - 1));
         
         -- Update shared level
         Shared_Level.Set (L);
      end loop;
   end Audio_Sampler;

end Sound_Meter_Data;
