pragma SPARK_Mode (On);

package Microbit.Logo is

   procedure Initialize;

   function Is_Touched return Boolean with Volatile_Function;

end Microbit.Logo;
