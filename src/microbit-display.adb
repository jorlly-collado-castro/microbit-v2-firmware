with Microbit.Pins;
with Ada.Real_Time; use Ada.Real_Time;

package body Microbit.Display is

   Rows : constant array (0 .. 4) of Microbit.Pins.Pin_Id :=
     ((Microbit.Pins.Port_0, 21),
      (Microbit.Pins.Port_0, 22),
      (Microbit.Pins.Port_0, 15),
      (Microbit.Pins.Port_0, 24),
      (Microbit.Pins.Port_0, 19));

   Cols : constant array (0 .. 4) of Microbit.Pins.Pin_Id :=
     ((Microbit.Pins.Port_0, 28),
      (Microbit.Pins.Port_0, 11),
      (Microbit.Pins.Port_0, 31),
      (Microbit.Pins.Port_1,  5),
      (Microbit.Pins.Port_0, 30));

   protected Display_State is
      procedure Show (Image : Matrix);
      procedure Clear;
      procedure Set_Pixel (X, Y : Integer; State : Boolean);
      function Get return Matrix;
      procedure Start;
      entry Wait_To_Start;
   private
      Current_Image : Matrix := (others => (others => False));
      Is_Started    : Boolean := False;
   end Display_State;

   protected body Display_State is
      procedure Show (Image : Matrix) is
      begin
         Current_Image := Image;
      end Show;

      procedure Clear is
      begin
         Current_Image := (others => (others => False));
      end Clear;

      procedure Set_Pixel (X, Y : Integer; State : Boolean) is
      begin
         if X in 0 .. 4 and then Y in 0 .. 4 then
            Current_Image (Y, X) := State;
         end if;
      end Set_Pixel;

      function Get return Matrix is
      begin
         return Current_Image;
      end Get;

      procedure Start is
      begin
         Is_Started := True;
      end Start;

      entry Wait_To_Start when Is_Started is
      begin
         null;
      end Wait_To_Start;
   end Display_State;

   task Refresher is
      pragma Priority (10); -- Give refresh task a decently high priority
   end Refresher;

   task body Refresher is
      Next_Time   : Time;
      -- Refresh rate ~ 60 Hz total -> 5 rows, so each row gets ~3.3ms
      Period      : constant Time_Span := Milliseconds (3); 
      Current_Row : Integer := 0;
      Image       : Matrix;
   begin
      Display_State.Wait_To_Start;
      Next_Time := Clock;
      
      loop
         -- Turn off all columns and previous row to prevent ghosting
         for C in 0 .. 4 loop
            Microbit.Pins.Set (Cols (C)); -- Col HIGH = Off
         end loop;
         for R in 0 .. 4 loop
            Microbit.Pins.Clear (Rows (R)); -- Row LOW = Off
         end loop;

         -- Get current state safely
         Image := Display_State.Get;

         -- Set current row columns (X is Col, Y is Row)
         for C in 0 .. 4 loop
            if Image (Current_Row, C) then
               Microbit.Pins.Clear (Cols (C)); -- Col LOW = On
            end if;
         end loop;

         -- Enable current row
         Microbit.Pins.Set (Rows (Current_Row)); -- Row HIGH = On

         Current_Row := (Current_Row + 1) mod 5;
         
         Next_Time := Next_Time + Period;
         delay until Next_Time;
      end loop;
   end Refresher;

   procedure Initialize is
   begin
      -- Configure Rows as outputs and default Low
      for R in 0 .. 4 loop
         Microbit.Pins.Configure (Rows (R), Mode => Microbit.Pins.Output);
         Microbit.Pins.Clear (Rows (R));
      end loop;
      
      -- Configure Cols as outputs and default High
      for C in 0 .. 4 loop
         Microbit.Pins.Configure (Cols (C), Mode => Microbit.Pins.Output);
         Microbit.Pins.Set (Cols (C));
      end loop;
      
      -- Start the background refresh task
      Display_State.Start;
   end Initialize;

   procedure Show (Image : Matrix) is
   begin
      Display_State.Show (Image);
   end Show;

   procedure Clear is
   begin
      Display_State.Clear;
   end Clear;

   procedure Set_Pixel (X, Y : Integer; State : Boolean) is
   begin
      Display_State.Set_Pixel (X, Y, State);
   end Set_Pixel;

end Microbit.Display;