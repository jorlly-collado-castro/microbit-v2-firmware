with NRF52833_SVD.GPIO; use NRF52833_SVD.GPIO;
with NRF52833_SVD;      use NRF52833_SVD;
with Interfaces;        use Interfaces;

package body Microbit.Pins is

   procedure Configure (Pin  : Pin_Id;
                        Mode : Pin_Mode;
                        Pull : Pull_Resistor := Disabled)
   is
      Dir_Val  : constant PIN_CNF_DIR_Field :=
        (if Mode = Output then Output else Input);
      Inp_Val  : constant PIN_CNF_INPUT_Field :=
        (if Mode = Output then Disconnect else Connect);
      Pull_Val : PIN_CNF_PULL_Field;
   begin
      case Pull is
         when Disabled  => Pull_Val := Disabled;
         when Pull_Down => Pull_Val := Pulldown;
         when Pull_Up   => Pull_Val := Pullup;
      end case;

      if Pin.Port = Port_0 then
         P0_Periph.PIN_CNF (Integer (Pin.Pin)) :=
           (DIR    => Dir_Val,
            INPUT  => Inp_Val,
            PULL   => Pull_Val,
            DRIVE  => S0S1,
            SENSE  => Disabled,
            Others => <>);
      else
         P1_Periph.PIN_CNF (Integer (Pin.Pin)) :=
           (DIR    => Dir_Val,
            INPUT  => Inp_Val,
            PULL   => Pull_Val,
            DRIVE  => S0S1,
            SENSE  => Disabled,
            Others => <>);
      end if;
   end Configure;

   procedure Set (Pin : Pin_Id) is
      Mask : constant UInt32 := UInt32 (Shift_Left (Unsigned_32'(1), Natural (Pin.Pin)));
   begin
      if Pin.Port = Port_0 then
         P0_Periph.OUTSET.Val := Mask;
      else
         P1_Periph.OUTSET.Val := Mask;
      end if;
   end Set;

   procedure Clear (Pin : Pin_Id) is
      Mask : constant UInt32 := UInt32 (Shift_Left (Unsigned_32'(1), Natural (Pin.Pin)));
   begin
      if Pin.Port = Port_0 then
         P0_Periph.OUTCLR.Val := Mask;
      else
         P1_Periph.OUTCLR.Val := Mask;
      end if;
   end Clear;

   procedure Toggle (Pin : Pin_Id) is
   begin
      if Read (Pin) then
         Clear (Pin);
      else
         Set (Pin);
      end if;
   end Toggle;

   function Read (Pin : Pin_Id) return Boolean is
   begin
      if Pin.Port = Port_0 then
         return P0_Periph.IN_k.Arr (Integer (Pin.Pin)) = High;
      else
         return P1_Periph.IN_k.Arr (Integer (Pin.Pin)) = High;
      end if;
   end Read;

end Microbit.Pins;
