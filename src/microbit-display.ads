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
   procedure Set_Pixel (X, Y : Integer; State : Boolean)
     with Pre => X in 0 .. 4 and Y in 0 .. 4;

   --  Pause the background refresh task (useful for using the LED matrix as a sensor)
   procedure Pause;

   --  Resume the background refresh task
   procedure Resume;

   --  Pre-defined images
   Heart : constant Matrix :=
     ((False, True,  False, True,  False),
      (True,  True,  True,  True,  True),
      (True,  True,  True,  True,  True),
      (False, True,  True,  True,  False),
      (False, False, True,  False, False));

   --  Scroll text continuously in the background.
   --  Delay_Ms defines the speed (lower is faster).
   procedure Scroll (Text : String; Delay_Ms : Integer := 150)
     with Pre => Text'Length <= 255 and Delay_Ms > 0;

end Microbit.Display;
