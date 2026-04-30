pragma SPARK_Mode (Off);

with NRF52833_SVD.TEMP;
with Ada.Unchecked_Conversion;
with Interfaces;

package body Microbit.Temperature is

   use type NRF52833_SVD.TEMP.EVENTS_DATARDY_EVENTS_DATARDY_Field;

   procedure Read (Result : out Float) is
      function To_Int32 is new Ada.Unchecked_Conversion (
         Source => NRF52833_SVD.UInt32,
         Target => Interfaces.Integer_32
      );

      Raw_Temp : Interfaces.Integer_32;
   begin
      --  Clear any stale ready event
      NRF52833_SVD.TEMP.TEMP_Periph.EVENTS_DATARDY.EVENTS_DATARDY := NRF52833_SVD.TEMP.NotGenerated;

      --  Trigger temperature measurement task
      NRF52833_SVD.TEMP.TEMP_Periph.TASKS_START.TASKS_START := NRF52833_SVD.TEMP.Trigger;

      --  Wait for measurement to complete
      while NRF52833_SVD.TEMP.TEMP_Periph.EVENTS_DATARDY.EVENTS_DATARDY = NRF52833_SVD.TEMP.NotGenerated loop
         null;
      end loop;

      --  Clear event so it's ready for the next read
      NRF52833_SVD.TEMP.TEMP_Periph.EVENTS_DATARDY.EVENTS_DATARDY := NRF52833_SVD.TEMP.NotGenerated;

      --  Stop measurement task to save power (optional but recommended for one-shot)
      NRF52833_SVD.TEMP.TEMP_Periph.TASKS_STOP.TASKS_STOP := NRF52833_SVD.TEMP.Trigger;

      --  Read the TEMP register (which stores the temp in 0.25deg steps, 2's complement)
      Raw_Temp := To_Int32 (NRF52833_SVD.TEMP.TEMP_Periph.TEMP);

      --  Convert to float Celsius
      Result := Float (Raw_Temp) * 0.25;
   end Read;

end Microbit.Temperature;
