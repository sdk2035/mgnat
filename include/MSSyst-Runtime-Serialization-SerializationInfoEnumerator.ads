-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Collections.IEnumerator;
limited with MSSyst.Runtime.Serialization.SerializationEntry;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Runtime.Serialization.SerializationInfoEnumerator is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Collections.IEnumerator.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_Current(
      This : access Typ) return MSSyst.Runtime.Serialization.SerializationEntry.Valuetype;
   function get_Name(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ObjectType(
      This : access Typ) return access MSSyst.Type_k.Typ'Class;
   function get_Value(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function MoveNext(
      This : access Typ) return Standard.Boolean;
   procedure Reset(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_Current,"get_Current");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_ObjectType,"get_ObjectType");
   pragma Import(MSIL,get_Value,"get_Value");
   pragma Import(MSIL,MoveNext,"MoveNext");
   pragma Import(MSIL,Reset,"Reset");
end MSSyst.Runtime.Serialization.SerializationInfoEnumerator;
pragma Import(MSIL,MSSyst.Runtime.Serialization.SerializationInfoEnumerator,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Serialization.SerializationInfoEnumerator");
