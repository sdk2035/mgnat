-- This package is designed to demonstrate a bug using object.method
-- notation in GAP 2005.
--
-- It seems to occur when you do:
-- obj.method(overloaded_function(param))

with Ada.Unchecked_Conversion;

package body Bug20050909a is
   function Convert is new Ada.Unchecked_Conversion(Float, Integer);
   function convert is new ada.Unchecked_Conversion(integer, float);
   -------------
   -- Set_Tag --
   -------------

   procedure Set_Tag (This : access Fred; Param : Integer) is
   begin
      null;
   end Set_Tag;

   procedure Bob is
      G : Fred_Ptr := new Fred;
      larry : float := 3.0;
   begin
      g.set_tag(convert(larry));
   end Bob;
   
end Bug20050909a;
