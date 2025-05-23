-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Globalization.CultureInfo;
limited with MSSyst.Reflection.Binder;
limited with MSSyst.Reflection.BindingFlags;
with MSSyst.Reflection.ICustomAttributeProvider;
with MSSyst.Reflection.MemberInfo;
limited with MSSyst.Reflection.MemberTypes;
limited with MSSyst.Reflection.MethodInfo;
limited with MSSyst.Reflection.Module;
limited with MSSyst.Reflection.ParameterInfo;
limited with MSSyst.Reflection.PropertyAttributes;
with MSSyst.Runtime.InteropServices.uMemberInfo;
with MSSyst.Runtime.InteropServices.uPropertyInfo;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Reflection.PropertyInfo is
   type Typ is abstract new MSSyst.Reflection.MemberInfo.Typ
         and MSSyst.Reflection.ICustomAttributeProvider.Typ
         and MSSyst.Runtime.InteropServices.uMemberInfo.Typ
         and MSSyst.Runtime.InteropServices.uPropertyInfo.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_Attributes(
      This : access Typ) return MSSyst.Reflection.PropertyAttributes.Valuetype;
   function get_CanRead(
      This : access Typ) return Standard.Boolean;
   function get_CanWrite(
      This : access Typ) return Standard.Boolean;
   function get_IsSpecialName(
      This : access Typ) return Standard.Boolean;
   function get_MemberType(
      This : access Typ) return MSSyst.Reflection.MemberTypes.Valuetype;
   function get_PropertyType(
      This : access Typ) return access MSSyst.Type_k.Typ'Class;
   function GetAccessors(
      This : access Typ;
      nonPublic : Standard.Boolean) return access MSSyst.Reflection.MethodInfo.Ref_arr;
   function GetAccessors(
      This : access Typ) return access MSSyst.Reflection.MethodInfo.Ref_arr;
   function GetConstantValue(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function GetGetMethod(
      This : access Typ) return access MSSyst.Reflection.MethodInfo.Typ'Class;
   function GetGetMethod(
      This : access Typ;
      nonPublic : Standard.Boolean) return access MSSyst.Reflection.MethodInfo.Typ'Class;
   function GetIndexParameters(
      This : access Typ) return access MSSyst.Reflection.ParameterInfo.Ref_arr;
   function GetOptionalCustomModifiers(
      This : access Typ) return access MSSyst.Type_k.Ref_arr;
   function GetRawConstantValue(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function GetRequiredCustomModifiers(
      This : access Typ) return access MSSyst.Type_k.Ref_arr;
   function GetSetMethod(
      This : access Typ;
      nonPublic : Standard.Boolean) return access MSSyst.Reflection.MethodInfo.Typ'Class;
   function GetSetMethod(
      This : access Typ) return access MSSyst.Reflection.MethodInfo.Typ'Class;
   function GetValue(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class;
      index : access MSSyst.Object.Ref_arr) return access MSSyst.Object.Typ'Class;
   function GetValue(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class;
      invokeAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : access MSSyst.Reflection.Binder.Typ'Class;
      index : access MSSyst.Object.Ref_arr;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class) return access MSSyst.Object.Typ'Class;
   procedure SetValue(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class;
      value : access MSSyst.Object.Typ'Class;
      invokeAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : access MSSyst.Reflection.Binder.Typ'Class;
      index : access MSSyst.Object.Ref_arr;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class);
   procedure SetValue(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class;
      value : access MSSyst.Object.Typ'Class;
      index : access MSSyst.Object.Ref_arr);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_Attributes,"get_Attributes");
   pragma Import(MSIL,get_CanRead,"get_CanRead");
   pragma Import(MSIL,get_CanWrite,"get_CanWrite");
   pragma Import(MSIL,get_IsSpecialName,"get_IsSpecialName");
   pragma Import(MSIL,get_MemberType,"get_MemberType");
   pragma Import(MSIL,get_PropertyType,"get_PropertyType");
   pragma Import(MSIL,GetAccessors,"GetAccessors");
   pragma Import(MSIL,GetConstantValue,"GetConstantValue");
   pragma Import(MSIL,GetGetMethod,"GetGetMethod");
   pragma Import(MSIL,GetIndexParameters,"GetIndexParameters");
   pragma Import(MSIL,GetOptionalCustomModifiers,"GetOptionalCustomModifiers");
   pragma Import(MSIL,GetRawConstantValue,"GetRawConstantValue");
   pragma Import(MSIL,GetRequiredCustomModifiers,"GetRequiredCustomModifiers");
   pragma Import(MSIL,GetSetMethod,"GetSetMethod");
   pragma Import(MSIL,GetValue,"GetValue");
   pragma Import(MSIL,SetValue,"SetValue");
end MSSyst.Reflection.PropertyInfo;
pragma Import(MSIL,MSSyst.Reflection.PropertyInfo,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Reflection.PropertyInfo");
