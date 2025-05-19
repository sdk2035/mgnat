with Ada.Strings.Bounded;
use Ada.Strings.Bounded;
with Ada.Text_IO;
use Ada.Text_Io;
with MSSyst.Drawing.Size;

procedure Test_Task_String is
   
   function Nothing return String is
   begin
      return "";
   end Nothing;
   
   task Dummy is
      entry Start;
   end Dummy;
   
   task body Dummy is 
        Ch : Character;
   begin
      accept Start;
      declare
         Tmp_Str   : String := Nothing ;
         Siz : MSSyst.Drawing.Size.Valuetype;
      begin
         put_line("started");
         delay 1.0;
         Siz := MSSyst.Drawing.Size.New_Size(220,30);
         for I in --Tmp_Str'range loop    -- Ok !
                  1.. Tmp_Str'Length loop  -- Fails
            Ch := Tmp_Str (I);
         end loop;
      end;
   end Dummy;
   
begin
  Dummy.Start;
end Test_Task_String;
