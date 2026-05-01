pragma SPARK_Mode (On);
package Microbit.Display
  with Abstract_State => (State)
is

   type Pixel_Coordinate is range 0 .. 4;
   type Matrix is array (Pixel_Coordinate, Pixel_Coordinate) of Boolean;

   --  Ghost function to query the current logical state of a pixel
   function Pixel_State (X, Y : Pixel_Coordinate) return Boolean
     with Ghost, Global => State;

   --  Initializes the LED matrix pins and starts the background refresh task.
   procedure Initialize
     with Global => (In_Out => State);

   --  Set the entire display
   procedure Show (Image : Matrix)
     with Global => (In_Out => State),
          Post   => (for all X in Pixel_Coordinate =>
                       (for all Y in Pixel_Coordinate =>
                          Pixel_State (X, Y) = Image (Y, X)));

   --  Clear the display
   procedure Clear
     with Global => (In_Out => State),
          Post   => (for all X in Pixel_Coordinate =>
                       (for all Y in Pixel_Coordinate =>
                          Pixel_State (X, Y) = False));

   --  Set a specific pixel. X is column, Y is row
   procedure Set_Pixel (X, Y : Pixel_Coordinate; State_Val : Boolean)
     with Global => (In_Out => State),
          Post   => Pixel_State (X, Y) = State_Val;

   --  Pause the background refresh task (useful for using the LED matrix as a sensor)
   procedure Pause
     with Global => (In_Out => State);

   --  Resume the background refresh task
   procedure Resume
     with Global => (In_Out => State);

   --  Pre-defined images
   Heart : constant Matrix :=
     [[False, True,  False, True,  False],
      [True,  True,  True,  True,  True],
      [True,  True,  True,  True,  True],
      [False, True,  True,  True,  False],
      [False, False, True,  False, False]];

   --  Scroll text continuously in the background.
   --  Delay_Ms defines the speed (lower is faster).
   procedure Scroll (Text : String; Delay_Ms : Integer := 150)
     with Global => (In_Out => State),
          Pre => Text'Length <= 255 and Delay_Ms > 0;

end Microbit.Display;
