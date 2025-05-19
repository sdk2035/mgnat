with Interfaces;
with Ada.Text_Io;
with Ada.Unchecked_Conversion;

procedure Test_Return_Convert is

   subtype Input_Buffer is String(1..64);
   type Word_Buffer     is array (0..15) of Interfaces.Unsigned_32;

   function Cvt is new Ada.Unchecked_Conversion(Input_Buffer, Word_Buffer);

   function Convert(Input : in Input_Buffer) return Word_buffer is
      Buffer : Input_Buffer := Input;
      --Buf    : Word_Buffer;
   begin
      return (Cvt (Buffer));

      -- However, this does work:
      --Buf := Cvt (Buffer);
      --return Buf;
   end Convert;

begin
   -- This program will cause a GNAT exception window
   -- It crashes the compiler in jvm.adb:2074
   -- Error detected at the return statement in Convert.
   --
   -- mcc: while there probably shouldn't be a bug box
   -- this kind of unchecked_conversion isn't currently
   -- supported.
   Ada.Text_Io.Put_Line ("Test return conversion");
end Test_Return_Convert;
