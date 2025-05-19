-- This package is designed to demonstrate a bug using object.method
-- notation in GAP 2005.
--
-- It seems to occur when you do:
-- obj.method(overloaded_function(param))

package Bug20050909a is

   type Fred is tagged record 
      X : Integer;
   end record;
   
   type Fred_Ptr is access all Fred'Class;
   
   procedure Set_Tag(This : access Fred; Param : Integer);
   
end Bug20050909a;

