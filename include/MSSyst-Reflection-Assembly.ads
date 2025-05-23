-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm;
limited with MSSyst.Globalization.CultureInfo;
limited with MSSyst.IO.FileStream;
limited with MSSyst.IO.Stream;
limited with MSSyst.Reflection.AssemblyName;
limited with MSSyst.Reflection.Binder;
limited with MSSyst.Reflection.BindingFlags;
with MSSyst.Reflection.ICustomAttributeProvider;
limited with MSSyst.Reflection.ManifestResourceInfo;
limited with MSSyst.Reflection.MethodInfo;
limited with MSSyst.Reflection.ModuleResolveEventHandler;
limited with MSSyst.Reflection.Module;
with MSSyst.Runtime.InteropServices.uAssembly;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.Runtime.Serialization.SerializationInfo;
limited with MSSyst.Runtime.Serialization.StreamingContext;
with MSSyst.Security.IEvidenceFactory;
limited with MSSyst.Security.Policy.Evidence;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Version;
package MSSyst.Reflection.Assembly is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Runtime.InteropServices.uAssembly.Typ
         and MSSyst.Security.IEvidenceFactory.Typ
         and MSSyst.Reflection.ICustomAttributeProvider.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure add_ModuleResolve(
      This : access Typ;
      value : access MSSyst.Reflection.ModuleResolveEventHandler.Typ'Class);
   function CreateInstance(
      This : access Typ;
      typeName : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : access MSSyst.Reflection.Binder.Typ'Class;
      args : access MSSyst.Object.Ref_arr;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class;
      activationAttributes : access MSSyst.Object.Ref_arr) return access MSSyst.Object.Typ'Class;
   function CreateInstance(
      This : access Typ;
      typeName : access MSSyst.String.Typ'Class) return access MSSyst.Object.Typ'Class;
   function CreateInstance(
      This : access Typ;
      typeName : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean) return access MSSyst.Object.Typ'Class;
   function CreateQualifiedName(
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   function get_CodeBase(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_EntryPoint(
      This : access Typ) return access MSSyst.Reflection.MethodInfo.Typ'Class;
   function get_EscapedCodeBase(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Evidence(
      This : access Typ) return access MSSyst.Security.Policy.Evidence.Typ'Class;
   function get_FullName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_GlobalAssemblyCache(
      This : access Typ) return Standard.Boolean;
   function get_HostContext(
      This : access Typ) return Long_Long_Integer;
   function get_ImageRuntimeVersion(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Location(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ManifestModule(
      This : access Typ) return access MSSyst.Reflection.Module.Typ'Class;
   function get_ReflectionOnly(
      This : access Typ) return Standard.Boolean;
   function GetAssembly(
      type_k : access MSSyst.Type_k.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function GetCallingAssembly return access MSSyst.Reflection.Assembly.Typ'Class;
   function GetCustomAttributes(
      This : access Typ;
      attributeType : access MSSyst.Type_k.Typ'Class;
      inherit : Standard.Boolean) return access MSSyst.Object.Ref_array;
   function GetCustomAttributes(
      This : access Typ;
      inherit : Standard.Boolean) return access MSSyst.Object.Ref_array;
   function GetEntryAssembly return access MSSyst.Reflection.Assembly.Typ'Class;
   function GetExecutingAssembly return access MSSyst.Reflection.Assembly.Typ'Class;
   function GetExportedTypes(
      This : access Typ) return access MSSyst.Type_k.Ref_arr;
   function GetFile(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.IO.FileStream.Typ'Class;
   function GetFiles(
      This : access Typ;
      getResourceModules : Standard.Boolean) return access MSSyst.IO.FileStream.Ref_arr;
   function GetFiles(
      This : access Typ) return access MSSyst.IO.FileStream.Ref_arr;
   function GetLoadedModules(
      This : access Typ) return access MSSyst.Reflection.Module.Ref_arr;
   function GetLoadedModules(
      This : access Typ;
      getResourceModules : Standard.Boolean) return access MSSyst.Reflection.Module.Ref_arr;
   function GetManifestResourceInfo(
      This : access Typ;
      resourceName : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.ManifestResourceInfo.Typ'Class;
   function GetManifestResourceNames(
      This : access Typ) return access MSSyst.String.Ref_arr;
   function GetManifestResourceStream(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.IO.Stream.Typ'Class;
   function GetManifestResourceStream(
      This : access Typ;
      type_k : access MSSyst.Type_k.Typ'Class;
      name : access MSSyst.String.Typ'Class) return access MSSyst.IO.Stream.Typ'Class;
   function GetModule(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.Module.Typ'Class;
   function GetModules(
      This : access Typ;
      getResourceModules : Standard.Boolean) return access MSSyst.Reflection.Module.Ref_arr;
   function GetModules(
      This : access Typ) return access MSSyst.Reflection.Module.Ref_arr;
   function GetName(
      This : access Typ) return access MSSyst.Reflection.AssemblyName.Typ'Class;
   function GetName(
      This : access Typ;
      copiedName : Standard.Boolean) return access MSSyst.Reflection.AssemblyName.Typ'Class;
   procedure GetObjectData(
      This : access Typ;
      info : access MSSyst.Runtime.Serialization.SerializationInfo.Typ'Class;
      context : MSSyst.Runtime.Serialization.StreamingContext.Valuetype);
   function GetReferencedAssemblies(
      This : access Typ) return access MSSyst.Reflection.AssemblyName.Ref_arr;
   function GetSatelliteAssembly(
      This : access Typ;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class;
      version : access MSSyst.Version.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function GetSatelliteAssembly(
      This : access Typ;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function GetType(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      throwOnError : Standard.Boolean) return access MSSyst.Type_k.Typ'Class;
   function GetType(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      throwOnError : Standard.Boolean;
      ignoreCase : Standard.Boolean) return access MSSyst.Type_k.Typ'Class;
   function GetType(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.Type_k.Typ'Class;
   function GetTypes(
      This : access Typ) return access MSSyst.Type_k.Ref_arr;
   function IsDefined(
      This : access Typ;
      attributeType : access MSSyst.Type_k.Typ'Class;
      inherit : Standard.Boolean) return Standard.Boolean;
   function Load(
      assemblyRef : access MSSyst.Reflection.AssemblyName.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      rawAssembly : MSIL_Types.unsigned_int8_Arr) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      assemblyRef : access MSSyst.Reflection.AssemblyName.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      assemblyString : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      assemblyString : access MSSyst.String.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      rawAssembly : MSIL_Types.unsigned_int8_Arr;
      rawSymbolStore : MSIL_Types.unsigned_int8_Arr) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      rawAssembly : MSIL_Types.unsigned_int8_Arr;
      rawSymbolStore : MSIL_Types.unsigned_int8_Arr;
      securityEvidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function LoadFile(
      path : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function LoadFile(
      path : access MSSyst.String.Typ'Class;
      securityEvidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function LoadFrom(
      assemblyFile : access MSSyst.String.Typ'Class;
      securityEvidence : access MSSyst.Security.Policy.Evidence.Typ'Class;
      hashValue : MSIL_Types.unsigned_int8_Arr;
      hashAlgorithm : MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype) return access MSSyst.Reflection.Assembly.Typ'Class;
   function LoadFrom(
      assemblyFile : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function LoadFrom(
      assemblyFile : access MSSyst.String.Typ'Class;
      securityEvidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function LoadModule(
      This : access Typ;
      moduleName : access MSSyst.String.Typ'Class;
      rawModule : MSIL_Types.unsigned_int8_Arr;
      rawSymbolStore : MSIL_Types.unsigned_int8_Arr) return access MSSyst.Reflection.Module.Typ'Class;
   function LoadModule(
      This : access Typ;
      moduleName : access MSSyst.String.Typ'Class;
      rawModule : MSIL_Types.unsigned_int8_Arr) return access MSSyst.Reflection.Module.Typ'Class;
   function LoadWithPartialName(
      partialName : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function LoadWithPartialName(
      partialName : access MSSyst.String.Typ'Class;
      securityEvidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function ReflectionOnlyLoad(
      rawAssembly : MSIL_Types.unsigned_int8_Arr) return access MSSyst.Reflection.Assembly.Typ'Class;
   function ReflectionOnlyLoad(
      assemblyString : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function ReflectionOnlyLoadFrom(
      assemblyFile : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   procedure remove_ModuleResolve(
      This : access Typ;
      value : access MSSyst.Reflection.ModuleResolveEventHandler.Typ'Class);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,add_ModuleResolve,"add_ModuleResolve");
   pragma Import(MSIL,CreateInstance,"CreateInstance");
   pragma Import(MSIL,CreateQualifiedName,"CreateQualifiedName");
   pragma Import(MSIL,get_CodeBase,"get_CodeBase");
   pragma Import(MSIL,get_EntryPoint,"get_EntryPoint");
   pragma Import(MSIL,get_EscapedCodeBase,"get_EscapedCodeBase");
   pragma Import(MSIL,get_Evidence,"get_Evidence");
   pragma Import(MSIL,get_FullName,"get_FullName");
   pragma Import(MSIL,get_GlobalAssemblyCache,"get_GlobalAssemblyCache");
   pragma Import(MSIL,get_HostContext,"get_HostContext");
   pragma Import(MSIL,get_ImageRuntimeVersion,"get_ImageRuntimeVersion");
   pragma Import(MSIL,get_Location,"get_Location");
   pragma Import(MSIL,get_ManifestModule,"get_ManifestModule");
   pragma Import(MSIL,get_ReflectionOnly,"get_ReflectionOnly");
   pragma Import(MSIL,GetAssembly,"GetAssembly");
   pragma Import(MSIL,GetCallingAssembly,"GetCallingAssembly");
   pragma Import(MSIL,GetCustomAttributes,"GetCustomAttributes");
   pragma Import(MSIL,GetEntryAssembly,"GetEntryAssembly");
   pragma Import(MSIL,GetExecutingAssembly,"GetExecutingAssembly");
   pragma Import(MSIL,GetExportedTypes,"GetExportedTypes");
   pragma Import(MSIL,GetFile,"GetFile");
   pragma Import(MSIL,GetFiles,"GetFiles");
   pragma Import(MSIL,GetLoadedModules,"GetLoadedModules");
   pragma Import(MSIL,GetManifestResourceInfo,"GetManifestResourceInfo");
   pragma Import(MSIL,GetManifestResourceNames,"GetManifestResourceNames");
   pragma Import(MSIL,GetManifestResourceStream,"GetManifestResourceStream");
   pragma Import(MSIL,GetModule,"GetModule");
   pragma Import(MSIL,GetModules,"GetModules");
   pragma Import(MSIL,GetName,"GetName");
   pragma Import(MSIL,GetObjectData,"GetObjectData");
   pragma Import(MSIL,GetReferencedAssemblies,"GetReferencedAssemblies");
   pragma Import(MSIL,GetSatelliteAssembly,"GetSatelliteAssembly");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypes,"GetTypes");
   pragma Import(MSIL,IsDefined,"IsDefined");
   pragma Import(MSIL,Load,"Load");
   pragma Import(MSIL,LoadFile,"LoadFile");
   pragma Import(MSIL,LoadFrom,"LoadFrom");
   pragma Import(MSIL,LoadModule,"LoadModule");
   pragma Import(MSIL,LoadWithPartialName,"LoadWithPartialName");
   pragma Import(MSIL,ReflectionOnlyLoad,"ReflectionOnlyLoad");
   pragma Import(MSIL,ReflectionOnlyLoadFrom,"ReflectionOnlyLoadFrom");
   pragma Import(MSIL,remove_ModuleResolve,"remove_ModuleResolve");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Reflection.Assembly;
pragma Import(MSIL,MSSyst.Reflection.Assembly,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Reflection.Assembly");
