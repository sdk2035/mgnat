-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Collections.ArrayList;
with MSSyst.Collections.IList;
with MSSyst.Collections.ICollection;
with MSSyst.ICloneable;
with type MSSyst.Object.Ref is access;
with type MSSyst.Collections.IComparer.Ref is access;
with type MSSyst.Array_k.Ref is access;
with type MSSyst.Collections.IEnumerator.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Object.Ref_array is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.DomainUpDown.DomainUpDownItemCollection is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Collections.ArrayList.Typ
         and MSSyst.Collections.IList.Typ
         and MSSyst.Collections.ICollection.Typ
         and MSSyst.ICloneable.Typ
   with record
      null;
   end record;
   function Add(
      This : access Typ;
      item : MSSyst.Object.Ref) return Integer;
   function get_Item(
      This : access Typ;
      index : Integer) return MSSyst.Object.Ref;
   procedure Insert(
      This : access Typ;
      index : Integer;
      item : MSSyst.Object.Ref);
   procedure Remove(
      This : access Typ;
      item : MSSyst.Object.Ref);
   procedure RemoveAt(
      This : access Typ;
      item : Integer);
   procedure set_Item(
      This : access Typ;
      index : Integer;
      value : MSSyst.Object.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,Insert,"Insert");
   pragma Import(MSIL,Remove,"Remove");
   pragma Import(MSIL,RemoveAt,"RemoveAt");
   pragma Import(MSIL,set_Item,"set_Item");
end MSSyst.Windows.Forms.DomainUpDown.DomainUpDownItemCollection;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.DomainUpDown.DomainUpDownItemCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.DomainUpDown/DomainUpDownItemCollection");
