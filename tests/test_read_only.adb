with Ada.Text_IO;
use Ada.Text_IO;
procedure Test_Read_Only is
   File : File_Type;
   S    : String(1..100);
   Last : Natural;
begin
   Open(
      File => File,
      Mode => In_File,
      Name => "c:\d\rsrch\a#\mgnat\lib\mgnat\adalib\gnat.ali");
   Get_Line(File,S,Last);
   Put_Line(S(1..Last));
   Close(File);
end Test_Read_Only;


