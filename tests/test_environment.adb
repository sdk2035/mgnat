with mssyst.environment;
with mssyst.environment_specialfolder;
with ada.text_io;
with mssyst.string;
use mssyst.string;
procedure test_environment is
begin 
   ada.text_io.put_line(+mssyst.environment.GetFolderPath(
mssyst.environment_specialfolder.desktopdirectory));
end test_environment;