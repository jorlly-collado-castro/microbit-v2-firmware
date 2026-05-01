with Microbit.Console;
with Microbit.Display;
with Microbit.NVMC;
with Microbit.Buttons;
with System;
with Ada.Real_Time; use Ada.Real_Time;

procedure Nvmc is
   --  Use the very last page of flash to avoid overwriting our own code!
   --  512KB = 0x80000 bytes. Last page = 0x80000 - 0x1000 = 0x7F000
   Page_Address : constant System.Address := System'To_Address (16#0007_F000#);

   use type Microbit.NVMC.Word;
   use type Microbit.Buttons.Button_State;

   Saved_Counter : Microbit.NVMC.Word;
   Read_Value    : Microbit.NVMC.Word;

   --  Helper for printing hex using Console (very basic)
   procedure Put_Hex (Val : Microbit.NVMC.Word) is
   begin
      Microbit.Console.Put ("0x");
      Microbit.Console.Put_Line (Val'Image);
   end Put_Hex;

   procedure Update_Display is
      --  'Image adds a leading space, we can trim it by taking a slice.
      Num_Str : constant String := Saved_Counter'Image;
      Msg     : constant String :=
        Num_Str (Num_Str'First + 1 .. Num_Str'Last) & "   ";
   begin
      Microbit.Display.Scroll (Msg, 100); -- Scroll a bit faster
   end Update_Display;

begin
   Microbit.Console.Initialize;
   Microbit.Display.Initialize;
   Microbit.Buttons.Initialize;

   Microbit.Console.Put_Line ("Starting NVMC Flash Storage Example...");

   --  1. Read the current value
   Read_Value := Microbit.NVMC.Read_Word (Page_Address);
   Microbit.Console.Put ("Current Value in Flash: ");
   Put_Hex (Read_Value);

   --  2. Determine the counter. If flash is empty (0xFFFFFFFF), start at 0.
   Saved_Counter := (if Read_Value = 16#FFFF_FFFF# then 0 else Read_Value);

   Update_Display;

   Microbit.Console.Put_Line
     ("Press Button A to increment and save counter to Flash.");
   Microbit.Console.Put_Line ("Press Button B to erase the Flash page.");

   loop
      if Microbit.Buttons.State (Microbit.Buttons.Button_A) =
         Microbit.Buttons.Pressed
      then
         Saved_Counter := @ + 1;

         Microbit.Console.Put ("Saving ");
         Put_Hex (Saved_Counter);

         --  We MUST erase the page before we can write to it again in flash.
         --  Note: In a real app, use wear-leveling to avoid erasing
         --  the page on every single write.
         Microbit.NVMC.Erase_Page (Page_Address);
         Microbit.NVMC.Write_Word (Page_Address, Saved_Counter);

         Microbit.Console.Put_Line ("Saved!");
         Update_Display;

         --  Wait for release
         while Microbit.Buttons.State (Microbit.Buttons.Button_A) =
               Microbit.Buttons.Pressed
         loop
            delay until Clock + Milliseconds (10);
         end loop;

      elsif Microbit.Buttons.State (Microbit.Buttons.Button_B) =
            Microbit.Buttons.Pressed
      then
         Microbit.Console.Put_Line ("Erasing Page...");

         Microbit.NVMC.Erase_Page (Page_Address);
         Saved_Counter := 16#FFFF_FFFF#;

         Microbit.Console.Put_Line ("Page Erased!");
         Update_Display;

         --  Wait for release
         while Microbit.Buttons.State (Microbit.Buttons.Button_B) =
               Microbit.Buttons.Pressed
         loop
            delay until Clock + Milliseconds (10);
         end loop;
      end if;
      delay until Clock + Milliseconds (50);
   end loop;
end Nvmc;
