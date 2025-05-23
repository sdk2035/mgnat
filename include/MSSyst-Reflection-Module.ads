-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Guid;
limited with MSSyst.ModuleHandle;
limited with MSSyst.Reflection.Assembly;
limited with MSSyst.Reflection.Binder;
limited with MSSyst.Reflection.BindingFlags;
limited with MSSyst.Reflection.CallingConventions;
limited with MSSyst.Reflection.FieldInfo;
with MSSyst.Reflection.ICustomAttributeProvider;
with MSSyst.Reflection.ImageFileMachine;
limited with MSSyst.Reflection.MemberInfo;
limited with MSSyst.Reflection.MethodBase;
limited with MSSyst.Reflection.MethodInfo;
with MSSyst.Reflection.ParameterModifier;
with MSSyst.Reflection.PortableExecutableKinds;
limited with MSSyst.Reflection.TypeFilter;
with MSSyst.Runtime.InteropServices.uModule;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.Runtime.Serialization.SerializationInfo;
limited with MSSyst.Runtime.Serialization.StreamingContext;
limited with MSSyst.Security.Cryptography.X509Certificates.X509Certificate;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Reflection.Module is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Runtime.InteropServices.uModule.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
         and MSSyst.Reflection.ICustomAttributeProvider.Typ
   with record
      null;
   end record;
   FilterTypeName : access MSSyst.Reflection.TypeFilter.Typ'Class;
   pragma Import(MSIL,FilterTypeName,"FilterTypeName");
   FilterTypeNameIgnoreCase : access MSSyst.Reflection.TypeFilter.Typ'Class;
   pragma Import(MSIL,FilterTypeNameIgnoreCase,"FilterTypeNameIgnoreCase");
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function FindTypes(
      This : access Typ;
      filter : access MSSyst.Reflection.TypeFilter.Typ'Class;
      filterCriteria : access MSSyst.Object.Typ'Class) return access MSSyst.Type_k.Ref_arr;
   function get_Assembly(
      This : access Typ) return access MSSyst.Reflection.Assembly.Typ'Class;
   function get_FullyQualifiedName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_MDStreamVersion(
      This : access Typ) return Integer;
   function get_MetadataToken(
      This : access Typ) return Integer;
   function get_ModuleHandle(
      This : access Typ) return MSSyst.ModuleHandle.Valuetype;
   function get_ModuleVersionId(
      This : access Typ) return MSSyst.Guid.Valuetype;
   function get_Name(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ScopeName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function GetCustomAttributes(
      This : access Typ;
      inherit : Standard.Boolean) return access MSSyst.Object.Ref_array;
   function GetCustomAttributes(
      This : access Typ;
      attributeType : access MSSyst.Type_k.Typ'Class;
      inherit : Standard.Boolean) return access MSSyst.Object.Ref_array;
   function GetField(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype) return access MSSyst.Reflection.FieldInfo.Typ'Class;
   function GetField(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.FieldInfo.Typ'Class;
   function GetFields(
      This : access Typ;
      bindingFlags : MSSyst.Reflection.BindingFlags.Valuetype) return access MSSyst.Reflection.FieldInfo.Ref_arr;
   function GetFields(
      This : access Typ) return access MSSyst.Reflection.FieldInfo.Ref_arr;
   function GetMethod(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : access MSSyst.Reflection.Binder.Typ'Class;
      callConvention : MSSyst.Reflection.CallingConventions.Valuetype;
      types : access MSSyst.Type_k.Ref_arr;
      modifiers : access MSSyst.Reflection.ParameterModifier.Valuetype_arr) return access MSSyst.Reflection.MethodInfo.Typ'Class;
   function GetMethod(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.MethodInfo.Typ'Class;
   function GetMethod(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      types : access MSSyst.Type_k.Ref_arr) return access MSSyst.Reflection.MethodInfo.Typ'Class;
   function GetMethods(
      This : access Typ) return access MSSyst.Reflection.MethodInfo.Ref_arr;
   function GetMethods(
      This : access Typ;
      bindingFlags : MSSyst.Reflection.BindingFlags.Valuetype) return access MSSyst.Reflection.MethodInfo.Ref_arr;
   procedure GetObjectData(
      This : access Typ;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      context : MSSyst.Runtime.Serialization.StreamingContext.Valuetype);
   procedure GetPEKind(
      This : access Typ;
      peKind : access MSSyst.Reflection.PortableExecutableKinds.Valuetype;
      machine : access MSSyst.Reflection.ImageFileMachine.Valuetype);
   function GetSignerCertificate(
      This : access Typ) return access MSSyst.Security.Cryptography.X509Certificates.X509Certificate.Typ'Class;
   function GetType(
      This : access Typ;
      className : access MSSyst.String.Typ'Class) return access MSSyst.Type_k.Typ'Class;
   function GetType(
      This : access Typ;
      className : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean) return access MSSyst.Type_k.Typ'Class;
   function GetType(
      This : access Typ;
      className : access MSSyst.String.Typ'Class;
      throwOnError : Standard.Boolean;
      ignoreCase : Standard.Boolean) return access MSSyst.Type_k.Typ'Class;
   function GetTypes(
      This : access Typ) return access MSSyst.Type_k.Ref_arr;
   function IsDefined(
      This : access Typ;
      attributeType : access MSSyst.Type_k.Typ'Class;
      inherit : Standard.Boolean) return Standard.Boolean;
   function IsResource(
      This : access Typ) return Standard.Boolean;
   function ResolveField(
      This : access Typ;
      metadataToken : Integer;
      genericTypeArguments : access MSSyst.Type_k.Ref_arr;
      genericMethodArguments : access MSSyst.Type_k.Ref_arr) return access MSSyst.Reflection.FieldInfo.Typ'Class;
   function ResolveField(
      This : access Typ;
      metadataToken : Integer) return access MSSyst.Reflection.FieldInfo.Typ'Class;
   function ResolveMember(
      This : access Typ;
      metadataToken : Integer) return access MSSyst.Reflection.MemberInfo.Typ'Class;
   function ResolveMember(
      This : access Typ;
      metadataToken : Integer;
      genericTypeArguments : access MSSyst.Type_k.Ref_arr;
      genericMethodArguments : access MSSyst.Type_k.Ref_arr) return access MSSyst.Reflection.MemberInfo.Typ'Class;
   function ResolveMethod(
      This : access Typ;
      metadataToken : Integer;
      genericTypeArguments : access MSSyst.Type_k.Ref_arr;
      genericMethodArguments : access MSSyst.Type_k.Ref_arr) return access MSSyst.Reflection.MethodBase.Typ'Class;
   function ResolveMethod(
      This : access Typ;
      metadataToken : Integer) return access MSSyst.Reflection.MethodBase.Typ'Class;
   function ResolveSignature(
      This : access Typ;
      metadataToken : Integer) return MSIL_Types.unsigned_int8_Array;
   function ResolveString(
      This : access Typ;
      metadataToken : Integer) return access MSSyst.String.Typ'Class;
   function ResolveType(
      This : access Typ;
      metadataToken : Integer;
      genericTypeArguments : access MSSyst.Type_k.Ref_arr;
      genericMethodArguments : access MSSyst.Type_k.Ref_arr) return access MSSyst.Type_k.Typ'Class;
   function ResolveType(
      This : access Typ;
      metadataToken : Integer) return access MSSyst.Type_k.Typ'Class;
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,FindTypes,"FindTypes");
   pragma Import(MSIL,get_Assembly,"get_Assembly");
   pragma Import(MSIL,get_FullyQualifiedName,"get_FullyQualifiedName");
   pragma Import(MSIL,get_MDStreamVersion,"get_MDStreamVersion");
   pragma Import(MSIL,get_MetadataToken,"get_MetadataToken");
   pragma Import(MSIL,get_ModuleHandle,"get_ModuleHandle");
   pragma Import(MSIL,get_ModuleVersionId,"get_ModuleVersionId");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_ScopeName,"get_ScopeName");
   pragma Import(MSIL,GetCustomAttributes,"GetCustomAttributes");
   pragma Import(MSIL,GetField,"GetField");
   pragma Import(MSIL,GetFields,"GetFields");
   pragma Import(MSIL,GetMethod,"GetMethod");
   pragma Import(MSIL,GetMethods,"GetMethods");
   pragma Import(MSIL,GetObjectData,"GetObjectData");
   pragma Import(MSIL,GetPEKind,"GetPEKind");
   pragma Import(MSIL,GetSignerCertificate,"GetSignerCertificate");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypes,"GetTypes");
   pragma Import(MSIL,IsDefined,"IsDefined");
   pragma Import(MSIL,IsResource,"IsResource");
   pragma Import(MSIL,ResolveField,"ResolveField");
   pragma Import(MSIL,ResolveMember,"ResolveMember");
   pragma Import(MSIL,ResolveMethod,"ResolveMethod");
   pragma Import(MSIL,ResolveSignature,"ResolveSignature");
   pragma Import(MSIL,ResolveString,"ResolveString");
   pragma Import(MSIL,ResolveType,"ResolveType");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Reflection.Module;
pragma Import(MSIL,MSSyst.Reflection.Module,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Reflection.Module");
