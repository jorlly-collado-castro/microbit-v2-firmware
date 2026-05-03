pragma SPARK_Mode (On);

with Microbit.Pins;
with Interfaces;

package Microbit.Neopixel is

   type Color is record
      G : Interfaces.Unsigned_8;
      R : Interfaces.Unsigned_8;
      B : Interfaces.Unsigned_8;
   end record;

   type Color_Array is array (Natural range <>) of Color;

   --  Maximum number of NeoPixels supported by the internal EasyDMA buffer.
   Max_LEDs : constant := 64;

   --  Initialize NeoPixel driver using PWM1 and EasyDMA
   procedure Initialize (Pin : Microbit.Pins.Pin_Id := Microbit.Pins.P0);

   --  Update the physical NeoPixel strip with the provided colors.
   --  Colors'Length must not exceed Max_LEDs.
   procedure Show (Colors : Color_Array)
     with Pre => Colors'Length <= Max_LEDs;

end Microbit.Neopixel;