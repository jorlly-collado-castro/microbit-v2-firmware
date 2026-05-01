with Microbit.Console;
with Microbit.Temperature;
with Ada.Real_Time; use Ada.Real_Time;

procedure Temperature is
   Temp_C : Float;

   --  Helper to format a float with 2 decimal places to avoid
   --  scientific notation
   function Format_Temp (T : Float) return String is
      Int_Part  : constant Integer := Integer (Float'Floor (T));
      Frac_Part : constant Integer := Integer ((T - Float (Int_Part)) * 100.0);

      Int_Str   : constant String  := Int_Part'Image;
      Frac_Str  : constant String  := Frac_Part'Image;

      --  'Image adds a leading space for positive numbers, so we slice it off
      Clean_Int : constant String  :=
        (if Int_Str (Int_Str'First) = ' '
         then Int_Str (Int_Str'First + 1 .. Int_Str'Last) else Int_Str);
      Clean_Frac : constant String :=
        (if Frac_Str (Frac_Str'First) = ' '
         then Frac_Str (Frac_Str'First + 1 .. Frac_Str'Last) else Frac_Str);
   begin
      return Clean_Int & "." &
             (if Frac_Part < 10 then "0" else "") &
             Clean_Frac;
   end Format_Temp;

begin
   Microbit.Console.Initialize;
   Microbit.Console.Put_Line ("Starting Micro:bit v2 Temperature Sensor...");

   loop
      Microbit.Temperature.Read (Temp_C);

      Microbit.Console.Put_Line
        ("Temperature: " & Format_Temp (Temp_C) & " C");

      --  Delay for 1 second. 'delay until' is safe here because 1000ms is
      --  well above the Ravenscar RTC1 tick resolution (~30.5us).
      delay until Clock + Milliseconds (1000);
   end loop;
end Temperature;
