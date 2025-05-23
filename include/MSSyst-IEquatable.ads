-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
generic
   type T is private;
package MSSyst.IEquatable is
   type T_Array is array(Integer range <>) of T;
   type T_Ref is access all T;
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function Equals(
      This : access Typ;
      other : T) return Standard.Boolean is abstract;
private
   pragma Import(MSIL,Equals,"Equals");
end MSSyst.IEquatable;
pragma Import(MSIL,MSSyst.IEquatable,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.IEquatable`1");
