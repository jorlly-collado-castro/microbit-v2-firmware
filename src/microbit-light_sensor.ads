pragma SPARK_Mode (On);

package Microbit.Light_Sensor is

   --  Reads the ambient light level using the LED Matrix in reverse-bias mode.
   --  The result is an unsigned 8-bit value (0 to 255) where 0 is dark and 255 is bright.
   --  Note: This temporarily pauses the display task to measure the discharge time.
   procedure Read (Level : out Natural);

end Microbit.Light_Sensor;
