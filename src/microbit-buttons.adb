pragma SPARK_Mode (Off);
with Microbit.Pins;

package body Microbit.Buttons is

   Button_A_Pin : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 14);
   Button_B_Pin : constant Microbit.Pins.Pin_Id := (Microbit.Pins.Port_0, 23);

   procedure Initialize is
   begin
      Microbit.Pins.Configure (Button_A_Pin, Mode => Microbit.Pins.Input, Pull => Microbit.Pins.Pull_Up);
      Microbit.Pins.Configure (Button_B_Pin, Mode => Microbit.Pins.Input, Pull => Microbit.Pins.Pull_Up);
   end Initialize;

   function State (Button : Button_Id) return Button_State is
      Pin : Microbit.Pins.Pin_Id;
   begin
      case Button is
         when Button_A =>
            Pin := Button_A_Pin;
         when Button_B =>
            Pin := Button_B_Pin;
      end case;

      if Microbit.Pins.Read (Pin) then
         return Released;
      else
         return Pressed;
      end if;
   end State;

end Microbit.Buttons;
