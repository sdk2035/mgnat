-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ValueType;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Collections.DictionaryEntry is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function new_DictionaryEntry(
      key : MSSyst.Object.Ref;
      value : MSSyst.Object.Ref) return Valuetype;
   function get_Key(
      This : Valuetype) return MSSyst.Object.Ref;
   function get_Value(
      This : Valuetype) return MSSyst.Object.Ref;
   procedure set_Key(
      This : Valuetype;
      value : MSSyst.Object.Ref);
   procedure set_Value(
      This : Valuetype;
      value : MSSyst.Object.Ref);
private
   pragma MSIL_Constructor(new_DictionaryEntry);
   pragma Import(MSIL,get_Key,"get_Key");
   pragma Import(MSIL,get_Value,"get_Value");
   pragma Import(MSIL,set_Key,"set_Key");
   pragma Import(MSIL,set_Value,"set_Value");
end MSSyst.Collections.DictionaryEntry;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Collections.DictionaryEntry,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Collections.DictionaryEntry");
