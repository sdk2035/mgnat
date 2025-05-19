with ada.strings.unbounded;
use ada.strings.unbounded;
with ada.unchecked_deallocation;
procedure test_finalize is
   x : unbounded_string;
   type fred is record
      z : unbounded_string;
   end record;
   type fred_ptr is access all fred;
begin
   x := to_unbounded_string("hi");
   declare 
      y : unbounded_string;
   begin
      y := to_unbounded_string("there");
   end;
   x := null_unbounded_string;
   declare
      q : fred_ptr := new fred;
      procedure free is new ada.unchecked_deallocation(name => fred_ptr, object => fred);
   begin
      q.z := to_unbounded_string("hi");
      free(q); -- the JGNAT folks never supported this?? (warning output)
   end;
end test_finalize;