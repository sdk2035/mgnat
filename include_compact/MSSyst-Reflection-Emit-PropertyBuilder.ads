-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Reflection.PropertyInfo;
with MSSyst.Reflection.ICustomAttributeProvider;
with MSSyst.Runtime.InteropServices.uMemberInfo;
with MSSyst.Runtime.InteropServices.uPropertyInfo;
with MSSyst.Runtime.InteropServices.uPropertyBuilder;
with type MSSyst.Reflection.Emit.MethodBuilder.Ref is access;
with type MSSyst.Object.Ref is access;
with MSSyst.Reflection.PropertyAttributes;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Reflection.MemberTypes;
with type MSSyst.Reflection.Module.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Reflection.Emit.PropertyToken.Valuetype is tagged;
with type MSSyst.Reflection.MethodInfo.Ref_array is access;
with type MSSyst.Object.Ref_array is access;
with type MSSyst.Reflection.MethodInfo.Ref is access;
with type MSSyst.Reflection.ParameterInfo.Ref_array is access;
with type MSSyst.Type_k.Ref_array is access;
with MSSyst.Reflection.BindingFlags;
with type MSSyst.Reflection.Binder.Ref is access;
with type MSSyst.Globalization.CultureInfo.Ref is access;
with type MSSyst.Reflection.Emit.CustomAttributeBuilder.Ref is access;
with type MSSyst.Reflection.ConstructorInfo.Ref is access;
package MSSyst.Reflection.Emit.PropertyBuilder is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Reflection.PropertyInfo.Typ
         and MSSyst.Reflection.ICustomAttributeProvider.Typ
         and MSSyst.Runtime.InteropServices.uMemberInfo.Typ
         and MSSyst.Runtime.InteropServices.uPropertyInfo.Typ
         and MSSyst.Runtime.InteropServices.uPropertyBuilder.Typ
   with record
      null;
   end record;
   procedure AddOtherMethod(
      This : access Typ;
      mdBuilder : MSSyst.Reflection.Emit.MethodBuilder.Ref);
   function get_Attributes(
      This : access Typ) return MSSyst.Reflection.PropertyAttributes.Valuetype;
   function get_CanRead(
      This : access Typ) return Standard.Boolean;
   function get_CanWrite(
      This : access Typ) return Standard.Boolean;
   function get_DeclaringType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function get_Module(
      This : access Typ) return MSSyst.Reflection.Module.Ref;
   function get_Name(
      This : access Typ) return MSSyst.String.Ref;
   function get_PropertyToken(
      This : access Typ) return MSSyst.Reflection.Emit.PropertyToken.Valuetype;
   function get_PropertyType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function get_ReflectedType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function GetAccessors(
      This : access Typ;
      nonPublic : Standard.Boolean) return MSSyst.Reflection.MethodInfo.Ref_array;
   function GetCustomAttributes(
      This : access Typ;
      attributeType : MSSyst.Type_k.Ref;
      inherit : Standard.Boolean) return MSSyst.Object.Ref_array;
   function GetCustomAttributes(
      This : access Typ;
      inherit : Standard.Boolean) return MSSyst.Object.Ref_array;
   function GetGetMethod(
      This : access Typ;
      nonPublic : Standard.Boolean) return MSSyst.Reflection.MethodInfo.Ref;
   function GetIndexParameters(
      This : access Typ) return MSSyst.Reflection.ParameterInfo.Ref_array;
   function GetSetMethod(
      This : access Typ;
      nonPublic : Standard.Boolean) return MSSyst.Reflection.MethodInfo.Ref;
   function GetValue(
      This : access Typ;
      obj : MSSyst.Object.Ref;
      invokeAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : MSSyst.Reflection.Binder.Ref;
      index : MSSyst.Object.Ref_array;
      culture : MSSyst.Globalization.CultureInfo.Ref) return MSSyst.Object.Ref;
   function GetValue(
      This : access Typ;
      obj : MSSyst.Object.Ref;
      index : MSSyst.Object.Ref_array) return MSSyst.Object.Ref;
   function IsDefined(
      This : access Typ;
      attributeType : MSSyst.Type_k.Ref;
      inherit : Standard.Boolean) return Standard.Boolean;
   procedure SetConstant(
      This : access Typ;
      defaultValue : MSSyst.Object.Ref);
   procedure SetCustomAttribute(
      This : access Typ;
      customBuilder : MSSyst.Reflection.Emit.CustomAttributeBuilder.Ref);
   procedure SetCustomAttribute(
      This : access Typ;
      con : MSSyst.Reflection.ConstructorInfo.Ref;
      binaryAttribute : MSIL_Types.unsigned_int8_Arr);
   procedure SetGetMethod(
      This : access Typ;
      mdBuilder : MSSyst.Reflection.Emit.MethodBuilder.Ref);
   procedure SetSetMethod(
      This : access Typ;
      mdBuilder : MSSyst.Reflection.Emit.MethodBuilder.Ref);
   procedure SetValue(
      This : access Typ;
      obj : MSSyst.Object.Ref;
      value : MSSyst.Object.Ref;
      index : MSSyst.Object.Ref_array);
   procedure SetValue(
      This : access Typ;
      obj : MSSyst.Object.Ref;
      value : MSSyst.Object.Ref;
      invokeAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : MSSyst.Reflection.Binder.Ref;
      index : MSSyst.Object.Ref_array;
      culture : MSSyst.Globalization.CultureInfo.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,AddOtherMethod,"AddOtherMethod");
   pragma Import(MSIL,get_Attributes,"get_Attributes");
   pragma Import(MSIL,get_CanRead,"get_CanRead");
   pragma Import(MSIL,get_CanWrite,"get_CanWrite");
   pragma Import(MSIL,get_DeclaringType,"get_DeclaringType");
   pragma Import(MSIL,get_Module,"get_Module");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_PropertyToken,"get_PropertyToken");
   pragma Import(MSIL,get_PropertyType,"get_PropertyType");
   pragma Import(MSIL,get_ReflectedType,"get_ReflectedType");
   pragma Import(MSIL,GetAccessors,"GetAccessors");
   pragma Import(MSIL,GetCustomAttributes,"GetCustomAttributes");
   pragma Import(MSIL,GetGetMethod,"GetGetMethod");
   pragma Import(MSIL,GetIndexParameters,"GetIndexParameters");
   pragma Import(MSIL,GetSetMethod,"GetSetMethod");
   pragma Import(MSIL,GetValue,"GetValue");
   pragma Import(MSIL,IsDefined,"IsDefined");
   pragma Import(MSIL,SetConstant,"SetConstant");
   pragma Import(MSIL,SetCustomAttribute,"SetCustomAttribute");
   pragma Import(MSIL,SetGetMethod,"SetGetMethod");
   pragma Import(MSIL,SetSetMethod,"SetSetMethod");
   pragma Import(MSIL,SetValue,"SetValue");
end MSSyst.Reflection.Emit.PropertyBuilder;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Reflection.Emit.PropertyBuilder,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Reflection.Emit.PropertyBuilder");
