pragma SPARK_Mode (Off);
with NRF52833_SVD.NVMC;
with System.Storage_Elements; use System.Storage_Elements;

package body Microbit.NVMC is

   use type NRF52833_SVD.NVMC.READY_READY_Field;

   --  Wait until the NVMC is ready to accept a new command
   procedure Wait_Ready is
   begin
      while NRF52833_SVD.NVMC.NVMC_Periph.READY.READY = NRF52833_SVD.NVMC.Busy loop
         null;
      end loop;
   end Wait_Ready;

   procedure Erase_Page (Page_Address : System.Address) is
      Addr_Int : constant Unsigned_32 := Unsigned_32 (To_Integer (Page_Address));
   begin
      Wait_Ready;

      --  Enable erase mode
      NRF52833_SVD.NVMC.NVMC_Periph.CONFIG.WEN := NRF52833_SVD.NVMC.Een;
      
      --  Start page erase
      NRF52833_SVD.NVMC.NVMC_Periph.ERASEPAGE := NRF52833_SVD.UInt32 (Addr_Int);
      
      Wait_Ready;

      --  Return to read-only mode
      NRF52833_SVD.NVMC.NVMC_Periph.CONFIG.WEN := NRF52833_SVD.NVMC.Ren;
   end Erase_Page;

   procedure Write_Word (Address : System.Address; Data : Word) is
      Target : Word
        with Import, Address => Address;
   begin
      Wait_Ready;

      --  Enable write mode
      NRF52833_SVD.NVMC.NVMC_Periph.CONFIG.WEN := NRF52833_SVD.NVMC.Wen;
      
      --  Write data directly to memory-mapped flash
      Target := Data;
      
      Wait_Ready;

      --  Return to read-only mode
      NRF52833_SVD.NVMC.NVMC_Periph.CONFIG.WEN := NRF52833_SVD.NVMC.Ren;
   end Write_Word;

   function Read_Word (Address : System.Address) return Word is
      Source : Word
        with Import, Address => Address;
   begin
      --  Flash memory can be read directly like normal memory
      --  (Assuming WEN is already Ren, which it defaults to)
      return Source;
   end Read_Word;

end Microbit.NVMC;
