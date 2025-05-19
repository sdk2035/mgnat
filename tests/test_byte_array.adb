with Interfaces;
with Ada.Text_Io;

procedure Test_Byte_Array is

   subtype byte is Interfaces.Unsigned_8;  -- an unsigned byte

   type byte_array is array (1..1) of byte;
 
   Bytes : Byte_Array;
   Test  : Byte;

begin      
   Bytes (1) := Byte'Last;
   Ada.Text_Io.Put_Line ("Byte value (should be 255): " & Integer'Image (Integer (Bytes(1))));
   Test := Bytes (1);
   Ada.Text_Io.Put_Line ("Byte value after assigning to single byte (should be 255): " & Integer'Image (Integer (Test)));     
end Test_Byte_Array;
