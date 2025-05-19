--with mssyst.collections.specialized;
--use mssyst.collections.specialized;
--with MSSyst.Collections.Specialized.StringCollection;
--use MSSyst.Collections.Specialized.StringCollection;
with stringcollection;
use stringcollection;
procedure Test_Stringcollection is
   Arr : stringcollection.ref;
begin
   Arr := new_StringCollection;
   for I in 1 .. Arr.Get_Count
   loop
      null;
   end loop;
end Test_StringCollection;