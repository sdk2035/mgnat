with Msil_types;
with Mssyst.Console;
with Mssyst.String;
use Mssyst.String;
use Mssyst;

procedure Hello is
   str : string := "hello" & ASCII.NUL & "there";
   str2 : mssyst.string.ref := +str;
begin
   Console.WriteLine(str2);
   Console.WriteLine(str);
end Hello;
