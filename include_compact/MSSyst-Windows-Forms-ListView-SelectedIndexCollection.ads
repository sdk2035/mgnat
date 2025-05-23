-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with MSSyst.Collections.IList;
with MSSyst.Collections.ICollection;
with type MSSyst.Array_k.Ref is access;
with type MSSyst.Collections.IEnumerator.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Windows.Forms.ListView.Ref is access;
package MSSyst.Windows.Forms.ListView.SelectedIndexCollection is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Collections.IList.Typ
         and MSSyst.Collections.ICollection.Typ
   with record
      null;
   end record;
   function new_SelectedIndexCollection(
      This : Ref := null;
      owner : MSSyst.Windows.Forms.ListView.Ref) return Ref;
   function Add(
      This : access Typ;
      itemIndex : Integer) return Integer;
   procedure Clear(
      This : access Typ);
   function Contains(
      This : access Typ;
      selectedIndex : Integer) return Standard.Boolean;
   procedure CopyTo(
      This : access Typ;
      dest : MSSyst.Array_k.Ref;
      index : Integer);
   function get_Count(
      This : access Typ) return Integer;
   function get_IsReadOnly(
      This : access Typ) return Standard.Boolean;
   function get_Item(
      This : access Typ;
      index : Integer) return Integer;
   function GetEnumerator(
      This : access Typ) return MSSyst.Collections.IEnumerator.Ref;
   function IndexOf(
      This : access Typ;
      selectedIndex : Integer) return Integer;
   procedure Remove(
      This : access Typ;
      itemIndex : Integer);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SelectedIndexCollection);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,Contains,"Contains");
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,get_Count,"get_Count");
   pragma Import(MSIL,get_IsReadOnly,"get_IsReadOnly");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
   pragma Import(MSIL,IndexOf,"IndexOf");
   pragma Import(MSIL,Remove,"Remove");
end MSSyst.Windows.Forms.ListView.SelectedIndexCollection;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ListView.SelectedIndexCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ListView/SelectedIndexCollection");
