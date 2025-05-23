-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Array_k;
with MSSyst.Collections.ICollection;
with MSSyst.Collections.IEnumerable;
limited with MSSyst.Collections.IEnumerator;
limited with MSSyst.Configuration.SettingsProperty;
with MSSyst.ICloneable;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Configuration.SettingsPropertyCollection is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.ICloneable.Typ
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
   function new_SettingsPropertyCollection(
      This : Ref := null) return Ref;
   procedure Add(
      This : access Typ;
      property : access MSSyst.Configuration.SettingsProperty.Typ'Class);
   procedure Clear(
      This : access Typ);
   function Clone(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   procedure CopyTo(
      This : access Typ;
      array_k : access MSSyst.Array_k.Typ'Class;
      index : Integer);
   function get_Count(
      This : access Typ) return Integer;
   function get_IsSynchronized(
      This : access Typ) return Standard.Boolean;
   function get_Item(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.Configuration.SettingsProperty.Typ'Class;
   function get_SyncRoot(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function GetEnumerator(
      This : access Typ) return access MSSyst.Collections.IEnumerator.Typ'Class;
   procedure Remove(
      This : access Typ;
      name : access MSSyst.String.Typ'Class);
   procedure SetReadOnly(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SettingsPropertyCollection);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,Clone,"Clone");
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,get_Count,"get_Count");
   pragma Import(MSIL,get_IsSynchronized,"get_IsSynchronized");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,get_SyncRoot,"get_SyncRoot");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
   pragma Import(MSIL,Remove,"Remove");
   pragma Import(MSIL,SetReadOnly,"SetReadOnly");
end MSSyst.Configuration.SettingsPropertyCollection;
pragma Import(MSIL,MSSyst.Configuration.SettingsPropertyCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Configuration.SettingsPropertyCollection");
