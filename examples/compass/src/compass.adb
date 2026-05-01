pragma SPARK_Mode (On);

with Microbit.Console;
with Microbit.I2C;
with Microbit.Magnetometer;
with Microbit.Accelerometer;
with Microbit.Display;
with Microbit.Buttons; use Microbit.Buttons;
with Microbit.PWM;
with Microbit.NVMC;
with System;
with Ada.Real_Time; use Ada.Real_Time;
with Ada.Numerics; use Ada.Numerics;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Unchecked_Conversion;

procedure Compass is
   Mag_Data   : Microbit.Magnetometer.Axis_Data;
   Accel_Data : Microbit.Accelerometer.Axis_Data;

   Min_X, Max_X : Integer;
   Min_Y, Max_Y : Integer;
   Min_Z, Max_Z : Integer;

   Offset_X, Offset_Y, Offset_Z : Float := 0.0;
   Heading : Float;

   Next_Release : Time;
   Period : constant Time_Span := Milliseconds (250);

   --  NVMC Persistent Storage
   --  Use the very last page of flash (512KB = 0x80000, last page = 0x7F000)
   Page_Address : constant System.Address := System'To_Address (16#0007_F000#);
   Magic_Valid  : constant Microbit.NVMC.Word := 16#CA11_BA5E#;

   function To_Word is
     new Ada.Unchecked_Conversion (Float, Microbit.NVMC.Word);
   function To_Float is
     new Ada.Unchecked_Conversion (Microbit.NVMC.Word, Float);

   use type Microbit.NVMC.Word;
   --  Offset addresses for NVMC (each word is 4 bytes)
   Addr_Magic : constant System.Address := Page_Address;
   Addr_Ox    : constant System.Address := System'To_Address (16#0007_F004#);
   Addr_Oy    : constant System.Address := System'To_Address (16#0007_F008#);
   Addr_Oz    : constant System.Address := System'To_Address (16#0007_F00C#);

   function Calculate_Heading
     (A : Microbit.Accelerometer.Float_Axis_Data;
      M : Microbit.Magnetometer.Axis_Data;
      Ox, Oy, Oz : Float) return Float
   is
      --  Our HAL outputs exactly NORTH_EAST_DOWN (NED) natively:
      --  HAL.X = -Raw_Y
      --  HAL.Y = -Raw_X
      --  HAL.Z =  Raw_Z

      --  Codal uses SIMPLE_CARTESIAN for Accelerometer Pitch/Roll:
      --  SC.X =  Raw_X = -HAL.Y
      --  SC.Y = -Raw_Y =  HAL.X
      --  SC.Z =  Raw_Z =  HAL.Z
      SC_X : constant Float := -A.Y;
      SC_Y : constant Float := A.X;
      SC_Z : constant Float := A.Z;

      Roll  : Float;
      Pitch : Float;
      Reference : Float;

      --  Apply hard-iron offsets (Result is NED because HAL is NED)
      NED_X : constant Float := Float (M.X) - Ox;
      NED_Y : constant Float := Float (M.Y) - Oy;
      NED_Z : constant Float := Float (M.Z) - Oz;

      Sin_Roll, Cos_Roll   : Float;
      Sin_Pitch, Cos_Pitch : Float;

      Bearing_Y, Bearing_X : Float;
      Bearing_Deg          : Float;
   begin
      --  Calculate Roll
      Roll := Arctan (Y => SC_X, X => -SC_Z);

      --  Calculate Pitch
      Pitch := Arctan
        (Y => SC_Y,
         X => (SC_X * Sin (Roll) - SC_Z * Cos (Roll)));

      --  Correct Pitch quadrant if SC_Z > 0.0
      if SC_Z > 0.0 then
         if Pitch > 0.0 then
            Reference := Pi / 2.0;
         else
            Reference := -Pi / 2.0;
         end if;
         Pitch := Reference + (Reference - Pitch);
      end if;

      --  Precompute trig functions
      Sin_Roll  := Sin (Roll);
      Cos_Roll  := Cos (Roll);
      Sin_Pitch := Sin (Pitch);
      Cos_Pitch := Cos (Pitch);

      --  Tilt compensated bearing math from Codal
      --  Codal uses atan2f(Y_param, X_param)
      Bearing_Y := NED_X * Cos_Pitch +
                   NED_Y * Sin_Pitch * Sin_Roll +
                   NED_Z * Sin_Pitch * Cos_Roll;
      Bearing_X := NED_Z * Sin_Roll - NED_Y * Cos_Roll;

      Bearing_Deg := Arctan (Y => Bearing_Y, X => Bearing_X) * 180.0 / Pi;

      --  Handle the 90 deg offset caused by the NORTH_EAST_DOWN calculation
      Bearing_Deg := 90.0 - Bearing_Deg;

      --  Ensure 0..359 range
      while Bearing_Deg < 0.0 loop
         Bearing_Deg := Bearing_Deg + 360.0;
      end loop;
      while Bearing_Deg >= 360.0 loop
         Bearing_Deg := Bearing_Deg - 360.0;
      end loop;

      return Bearing_Deg;
   end Calculate_Heading;

   Arrow_N : constant Microbit.Display.Matrix :=
     [[False, False, True,  False, False],
      [False, True,  True,  True,  False],
      [True,  False, True,  False, True],
      [False, False, True,  False, False],
      [False, False, True,  False, False]];

   Arrow_NE : constant Microbit.Display.Matrix :=
     [[False, False, True,  True,  True],
      [False, False, False, True,  True],
      [False, False, True,  False, True],
      [False, True,  False, False, False],
      [True,  False, False, False, False]];

   Arrow_E : constant Microbit.Display.Matrix :=
     [[False, False, True,  False, False],
      [False, False, False, True,  False],
      [True,  True,  True,  True,  True],
      [False, False, False, True,  False],
      [False, False, True,  False, False]];

   Arrow_SE : constant Microbit.Display.Matrix :=
     [[True,  False, False, False, False],
      [False, True,  False, False, False],
      [False, False, True,  False, True],
      [False, False, False, True,  True],
      [False, False, True,  True,  True]];

   Arrow_S : constant Microbit.Display.Matrix :=
     [[False, False, True,  False, False],
      [False, False, True,  False, False],
      [True,  False, True,  False, True],
      [False, True,  True,  True,  False],
      [False, False, True,  False, False]];

   Arrow_SW : constant Microbit.Display.Matrix :=
     [[False, False, False, False, True],
      [False, False, False, True,  False],
      [True,  False, True,  False, False],
      [True,  True,  False, False, False],
      [True,  True,  True,  False, False]];

   Arrow_W : constant Microbit.Display.Matrix :=
     [[False, False, True,  False, False],
      [False, True,  False, False, False],
      [True,  True,  True,  True,  True],
      [False, True,  False, False, False],
      [False, False, True,  False, False]];

   Arrow_NW : constant Microbit.Display.Matrix :=
     [[True,  True,  True,  False, False],
      [True,  True,  False, False, False],
      [True,  False, True,  False, False],
      [False, False, False, True,  False],
      [False, False, False, False, True]];

   Full_On : constant Microbit.Display.Matrix :=
     [[True, True, True, True, True],
      [True, True, True, True, True],
      [True, True, True, True, True],
      [True, True, True, True, True],
      [True, True, True, True, True]];

   Full_Off : constant Microbit.Display.Matrix :=
     [[False, False, False, False, False],
      [False, False, False, False, False],
      [False, False, False, False, False],
      [False, False, False, False, False],
      [False, False, False, False, False]];

   Needs_Calibration : Boolean := True;

begin
   Microbit.Console.Initialize;
   Microbit.Display.Initialize;
   Microbit.Buttons.Initialize;
   Microbit.PWM.Initialize;
   Microbit.Console.Put_Line ("Compass Example Started");

   Microbit.I2C.Initialize;
   Microbit.Accelerometer.Initialize;
   Microbit.Magnetometer.Initialize;

   --  Outer Application Loop
   loop
      --  Check if valid calibration exists in NVMC Flash
      if Microbit.NVMC.Read_Word (Addr_Magic) = Magic_Valid then
         Offset_X := To_Float (Microbit.NVMC.Read_Word (Addr_Ox));
         Offset_Y := To_Float (Microbit.NVMC.Read_Word (Addr_Oy));
         Offset_Z := To_Float (Microbit.NVMC.Read_Word (Addr_Oz));
         Needs_Calibration := False;
         Microbit.Console.Put_Line ("Loaded Calibration from Flash!");
      else
         Needs_Calibration := True;
      end if;

      if Needs_Calibration then
         Microbit.Console.Put_Line ("--- CALIBRATION PHASE ---");
         Microbit.Console.Put_Line
           ("Press Button A or B to start calibration.");
         Microbit.Display.Show (Full_On);

         loop
            declare
               Now : constant Time := Clock;
               SA  : constant Button_State := State (Button_A);
               SB  : constant Button_State := State (Button_B);
            begin
               exit when SA = Pressed or else SB = Pressed;
               delay until Now + Milliseconds (50);
            end;
         end loop;

         --  Wait for release
         loop
            declare
               Now : constant Time := Clock;
               SA  : constant Button_State := State (Button_A);
               SB  : constant Button_State := State (Button_B);
            begin
               exit when SA = Released and then SB = Released;
               delay until Now + Milliseconds (50);
            end;
         end loop;

         Microbit.Console.Put_Line
           ("Please tilt the board to fill the screen!");

         Min_X := Integer'Last;
         Max_X := Integer'First;
         Min_Y := Integer'Last;
         Max_Y := Integer'First;
         Min_Z := Integer'Last;
         Max_Z := Integer'First;

         declare
            subtype Coord is Microbit.Display.Pixel_Coordinate;
            Visited       : array (Coord, Coord) of Boolean :=
                              [others => [others => False]];
            Visited_Count : Natural := 0;
            Cursor_X      : Coord := 2;
            Cursor_Y      : Coord := 2;
            Accel_Mg      : Microbit.Accelerometer.Float_Axis_Data;
            Led_State      : Boolean := True;
            Next_Blink     : Time;
            Tone_End       : Time;
            Current_Screen : Microbit.Display.Matrix := Full_Off;

            --  Accelerometer thresholds (mg)
            Step           : constant := 300.0;
            State_Blink    : Boolean := True;
            PIXEL1_THRESHOLD : constant Float := 200.0;
            PIXEL2_THRESHOLD : constant Float := 680.0;
         begin
            declare
               Now : constant Time := Clock;
            begin
               Next_Blink := Now + Milliseconds (100);
               Tone_End   := Now;
            end;
            while Visited_Count < 25 loop
               Microbit.Accelerometer.Read_Data (Accel_Data);
               Accel_Mg := Microbit.Accelerometer.To_Milli_G (Accel_Data);

               --  Map X acceleration to column (0 .. 4)
               if Accel_Mg.X < -PIXEL2_THRESHOLD then
                  Cursor_X := 0;
               elsif Accel_Mg.X < -PIXEL1_THRESHOLD then
                  Cursor_X := 1;
               elsif Accel_Mg.X > PIXEL2_THRESHOLD then
                  Cursor_X := 4;
               elsif Accel_Mg.X > PIXEL1_THRESHOLD then
                  Cursor_X := 3;
               else
                  Cursor_X := 2;
               end if;

               --  Map Y acceleration to row (0 .. 4)
               if Accel_Mg.Y < -PIXEL2_THRESHOLD then
                  Cursor_Y := 0;
               elsif Accel_Mg.Y < -PIXEL1_THRESHOLD then
                  Cursor_Y := 1;
               elsif Accel_Mg.Y > PIXEL2_THRESHOLD then
                  Cursor_Y := 4;
               elsif Accel_Mg.Y > PIXEL1_THRESHOLD then
                  Cursor_Y := 3;
               else
                  Cursor_Y := 2;
               end if;

               --  Sample magnetometer if on a new pixel
               if not Visited (Cursor_X, Cursor_Y) then
                  Visited (Cursor_X, Cursor_Y) := True;
                  Visited_Count := Visited_Count + 1;

                  --  Play a beep with increasing pitch
                  Microbit.PWM.Set_Tone
                    (400.0 + Float (Visited_Count) * 40.0, 0.5);
                  declare
                     Now : constant Time := Clock;
                  begin
                     Tone_End := Now + Milliseconds (50);
                  end;

                  Microbit.Magnetometer.Read_Data (Mag_Data);
                  if Integer (Mag_Data.X) < Min_X then
                     Min_X := Integer (Mag_Data.X);
                  end if;
                  if Integer (Mag_Data.X) > Max_X then
                     Max_X := Integer (Mag_Data.X);
                  end if;
                  if Integer (Mag_Data.Y) < Min_Y then
                     Min_Y := Integer (Mag_Data.Y);
                  end if;
                  if Integer (Mag_Data.Y) > Max_Y then
                     Max_Y := Integer (Mag_Data.Y);
                  end if;
                  if Integer (Mag_Data.Z) < Min_Z then
                     Min_Z := Integer (Mag_Data.Z);
                  end if;
                  if Integer (Mag_Data.Z) > Max_Z then
                     Max_Z := Integer (Mag_Data.Z);
                  end if;
               end if;

            declare
               Now : constant Time := Clock;
            begin
               if Now >= Tone_End then
                  Microbit.PWM.Stop;
               end if;

               if Now >= Next_Blink then
                  State_Blink := not State_Blink;
                  Next_Blink := Next_Blink + Milliseconds (100);
               end if;
            end;

               --  Update blink state
               declare
                  Now : constant Time := Clock;
               begin
                  if Now >= Next_Blink then
                     Led_State := not Led_State;
                     Next_Blink := Next_Blink + Milliseconds (100);
                  end if;
               end;

               --  Render the screen
               for Y in Coord loop
                  for X in Coord loop
                     Current_Screen (Y, X) := Visited (X, Y);
                  end loop;
               end loop;

               --  Blink current cursor position
               Current_Screen (Cursor_Y, Cursor_X) := Led_State;

               Microbit.Display.Show (Current_Screen);

               declare
                  Now : constant Time := Clock;
               begin
                  delay until Now + Milliseconds (50);
               end;
            end loop;

            --  Ensure tone is explicitly stopped after the loop
            Microbit.PWM.Set_Tone (0.0, 0.0);
            Microbit.Display.Show (Full_Off);
         end;

         Offset_X := Float (Max_X + Min_X) / 2.0;
         Offset_Y := Float (Max_Y + Min_Y) / 2.0;
         Offset_Z := Float (Max_Z + Min_Z) / 2.0;

         Microbit.Console.Put_Line ("Calibration Complete!");

         --  Save to NVMC
         Microbit.NVMC.Erase_Page (Page_Address);
         Microbit.NVMC.Write_Word (Addr_Magic, Magic_Valid);
         Microbit.NVMC.Write_Word (Addr_Ox, To_Word (Offset_X));
         Microbit.NVMC.Write_Word (Addr_Oy, To_Word (Offset_Y));
         Microbit.NVMC.Write_Word (Addr_Oz, To_Word (Offset_Z));
         Microbit.Console.Put_Line ("Calibration Saved to Flash!");
      end if;

      --  Compass Mode
      Next_Release := Clock;
      loop
         Microbit.Accelerometer.Read_Data (Accel_Data);
         Microbit.Magnetometer.Read_Data (Mag_Data);

         --  Calculate tilt-compensated heading
         Heading := Calculate_Heading
           (A  => Microbit.Accelerometer.To_Milli_G (Accel_Data),
            M  => Mag_Data,
            Ox => Offset_X,
            Oy => Offset_Y,
            Oz => Offset_Z);

         --  Display the arrow pointing toward North.
         --  If Heading = 90 (Facing East), North is Left (Arrow_W).
         --  If Heading = 45 (Facing NE), North is Forward-Left (Arrow_NW).
         if Heading >= 337.5 or else Heading < 22.5 then
            Microbit.Display.Show (Arrow_N);
         elsif Heading >= 22.5 and then Heading < 67.5 then
            Microbit.Display.Show (Arrow_NW);
         elsif Heading >= 67.5 and then Heading < 112.5 then
            Microbit.Display.Show (Arrow_W);
         elsif Heading >= 112.5 and then Heading < 157.5 then
            Microbit.Display.Show (Arrow_SW);
         elsif Heading >= 157.5 and then Heading < 202.5 then
            Microbit.Display.Show (Arrow_S);
         elsif Heading >= 202.5 and then Heading < 247.5 then
            Microbit.Display.Show (Arrow_SE);
         elsif Heading >= 247.5 and then Heading < 292.5 then
            Microbit.Display.Show (Arrow_E);
         else
            Microbit.Display.Show (Arrow_NE);
         end if;

         --  Check if user wants to recalibrate
      declare
         SB : constant Button_State := State (Button_B);
      begin
         if SB = Pressed then
            Microbit.Console.Put_Line ("Button B pressed, erasing NVMC...");
            Microbit.NVMC.Erase_Page (Page_Address);
            Microbit.Console.Put_Line ("Erased. Halting.");
            loop
               declare
                  Now : constant Time := Clock;
               begin
                  delay until Now + Milliseconds (50);
               end;
            end loop;
         end if;
      end;

         Next_Release := Next_Release + Period;
         delay until Next_Release;
      end loop;
   end loop;
end Compass;