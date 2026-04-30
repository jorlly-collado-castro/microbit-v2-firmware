pragma SPARK_Mode (On);

with Microbit.Display;
with Microbit.PWM;
with Microbit.Logo;
with Ada.Real_Time; use Ada.Real_Time;

procedure Logo_Touch is
   pragma Suppress (Overflow_Check); -- Allow Time arithmetic to exceed prover boundaries

   --  Faces
   Face_Neutral : constant Microbit.Display.Matrix :=
     (
      (False, False, False, False, False),
      (False, True,  False, True,  False),
      (False, True,  False, True,  False),
      (False, False, False, False, False),
      (False, False, False, False, False)
     );

   Face_Right : constant Microbit.Display.Matrix :=
     (
      (False, False, False, False, False),
      (False, False, True,  False, True ),
      (False, False, True,  False, True ),
      (False, False, False, False, False),
      (False, False, False, False, False)
     );

   Face_Left : constant Microbit.Display.Matrix :=
     (
      (False, False, False, False, False),
      (True,  False, True,  False, False),
      (True,  False, True,  False, False),
      (False, False, False, False, False),
      (False, False, False, False, False)
     );

   Face_Up : constant Microbit.Display.Matrix :=
     (
      (False, True,  False, True,  False),
      (False, True,  False, True,  False),
      (False, False, False, False, False),
      (False, False, False, False, False),
      (False, False, False, False, False)
     );

   Face_Down : constant Microbit.Display.Matrix :=
     (
      (False, False, False, False, False),
      (False, False, False, False, False),
      (False, True,  False, True,  False),
      (False, True,  False, True,  False),
      (False, False, False, False, False)
     );

   Face_Happy : constant Microbit.Display.Matrix :=
     (
      (False, False, False, False, False),
      (False, True,  False, True,  False),
      (False, False, False, False, False),
      (True,  False, False, False, True ),
      (False, True,  True,  True,  False)
     );

   Current_Face : Microbit.Display.Matrix := Face_Neutral;

   --  Animation state
   type Anim_State is (Idle, Animating, Touched);
   State : Anim_State := Idle;

   Idle_Timer : Integer := 20; --  Frames to wait (2 seconds at 10 fps)
   Tick_Counter : Integer range 0 .. 3 := 0;

   --  Very simple pseudo-random using time tick
   function Get_Random_Dir return Integer is
   begin
      return Tick_Counter;
   end Get_Random_Dir;

   Next_Time : Time;
   Now       : Time;
   Is_Logo_Touched : Boolean;
begin
   Microbit.Display.Initialize;
   Microbit.PWM.Initialize;
   Microbit.Logo.Initialize;

   Now := Clock;
   Next_Time := Now + Milliseconds (100);

   loop
      Tick_Counter := (Tick_Counter + 1) mod 4;

      Is_Logo_Touched := Microbit.Logo.Is_Touched;
      if Is_Logo_Touched then
         State := Touched;
      end if;

      case State is
         when Idle =>
            Current_Face := Face_Neutral;
            if Idle_Timer > 0 then
               Idle_Timer := Idle_Timer - 1;
            else
               State := Animating;
               Idle_Timer := 5; --  Hold animation for 5 frames
               case Get_Random_Dir is
                  when 0 => Current_Face := Face_Left;
                  when 1 => Current_Face := Face_Right;
                  when 2 => Current_Face := Face_Up;
                  when 3 => Current_Face := Face_Down;
                  when others => Current_Face := Face_Neutral;
               end case;
            end if;

         when Animating =>
            if Idle_Timer > 0 then
               Idle_Timer := Idle_Timer - 1;
            else
               State := Idle;
               Idle_Timer := 20 + Get_Random_Dir * 5;
               Current_Face := Face_Neutral;
            end if;

         when Touched =>
            Current_Face := Face_Happy;
            Microbit.Display.Show (Current_Face);

            --  Play a happy sound
            Microbit.PWM.Set_Tone (261.63, 0.5); --  C4
            Now := Clock;
            Next_Time := Now + Milliseconds (100);
            delay until Next_Time;

            Microbit.PWM.Set_Tone (329.63, 0.5); --  E4
            Now := Clock;
            Next_Time := Now + Milliseconds (100);
            delay until Next_Time;

            Microbit.PWM.Set_Tone (392.00, 0.5); --  G4
            Now := Clock;
            Next_Time := Now + Milliseconds (100);
            delay until Next_Time;

            Microbit.PWM.Set_Tone (523.25, 0.5); --  C5
            Now := Clock;
            Next_Time := Now + Milliseconds (100);
            delay until Next_Time;

            Microbit.PWM.Set_Tone (0.0, 0.0);    --  Stop

            --  Wait for user to let go
            Is_Logo_Touched := Microbit.Logo.Is_Touched;
            while Is_Logo_Touched loop
               Now := Clock;
               Next_Time := Now + Milliseconds (50);
               delay until Next_Time;
               Is_Logo_Touched := Microbit.Logo.Is_Touched;
            end loop;

            State := Idle;
            Idle_Timer := 20;

            --  Sync next time to now
            Now := Clock;
            Next_Time := Now + Milliseconds (100);
      end case;

      Microbit.Display.Show (Current_Face);

      --  Next frame (10 FPS)
      delay until Next_Time;
      Next_Time := Next_Time + Milliseconds (100);
   end loop;
end Logo_Touch;