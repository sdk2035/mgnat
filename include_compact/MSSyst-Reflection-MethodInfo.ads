-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Reflection.MethodBase;
with MSSyst.Reflection.ICustomAttributeProvider;
with MSSyst.Runtime.InteropServices.uMemberInfo;
with MSSyst.Runtime.InteropServices.uMethodBase;
with MSSyst.Runtime.InteropServices.uMethodInfo;
with type MSSyst.Object.Ref is access;
with MSSyst.Reflection.MethodAttributes;
with MSSyst.Reflection.CallingConventions;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Reflection.MemberTypes;
with type MSSyst.RuntimeMethodHandle.Valuetype is tagged;
with type MSSyst.Reflection.Module.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Reflection.ParameterInfo.Ref is access;
with type MSSyst.Object.Ref_array is access;
with type MSSyst.Type_k.Ref_array is access;
with type MSSyst.Reflection.MethodBody.Ref is access;
with MSSyst.Reflection.MethodImplAttributes;
with type MSSyst.Reflection.ParameterInfo.Ref_array is access;
with MSSyst.Reflection.BindingFlags;
with type MSSyst.Reflection.Binder.Ref is access;
with type MSSyst.Globalization.CultureInfo.Ref is access;
package MSSyst.Reflection.MethodInfo is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Reflection.MethodBase.Typ
         and MSSyst.Reflection.ICustomAttributeProvider.Typ
         and MSSyst.Runtime.InteropServices.uMemberInfo.Typ
         and MSSyst.Runtime.InteropServices.uMethodBase.Typ
         and MSSyst.Runtime.InteropServices.uMethodInfo.Typ
   with record
      null;
   end record;
   function get_ContainsGenericParameters(
      This : access Typ) return Standard.Boolean;
   function get_IsGenericMethod(
      This : access Typ) return Standard.Boolean;
   function get_IsGenericMethodDefinition(
      This : access Typ) return Standard.Boolean;
   function get_MemberType(
      This : access Typ) return MSSyst.Reflection.MemberTypes.Valuetype;
   function get_ReturnParameter(
      This : access Typ) return MSSyst.Reflection.ParameterInfo.Ref;
   function get_ReturnType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function get_ReturnTypeCustomAttributes(
      This : access Typ) return MSSyst.Reflection.ICustomAttributeProvider.Ref;
   function GetBaseDefinition(
      This : access Typ) return MSSyst.Reflection.MethodInfo.Ref;
   function GetGenericArguments(
      This : access Typ) return MSSyst.Type_k.Ref_array;
   function GetGenericMethodDefinition(
      This : access Typ) return MSSyst.Reflection.MethodInfo.Ref;
   function MakeGenericMethod(
      This : access Typ;
      typeArguments : MSSyst.Type_k.Ref_array) return MSSyst.Reflection.MethodInfo.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_ContainsGenericParameters,"get_ContainsGenericParameters");
   pragma Import(MSIL,get_IsGenericMethod,"get_IsGenericMethod");
   pragma Import(MSIL,get_IsGenericMethodDefinition,"get_IsGenericMethodDefinition");
   pragma Import(MSIL,get_MemberType,"get_MemberType");
   pragma Import(MSIL,get_ReturnParameter,"get_ReturnParameter");
   pragma Import(MSIL,get_ReturnType,"get_ReturnType");
   pragma Import(MSIL,get_ReturnTypeCustomAttributes,"get_ReturnTypeCustomAttributes");
   pragma Import(MSIL,GetBaseDefinition,"GetBaseDefinition");
   pragma Import(MSIL,GetGenericArguments,"GetGenericArguments");
   pragma Import(MSIL,GetGenericMethodDefinition,"GetGenericMethodDefinition");
   pragma Import(MSIL,MakeGenericMethod,"MakeGenericMethod");
end MSSyst.Reflection.MethodInfo;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Reflection.MethodInfo,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Reflection.MethodInfo");
