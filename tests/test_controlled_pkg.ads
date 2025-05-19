with ada.finalization;
use ada.finalization;

with ada.strings.unbounded;
use ada.strings.unbounded;

package test_controlled_pkg is
   type larry is new controlled with record
      z : integer;
   end record;
   type larry_ptr is access all larry'class;
   procedure Initialize(This : in out larry);
   procedure Finalize(This : in out larry);

   type fred is new controlled with record
      x : integer;
      y : unbounded_string;
      z : larry;
   end record;
   type fred_ptr is access all fred'class;
   procedure Initialize(This : in out fred);
   procedure Finalize(This : in out Fred);
end test_controlled_pkg;