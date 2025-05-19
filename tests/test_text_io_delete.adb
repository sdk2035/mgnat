with Ada.Text_Io;
use ada.Text_IO;
procedure Test_Text_Io_Delete is
   Bob : File_Type;
   String1 : String(1..80);
   String2 : String(1..80);
   last : natural;
begin
   Create(
      File => bob,
      Mode => out_file,
      Name => "test_text_io.txt");
   Put_Line(Bob,"testing");
   Close(Bob);
   Open(
      File => bob,
      Mode => in_file,
      Name => "test_text_io.txt");
   Get_Line(
      File => bob,
      Item => string1,
      Last => Last);
   Put_Line("expected ""testing"", got """ &
      string1(1..last) & """");
   Reset(Bob);
   Get_Line(
      File => bob,
      Item => string2,
      Last => Last);
   Put_Line("expected ""testing"", got """ &
      string2(1..last) & """");
   Close(Bob);
   Open(
      File => bob,
      Mode => out_file,
      Name => "test_text_io.txt");
   delete(bob);   
end Test_Text_Io_Delete;

