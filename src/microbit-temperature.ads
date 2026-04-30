pragma SPARK_Mode (On);

package Microbit.Temperature is

   --  Reads the internal die temperature of the nRF52833 chip.
   --  Returns the temperature in Celsius (with 0.25 degree resolution).
   procedure Read (Result : out Float);

end Microbit.Temperature;
