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
limited with MSSyst.Collections.IEnumerator;
with MSSyst.Collections.IList;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.Windows.Forms.ListBox;
package MSSyst.Windows.Forms.ListBox.ObjectCollection is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Collections.IList.Typ
         and MSSyst.Collections.ICollection.Typ
         and MSSyst.Collections.IEnumerable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ObjectCollection(
      This : Ref := null;
      owner : access MSSyst.Windows.Forms.ListBox.Typ'Class) return Ref;
   function new_ObjectCollection(
      This : Ref := null;
      owner : access MSSyst.Windows.Forms.ListBox.Typ'Class;
      value : access MSSyst.Windows.Forms.ListBox.ObjectCollection.Typ'Class) return Ref;
   function new_ObjectCollection(
      This : Ref := null;
      owner : access MSSyst.Windows.Forms.ListBox.Typ'Class;
      value : access MSSyst.Object.Ref_arr) return Ref;
   function Add(
      This : access Typ;
      item : access MSSyst.Object.Typ'Class) return Integer;
   procedure AddRange(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ListBox.ObjectCollection.Typ'Class);
   procedure AddRange(
      This : access Typ;
      items : access MSSyst.Object.Ref_arr);
   procedure Clear(
      This : access Typ);
   function Contains(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   procedure CopyTo(
      This : access Typ;
      destination : access MSSyst.Object.Ref_arr;
      arrayIndex : Integer);
   function get_Count(
      This : access Typ) return Integer;
   function get_IsReadOnly(
      This : access Typ) return Standard.Boolean;
   function get_Item(
      This : access Typ;
      index : Integer) return access MSSyst.Object.Typ'Class;
   function GetEnumerator(
      This : access Typ) return access MSSyst.Collections.IEnumerator.Typ'Class;
   function IndexOf(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return Integer;
   procedure Insert(
      This : access Typ;
      index : Integer;
      item : access MSSyst.Object.Typ'Class);
   procedure Remove(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class);
   procedure RemoveAt(
      This : access Typ;
      index : Integer);
   procedure set_Item(
      This : access Typ;
      index : Integer;
      value : access MSSyst.Object.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ObjectCollection);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,AddRange,"AddRange");
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,Contains,"Contains");
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,get_Count,"get_Count");
   pragma Import(MSIL,get_IsReadOnly,"get_IsReadOnly");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
   pragma Import(MSIL,IndexOf,"IndexOf");
   pragma Import(MSIL,Insert,"Insert");
   pragma Import(MSIL,Remove,"Remove");
   pragma Import(MSIL,RemoveAt,"RemoveAt");
   pragma Import(MSIL,set_Item,"set_Item");
end MSSyst.Windows.Forms.ListBox.ObjectCollection;
pragma Import(MSIL,MSSyst.Windows.Forms.ListBox.ObjectCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ListBox/ObjectCollection");
