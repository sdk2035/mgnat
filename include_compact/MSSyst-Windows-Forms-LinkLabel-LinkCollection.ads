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
with type MSSyst.Windows.Forms.LinkLabel.Link.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Collections.IEnumerator.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Windows.Forms.LinkLabel.Ref is access;
package MSSyst.Windows.Forms.LinkLabel.LinkCollection is
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
   function new_LinkCollection(
      This : Ref := null;
      owner : MSSyst.Windows.Forms.LinkLabel.Ref) return Ref;
   function Add(
      This : access Typ;
      start : Integer;
      length : Integer;
      linkData : MSSyst.Object.Ref) return MSSyst.Windows.Forms.LinkLabel.Link.Ref;
   function Add(
      This : access Typ;
      value : MSSyst.Windows.Forms.LinkLabel.Link.Ref) return Integer;
   function Add(
      This : access Typ;
      start : Integer;
      length : Integer) return MSSyst.Windows.Forms.LinkLabel.Link.Ref;
   procedure Clear(
      This : access Typ);
   function Contains(
      This : access Typ;
      link : MSSyst.Windows.Forms.LinkLabel.Link.Ref) return Standard.Boolean;
   function ContainsKey(
      This : access Typ;
      key : MSSyst.String.Ref) return Standard.Boolean;
   function get_Count(
      This : access Typ) return Integer;
   function get_IsReadOnly(
      This : access Typ) return Standard.Boolean;
   function get_Item(
      This : access Typ;
      index : Integer) return MSSyst.Windows.Forms.LinkLabel.Link.Ref;
   function get_Item(
      This : access Typ;
      key : MSSyst.String.Ref) return MSSyst.Windows.Forms.LinkLabel.Link.Ref;
   function get_LinksAdded(
      This : access Typ) return Standard.Boolean;
   function GetEnumerator(
      This : access Typ) return MSSyst.Collections.IEnumerator.Ref;
   function IndexOf(
      This : access Typ;
      link : MSSyst.Windows.Forms.LinkLabel.Link.Ref) return Integer;
   function IndexOfKey(
      This : access Typ;
      key : MSSyst.String.Ref) return Integer;
   procedure Remove(
      This : access Typ;
      value : MSSyst.Windows.Forms.LinkLabel.Link.Ref);
   procedure RemoveAt(
      This : access Typ;
      index : Integer);
   procedure RemoveByKey(
      This : access Typ;
      key : MSSyst.String.Ref);
   procedure set_Item(
      This : access Typ;
      index : Integer;
      value : MSSyst.Windows.Forms.LinkLabel.Link.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_LinkCollection);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,Contains,"Contains");
   pragma Import(MSIL,ContainsKey,"ContainsKey");
   pragma Import(MSIL,get_Count,"get_Count");
   pragma Import(MSIL,get_IsReadOnly,"get_IsReadOnly");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,get_LinksAdded,"get_LinksAdded");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
   pragma Import(MSIL,IndexOf,"IndexOf");
   pragma Import(MSIL,IndexOfKey,"IndexOfKey");
   pragma Import(MSIL,Remove,"Remove");
   pragma Import(MSIL,RemoveAt,"RemoveAt");
   pragma Import(MSIL,RemoveByKey,"RemoveByKey");
   pragma Import(MSIL,set_Item,"set_Item");
end MSSyst.Windows.Forms.LinkLabel.LinkCollection;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.LinkLabel.LinkCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.LinkLabel/LinkCollection");
