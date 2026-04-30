pragma SPARK_Mode (On);
package Microbit.Buttons is

   type Button_Id is (Button_A, Button_B);

   type Button_State is (Pressed, Released);

   procedure Initialize;

   function State (Button : Button_Id) return Button_State with Volatile_Function, Global => null;

end Microbit.Buttons;
