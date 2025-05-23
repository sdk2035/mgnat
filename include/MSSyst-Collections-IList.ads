-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Collections.ICollection;
with MSSyst.Collections.IEnumerable;
package MSSyst.Collections.IList is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function Add(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return Integer is abstract;
   procedure Clear(
      This : access Typ) is abstract;
   function Contains(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return Standard.Boolean is abstract;
   function get_IsFixedSize(
      This : access Typ) return Standard.Boolean is abstract;
   function get_IsReadOnly(
      This : access Typ) return Standard.Boolean is abstract;
   function get_Item(
      This : access Typ;
      index : Integer) return access MSSyst.Object.Typ'Class is abstract;
   function IndexOf(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return Integer is abstract;
   procedure Insert(
      This : access Typ;
      index : Integer;
      value : access MSSyst.Object.Typ'Class) is abstract;
   procedure Remove(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) is abstract;
   procedure RemoveAt(
      This : access Typ;
      index : Integer) is abstract;
   procedure set_Item(
      This : access Typ;
      index : Integer;
      value : access MSSyst.Object.Typ'Class) is abstract;
private
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,Contains,"Contains");
   pragma Import(MSIL,get_IsFixedSize,"get_IsFixedSize");
   pragma Import(MSIL,get_IsReadOnly,"get_IsReadOnly");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,IndexOf,"IndexOf");
   pragma Import(MSIL,Insert,"Insert");
   pragma Import(MSIL,Remove,"Remove");
   pragma Import(MSIL,RemoveAt,"RemoveAt");
   pragma Import(MSIL,set_Item,"set_Item");
end MSSyst.Collections.IList;
pragma Import(MSIL,MSSyst.Collections.IList,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Collections.IList");
