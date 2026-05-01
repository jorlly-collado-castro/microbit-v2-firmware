pragma SPARK_Mode (Off);

with Microbit.Pins;
with Microbit.Display;

package body Microbit.Light_Sensor is

   Row_0 : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 21);

   --  Cols are needed to ensure they are driven high
   Cols : constant array (0 .. 4) of Microbit.Pins.Pin_Id :=
     ((Microbit.Pins.Port_0, 28),
      (Microbit.Pins.Port_0, 11),
      (Microbit.Pins.Port_0, 31),
      (Microbit.Pins.Port_1,  5),
      (Microbit.Pins.Port_0, 30));

   procedure Read (Level : out Natural) is
      Count     : Natural := 0;
      Max_Count : constant Natural := 65535; -- Arbitrary timeout limit
   begin
      --  1. Pause the display multiplexing to take control of the pins
      Microbit.Display.Pause;

      --  2. Drive all columns HIGH and Row 0 LOW to reverse bias the LED(s)
      for C in 0 .. 4 loop
         Microbit.Pins.Configure (Cols (C), Mode => Microbit.Pins.Output);
         Microbit.Pins.Set (Cols (C));
      end loop;
      
      Microbit.Pins.Configure (Row_0, Mode => Microbit.Pins.Output);
      Microbit.Pins.Clear (Row_0);

      --  Short delay to charge the LED capacitance
      for I in 1 .. 100 loop
         null;
      end loop;

      --  3. Set Row 0 to Input (no pull) to start the discharge measurement
      Microbit.Pins.Configure (Row_0, Mode => Microbit.Pins.Input, Pull => Microbit.Pins.Disabled);

      --  4. Measure how long it takes for the pin to float HIGH (LoToHi)
      --     More light = faster discharge = lower count.
      while not Microbit.Pins.Read (Row_0) and Count < Max_Count loop
         Count := Count + 1;
      end loop;

      --  5. Convert the count to a 0-255 brightness scale.
      --     If it timed out (Count = Max_Count), it's very dark (Level = 0).
      --     If it was instant (Count ~ 0), it's very bright (Level = 255).
      if Count >= Max_Count then
         Level := 0;
      else
         --  Scale it. (Adjust the divisor based on actual hardware testing).
         --  Typically, Count might be a few thousand in normal light.
         declare
            Scaled : constant Integer := 255 - (Count / 100);
         begin
            if Scaled < 0 then
               Level := 0;
            elsif Scaled > 255 then
               Level := 255;
            else
               Level := Natural (Scaled);
            end if;
         end;
      end if;

      --  6. Restore Row 0 back to Output Low (Display's neutral paused state)
      Microbit.Pins.Configure (Row_0, Mode => Microbit.Pins.Output);
      Microbit.Pins.Clear (Row_0);

      --  7. Resume the display
      Microbit.Display.Resume;
   end Read;

end Microbit.Light_Sensor;
