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
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Windows.Forms.ListBox.Ref is access;
package MSSyst.Windows.Forms.ListBox.IntegerCollection is
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
   function new_IntegerCollection(
      This : Ref := null;
      owner : MSSyst.Windows.Forms.ListBox.Ref) return Ref;
   function Add(
      This : access Typ;
      item : Integer) return Integer;
   procedure AddRange(
      This : access Typ;
      items : MSIL_Types.Int32_Arr);
   procedure AddRange(
      This : access Typ;
      value : MSSyst.Windows.Forms.ListBox.IntegerCollection.Ref);
   procedure Clear(
      This : access Typ);
   function Contains(
      This : access Typ;
      item : Integer) return Standard.Boolean;
   procedure CopyTo(
      This : access Typ;
      destination : MSSyst.Array_k.Ref;
      index : Integer);
   function get_Count(
      This : access Typ) return Integer;
   function get_Item(
      This : access Typ;
      index : Integer) return Integer;
   function IndexOf(
      This : access Typ;
      item : Integer) return Integer;
   procedure Remove(
      This : access Typ;
      item : Integer);
   procedure RemoveAt(
      This : access Typ;
      index : Integer);
   procedure set_Item(
      This : access Typ;
      index : Integer;
      value : Integer);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_IntegerCollection);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,AddRange,"AddRange");
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,Contains,"Contains");
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,get_Count,"get_Count");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,IndexOf,"IndexOf");
   pragma Import(MSIL,Remove,"Remove");
   pragma Import(MSIL,RemoveAt,"RemoveAt");
   pragma Import(MSIL,set_Item,"set_Item");
end MSSyst.Windows.Forms.ListBox.IntegerCollection;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ListBox.IntegerCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ListBox/IntegerCollection");
