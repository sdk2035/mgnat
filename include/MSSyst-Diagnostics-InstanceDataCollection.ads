-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Array_k;
with MSSyst.Collections.DictionaryBase;
with MSSyst.Collections.ICollection;
with MSSyst.Collections.IDictionary;
limited with MSSyst.Collections.IDictionaryEnumerator;
with MSSyst.Collections.IEnumerable;
limited with MSSyst.Diagnostics.InstanceData;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Diagnostics.InstanceDataCollection is
   type Typ is new MSSyst.Collections.DictionaryBase.Typ
         and MSSyst.Collections.IDictionary.Typ
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
   function new_InstanceDataCollection(
      This : Ref := null;
      counterName : access MSSyst.String.Typ'Class) return Ref;
   function Contains(
      This : access Typ;
      instanceName : access MSSyst.String.Typ'Class) return Standard.Boolean;
   procedure CopyTo(
      This : access Typ;
      instances : access MSSyst.Diagnostics.InstanceData.Ref_arr;
      index : Integer);
   function get_CounterName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Item(
      This : access Typ;
      instanceName : access MSSyst.String.Typ'Class) return access MSSyst.Diagnostics.InstanceData.Typ'Class;
   function get_Keys(
      This : access Typ) return access MSSyst.Collections.ICollection.Typ'Class;
   function get_Values(
      This : access Typ) return access MSSyst.Collections.ICollection.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_InstanceDataCollection);
   pragma Import(MSIL,Contains,"Contains");
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,get_CounterName,"get_CounterName");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,get_Keys,"get_Keys");
   pragma Import(MSIL,get_Values,"get_Values");
end MSSyst.Diagnostics.InstanceDataCollection;
pragma Import(MSIL,MSSyst.Diagnostics.InstanceDataCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Diagnostics.InstanceDataCollection");
