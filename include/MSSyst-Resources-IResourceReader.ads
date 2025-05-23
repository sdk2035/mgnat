-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Collections.IDictionaryEnumerator;
with MSSyst.Collections.IEnumerable;
with MSSyst.IDisposable;
package MSSyst.Resources.IResourceReader is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure Close(
      This : access Typ) is abstract;
   function GetEnumerator(
      This : access Typ) return access MSSyst.Collections.IDictionaryEnumerator.Typ'Class is abstract;
private
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
end MSSyst.Resources.IResourceReader;
pragma Import(MSIL,MSSyst.Resources.IResourceReader,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Resources.IResourceReader");
