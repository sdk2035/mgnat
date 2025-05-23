-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
package StringCollection is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is tagged record
      null;
   end record;
   function new_StringCollection(
      This : Ref := null) return Ref;
   function get_Count(
      This : access Typ) return Integer;
--private
   --pragma Convention(MSIL,Typ);
   --pragma MSIL_Constructor(new_StringCollection);
   --pragma Import(MSIL,get_Count,"get_Count");
end StringCollection;
--pragma Extensions_Allowed(Off);
--pragma Import(MSIL,StringCollection,
--   ".ver 1:0:5000:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
--   "[System]System.Collections.Specialized.StringCollection");
