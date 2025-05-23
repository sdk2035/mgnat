-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.ValueType;
package MSSyst.Configuration.Assemblies.AssemblyHash is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function new_AssemblyHash(
      value : MSIL_Types.unsigned_int8_Arr) return Valuetype;
   function new_AssemblyHash(
      algorithm : MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype;
      value : MSIL_Types.unsigned_int8_Arr) return Valuetype;
   function Clone(
      This : Valuetype) return access MSSyst.Object.Typ'Class;
   function get_Algorithm(
      This : Valuetype) return MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype;
   function GetValue(
      This : Valuetype) return MSIL_Types.unsigned_int8_Array;
   procedure set_Algorithm(
      This : Valuetype;
      value : MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype);
   procedure SetValue(
      This : Valuetype;
      value : MSIL_Types.unsigned_int8_Arr);
private
   pragma MSIL_Constructor(new_AssemblyHash);
   pragma Import(MSIL,Clone,"Clone");
   pragma Import(MSIL,get_Algorithm,"get_Algorithm");
   pragma Import(MSIL,GetValue,"GetValue");
   pragma Import(MSIL,set_Algorithm,"set_Algorithm");
   pragma Import(MSIL,SetValue,"SetValue");
end MSSyst.Configuration.Assemblies.AssemblyHash;
pragma Import(MSIL,MSSyst.Configuration.Assemblies.AssemblyHash,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Configuration.Assemblies.AssemblyHash");
