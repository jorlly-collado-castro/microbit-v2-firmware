pragma SPARK_Mode (Off);
with Microbit.Pins;
with Ada.Real_Time; use Ada.Real_Time;
with Microbit.Display.Font;

package body Microbit.Display is

   Rows : constant array (Pixel_Coordinate) of Microbit.Pins.Pin_Id :=
     [(Microbit.Pins.Port_0, 21),
      (Microbit.Pins.Port_0, 22),
      (Microbit.Pins.Port_0, 15),
      (Microbit.Pins.Port_0, 24),
      (Microbit.Pins.Port_0, 19)];

   Cols : constant array (Pixel_Coordinate) of Microbit.Pins.Pin_Id :=
     [(Microbit.Pins.Port_0, 28),
      (Microbit.Pins.Port_0, 11),
      (Microbit.Pins.Port_0, 31),
      (Microbit.Pins.Port_1,  5),
      (Microbit.Pins.Port_0, 30)];

   type Display_Mode_Type is (Static, Scrolling);

   protected Display_State is
      procedure Show (Image : Matrix);
      procedure Clear;
      procedure Set_Pixel (X, Y : Pixel_Coordinate; State : Boolean);
      procedure Start_Scroll (Text : String; Speed : Integer);
      procedure Advance_Scroll;
      function Get return Matrix;
      procedure Start;
      procedure Pause;
      procedure Resume;
      function Is_Paused return Boolean;
      function Get_Scroll_Ticks return Integer;
      entry Wait_To_Start;
   private
      Mode          : Display_Mode_Type := Static;
      Current_Image : Matrix := [others => [others => False]];
      
      -- Scroll State
      Scroll_Buffer : String (1 .. 255) := [others => ' '];
      Scroll_Length : Natural := 0;
      Scroll_Offset : Integer := 0;
      Scroll_Speed_Ticks : Integer := 50; -- Derived from Delay_Ms / 3ms

      Is_Started    : Boolean := False;
      Paused        : Boolean := False;
   end Display_State;

   protected body Display_State is
      procedure Show (Image : Matrix) is
      begin
         Mode := Static;
         Current_Image := Image;
      end Show;

      procedure Clear is
      begin
         Mode := Static;
         Current_Image := [others => [others => False]];
      end Clear;

      procedure Set_Pixel (X, Y : Pixel_Coordinate; State : Boolean) is
      begin
         Mode := Static;
         Current_Image (Y, X) := State;
      end Set_Pixel;

      procedure Start_Scroll (Text : String; Speed : Integer) is
         L : constant Natural := Text'Length;
      begin
         Mode := Scrolling;
         Scroll_Length := L;
         if L > 0 then
            Scroll_Buffer (1 .. L) := Text;
         end if;
         Scroll_Offset := -5; -- Start with text off-screen to the right
         Scroll_Speed_Ticks := Speed / 3;
         if Scroll_Speed_Ticks <= 0 then
            Scroll_Speed_Ticks := 1;
         end if;
      end Start_Scroll;

      procedure Advance_Scroll is
         Total_Pixels : constant Integer := Scroll_Length * 6; -- 5 for char, 1 for space
      begin
         if Mode = Scrolling then
            Scroll_Offset := @ + 1;
            if Scroll_Offset >= Total_Pixels then
               Scroll_Offset := -5; -- Loop back
            end if;
         end if;
      end Advance_Scroll;

      function Get return Matrix is
         Result : Matrix := [others => [others => False]];
         Char_Idx : Integer;
         Col_In_Char : Integer;
         C : Character;
         Font_M : Microbit.Display.Font.Character_Matrix;
      begin
         if Mode = Static then
            return Current_Image;
         else
            -- Calculate frame based on Scroll_Offset
            for Screen_Col in Pixel_Coordinate loop
               declare
                  Global_Col : constant Integer := Scroll_Offset + Integer (Screen_Col);
               begin
                  if Global_Col >= 0 and Global_Col < Scroll_Length * 6 then
                     Char_Idx := (Global_Col / 6) + 1;
                     Col_In_Char := Global_Col mod 6;
                     if Col_In_Char < 5 then -- 5th col is space
                        C := Scroll_Buffer (Char_Idx);
                        if C in ' ' .. '~' then
                           Font_M := Microbit.Display.Font.Data (C);
                           for Row in Pixel_Coordinate loop
                              Result (Row, Screen_Col) := Font_M (Row, Pixel_Coordinate (Col_In_Char));
                           end loop;
                        end if;
                     end if;
                  end if;
               end;
            end loop;
            return Result;
         end if;
      end Get;

      function Get_Scroll_Ticks return Integer is
      begin
         return Scroll_Speed_Ticks;
      end Get_Scroll_Ticks;

      procedure Start is
      begin
         Is_Started := True;
      end Start;

      procedure Pause is
      begin
         Paused := True;
      end Pause;

      procedure Resume is
      begin
         Paused := False;
      end Resume;

      function Is_Paused return Boolean is
      begin
         return Paused;
      end Is_Paused;

      entry Wait_To_Start when Is_Started is
      begin
         null;
      end Wait_To_Start;
   end Display_State;

   task Refresher is
      pragma Priority (10);
   end Refresher;

   task body Refresher is
      Next_Time   : Time;
      Period      : constant Time_Span := Milliseconds (3); 
      Current_Row : Pixel_Coordinate := 0;
      Image       : Matrix;
      Tick_Counter : Integer := 0;
   begin
      Display_State.Wait_To_Start;
      Next_Time := Clock;
      
      loop
         if not Display_State.Is_Paused then
            -- Handle scrolling tick
            Tick_Counter := @ + 1;
            if Tick_Counter >= Display_State.Get_Scroll_Ticks then
               Display_State.Advance_Scroll;
               Tick_Counter := 0;
            end if;

            for C in Pixel_Coordinate loop
               Microbit.Pins.Set (Cols (C));
            end loop;
            for R in Pixel_Coordinate loop
               Microbit.Pins.Clear (Rows (R));
            end loop;

            Image := Display_State.Get;

            for C in Pixel_Coordinate loop
               if Image (Current_Row, C) then
                  Microbit.Pins.Clear (Cols (C));
               end if;
            end loop;

            Microbit.Pins.Set (Rows (Current_Row));
            Current_Row := (if Current_Row = Pixel_Coordinate'Last then 0 else @ + 1);
         else
            Tick_Counter := 0;
         end if;
         
         Next_Time := @ + Period;
         delay until Next_Time;
      end loop;
   end Refresher;

   --  Return the actual current image state for SPARK proof modeling
   function Pixel_State (X, Y : Pixel_Coordinate) return Boolean is
   begin
      return Display_State.Get (Y, X);
   end Pixel_State;

   procedure Initialize is
   begin
      for R in Pixel_Coordinate loop
         Microbit.Pins.Configure (Rows (R), Mode => Microbit.Pins.Output);
         Microbit.Pins.Clear (Rows (R));
      end loop;
      
      for C in Pixel_Coordinate loop
         Microbit.Pins.Configure (Cols (C), Mode => Microbit.Pins.Output);
         Microbit.Pins.Set (Cols (C));
      end loop;
      
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

   procedure Set_Pixel (X, Y : Pixel_Coordinate; State_Val : Boolean) is
   begin
      Display_State.Set_Pixel (X, Y, State_Val);
   end Set_Pixel;

   procedure Scroll (Text : String; Delay_Ms : Integer := 150) is
   begin
      Display_State.Start_Scroll (Text, Delay_Ms);
   end Scroll;

   procedure Pause is
   begin
      Display_State.Pause;
      
      for C in Pixel_Coordinate loop
         Microbit.Pins.Set (Cols (C));
      end loop;
      for R in Pixel_Coordinate loop
         Microbit.Pins.Clear (Rows (R));
      end loop;
   end Pause;

   procedure Resume is
   begin
      Display_State.Resume;
   end Resume;

end Microbit.Display;
