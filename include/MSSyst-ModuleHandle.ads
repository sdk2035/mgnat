-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.RuntimeFieldHandle;
limited with MSSyst.RuntimeMethodHandle;
with MSSyst.RuntimeTypeHandle;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.ValueType;
package MSSyst.ModuleHandle is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function Equals(
      This : Valuetype;
      handle : MSSyst.ModuleHandle.Valuetype) return Standard.Boolean;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_MDStreamVersion(
      This : Valuetype) return Integer;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetRuntimeFieldHandleFromMetadataToken(
      This : Valuetype;
      fieldToken : Integer) return MSSyst.RuntimeFieldHandle.Valuetype;
   function GetRuntimeMethodHandleFromMetadataToken(
      This : Valuetype;
      methodToken : Integer) return MSSyst.RuntimeMethodHandle.Valuetype;
   function GetRuntimeTypeHandleFromMetadataToken(
      This : Valuetype;
      typeToken : Integer) return MSSyst.RuntimeTypeHandle.Valuetype;
   function op_Equality(
      left : MSSyst.ModuleHandle.Valuetype;
      right : MSSyst.ModuleHandle.Valuetype) return Standard.Boolean;
   function op_Inequality(
      left : MSSyst.ModuleHandle.Valuetype;
      right : MSSyst.ModuleHandle.Valuetype) return Standard.Boolean;
   function ResolveFieldHandle(
      This : Valuetype;
      fieldToken : Integer) return MSSyst.RuntimeFieldHandle.Valuetype;
   function ResolveFieldHandle(
      This : Valuetype;
      fieldToken : Integer;
      typeInstantiationContext : access MSSyst.RuntimeTypeHandle.Valuetype_arr;
      methodInstantiationContext : access MSSyst.RuntimeTypeHandle.Valuetype_arr) return MSSyst.RuntimeFieldHandle.Valuetype;
   function ResolveMethodHandle(
      This : Valuetype;
      methodToken : Integer;
      typeInstantiationContext : access MSSyst.RuntimeTypeHandle.Valuetype_arr;
      methodInstantiationContext : access MSSyst.RuntimeTypeHandle.Valuetype_arr) return MSSyst.RuntimeMethodHandle.Valuetype;
   function ResolveMethodHandle(
      This : Valuetype;
      methodToken : Integer) return MSSyst.RuntimeMethodHandle.Valuetype;
   function ResolveTypeHandle(
      This : Valuetype;
      typeToken : Integer) return MSSyst.RuntimeTypeHandle.Valuetype;
   function ResolveTypeHandle(
      This : Valuetype;
      typeToken : Integer;
      typeInstantiationContext : access MSSyst.RuntimeTypeHandle.Valuetype_arr;
      methodInstantiationContext : access MSSyst.RuntimeTypeHandle.Valuetype_arr) return MSSyst.RuntimeTypeHandle.Valuetype;
private
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_MDStreamVersion,"get_MDStreamVersion");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetRuntimeFieldHandleFromMetadataToken,"GetRuntimeFieldHandleFromMetadataToken");
   pragma Import(MSIL,GetRuntimeMethodHandleFromMetadataToken,"GetRuntimeMethodHandleFromMetadataToken");
   pragma Import(MSIL,GetRuntimeTypeHandleFromMetadataToken,"GetRuntimeTypeHandleFromMetadataToken");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
   pragma Import(MSIL,ResolveFieldHandle,"ResolveFieldHandle");
   pragma Import(MSIL,ResolveMethodHandle,"ResolveMethodHandle");
   pragma Import(MSIL,ResolveTypeHandle,"ResolveTypeHandle");
end MSSyst.ModuleHandle;
pragma Import(MSIL,MSSyst.ModuleHandle,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.ModuleHandle");
