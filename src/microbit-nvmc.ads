pragma SPARK_Mode (On);
with Interfaces; use Interfaces;
with System;
with System.Storage_Elements;

package Microbit.NVMC is
   use type System.Storage_Elements.Integer_Address;

   --  The micro:bit v2 (nRF52833) has 512KB of flash memory.
   --  The flash is divided into 128 pages of 4096 bytes each.
   Page_Size   : constant := 4096;
   Total_Pages : constant := 128;
   
   --  Address of the start of the Flash.
   Flash_Base : constant System.Address := System'To_Address (16#0000_0000#);

   --  Type representing a 32-bit word, as NVMC operates on 32-bit words
   type Word is new Unsigned_32;

   --  Erases a single page of flash memory.
   --  Note: The nRF52833 requires a page to be erased before it can be written to.
   --  Erasing sets all bits in the page to 1 (0xFFFFFFFF).
   procedure Erase_Page (Page_Address : System.Address)
     with Pre => (System.Storage_Elements.To_Integer (Page_Address) mod System.Storage_Elements.Integer_Address (Page_Size)) = 0;

   --  Writes a single 32-bit word to the specified flash address.
   --  Note: Address must be 4-byte aligned. The memory location must have been erased first.
   procedure Write_Word (Address : System.Address; Data : Word)
     with Pre => (System.Storage_Elements.To_Integer (Address) mod 4) = 0;

   --  Reads a single 32-bit word from the specified flash address.
   --  Note: Address must be 4-byte aligned.
   function Read_Word (Address : System.Address) return Word
     with Pre => (System.Storage_Elements.To_Integer (Address) mod 4) = 0;

end Microbit.NVMC;
