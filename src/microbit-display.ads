pragma SPARK_Mode (On);
package Microbit.Display is

   type Matrix is array (0 .. 4, 0 .. 4) of Boolean;

   --  Initializes the LED matrix pins and starts the background refresh task.
   procedure Initialize;

   --  Set the entire display
   procedure Show (Image : Matrix);

   --  Clear the display
   procedure Clear;

   --  Set a specific pixel. X is column (0..4), Y is row (0..4)
   procedure Set_Pixel (X, Y : Integer; State : Boolean);

   --  Pre-defined images
   Heart : constant Matrix :=
     ((False, True,  False, True,  False),
      (True,  True,  True,  True,  True),
      (True,  True,  True,  True,  True),
      (False, True,  True,  True,  False),
      (False, False, True,  False, False));

end Microbit.Display;
