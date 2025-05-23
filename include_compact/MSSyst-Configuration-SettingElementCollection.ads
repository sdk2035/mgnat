-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Configuration.ConfigurationElementCollection;
with MSSyst.Collections.ICollection;
with type MSSyst.Configuration.SettingElement.Ref is access;
with type MSSyst.Configuration.ConfigurationElement.Ref_array is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Configuration.ConfigurationElementCollectionType;
with type MSSyst.Configuration.ElementInformation.Ref is access;
with type MSSyst.Configuration.ConfigurationLockCollection.Ref is access;
with type MSSyst.Collections.IEnumerator.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Configuration.SettingElementCollection is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Configuration.ConfigurationElementCollection.Typ
         and MSSyst.Collections.ICollection.Typ
   with record
      null;
   end record;
   function new_SettingElementCollection(
      This : Ref := null) return Ref;
   procedure Add(
      This : access Typ;
      element : MSSyst.Configuration.SettingElement.Ref);
   procedure Clear(
      This : access Typ);
   function Get(
      This : access Typ;
      elementKey : MSSyst.String.Ref) return MSSyst.Configuration.SettingElement.Ref;
   function get_CollectionType(
      This : access Typ) return MSSyst.Configuration.ConfigurationElementCollectionType.Valuetype;
   procedure Remove(
      This : access Typ;
      element : MSSyst.Configuration.SettingElement.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SettingElementCollection);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,Clear,"Clear");
   pragma Import(MSIL,Get,"Get");
   pragma Import(MSIL,get_CollectionType,"get_CollectionType");
   pragma Import(MSIL,Remove,"Remove");
end MSSyst.Configuration.SettingElementCollection;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Configuration.SettingElementCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Configuration.SettingElementCollection");
