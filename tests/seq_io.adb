with Ada.Sequential_IO;
procedure seq_io is
  package Boolean_IO is new Ada.Sequential_IO(Boolean);
  use Boolean_IO;
  Data_File : File_Type;
begin
  Create(Data_File,Name=>"Data_File");
  Write(Data_File,True);
  Close(Data_File);
end;