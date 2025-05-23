-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.AssemblyLoadEventHandler.Ref is access;
with type MSSyst.ResolveEventHandler.Ref is access;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.UnhandledExceptionEventHandler.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Runtime.Remoting.ObjectHandle.Ref is access;
with type MSSyst.Object.Ref_array is access;
with MSSyst.Reflection.BindingFlags;
with type MSSyst.Reflection.Binder.Ref is access;
with type MSSyst.Globalization.CultureInfo.Ref is access;
with type MSSyst.Security.Policy.Evidence.Ref is access;
with type MSSyst.Reflection.Emit.AssemblyBuilder.Ref is access;
with type MSSyst.Reflection.AssemblyName.Ref is access;
with MSSyst.Reflection.Emit.AssemblyBuilderAccess;
with type MSSyst.Security.PermissionSet.Ref is access;
with type MSSyst.CrossAppDomainDelegate.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref_array is access;
with type MSSyst.Reflection.Assembly.Ref_array is access;
with MSSyst.Guid;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Reflection.Assembly.Ref is access;
with type MSSyst.Security.Policy.PolicyLevel.Ref is access;
with MSSyst.Security.Principal.PrincipalPolicy;
with type MSSyst.Security.Principal.IPrincipal.Ref is access;
package MSSyst.uAppDomain is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   procedure add_AssemblyLoad(
      This : access Typ;
      value : MSSyst.AssemblyLoadEventHandler.Ref) is abstract;
   procedure add_AssemblyResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref) is abstract;
   procedure add_DomainUnload(
      This : access Typ;
      value : MSSyst.EventHandler.Ref) is abstract;
   procedure add_ProcessExit(
      This : access Typ;
      value : MSSyst.EventHandler.Ref) is abstract;
   procedure add_ResourceResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref) is abstract;
   procedure add_TypeResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref) is abstract;
   procedure add_UnhandledException(
      This : access Typ;
      value : MSSyst.UnhandledExceptionEventHandler.Ref) is abstract;
   procedure AppendPrivatePath(
      This : access Typ;
      path : MSSyst.String.Ref) is abstract;
   procedure ClearPrivatePath(
      This : access Typ) is abstract;
   procedure ClearShadowCopyPath(
      This : access Typ) is abstract;
   function CreateInstance(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      activationAttributes : MSSyst.Object.Ref_array) return MSSyst.Runtime.Remoting.ObjectHandle.Ref is abstract;
   function CreateInstance(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      ignoreCase : Standard.Boolean;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : MSSyst.Reflection.Binder.Ref;
      args : MSSyst.Object.Ref_array;
      culture : MSSyst.Globalization.CultureInfo.Ref;
      activationAttributes : MSSyst.Object.Ref_array;
      securityAttributes : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Runtime.Remoting.ObjectHandle.Ref is abstract;
   function CreateInstance(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref) return MSSyst.Runtime.Remoting.ObjectHandle.Ref is abstract;
   function CreateInstanceFrom(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      activationAttributes : MSSyst.Object.Ref_array) return MSSyst.Runtime.Remoting.ObjectHandle.Ref is abstract;
   function CreateInstanceFrom(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref) return MSSyst.Runtime.Remoting.ObjectHandle.Ref is abstract;
   function CreateInstanceFrom(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      ignoreCase : Standard.Boolean;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : MSSyst.Reflection.Binder.Ref;
      args : MSSyst.Object.Ref_array;
      culture : MSSyst.Globalization.CultureInfo.Ref;
      activationAttributes : MSSyst.Object.Ref_array;
      securityAttributes : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Runtime.Remoting.ObjectHandle.Ref is abstract;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      evidence : MSSyst.Security.Policy.Evidence.Ref;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref;
      evidence : MSSyst.Security.Policy.Evidence.Ref;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref;
      evidence : MSSyst.Security.Policy.Evidence.Ref;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref;
      isSynchronized : Standard.Boolean) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      evidence : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref;
      evidence : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref is abstract;
   procedure DoCallBack(
      This : access Typ;
      theDelegate : MSSyst.CrossAppDomainDelegate.Ref) is abstract;
   function Equals(
      This : access Typ;
      other : MSSyst.Object.Ref) return Standard.Boolean is abstract;
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref) return Integer is abstract;
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref) return Integer is abstract;
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref;
      args : MSSyst.String.Ref_array) return Integer is abstract;
   function get_BaseDirectory(
      This : access Typ) return MSSyst.String.Ref is abstract;
   function get_DynamicDirectory(
      This : access Typ) return MSSyst.String.Ref is abstract;
   function get_Evidence(
      This : access Typ) return MSSyst.Security.Policy.Evidence.Ref is abstract;
   function get_FriendlyName(
      This : access Typ) return MSSyst.String.Ref is abstract;
   function get_RelativeSearchPath(
      This : access Typ) return MSSyst.String.Ref is abstract;
   function get_ShadowCopyFiles(
      This : access Typ) return Standard.Boolean is abstract;
   function GetAssemblies(
      This : access Typ) return MSSyst.Reflection.Assembly.Ref_array is abstract;
   function GetData(
      This : access Typ;
      name : MSSyst.String.Ref) return MSSyst.Object.Ref is abstract;
   function GetHashCode(
      This : access Typ) return Integer is abstract;
   procedure GetIDsOfNames(
      This : access Typ;
      riid : MSSyst.Guid.Valuetype_addrof;
      rgszNames : MSIL_Types.native_int;
      cNames : MSIL_Types.Unsigned_Integer;
      lcid : MSIL_Types.Unsigned_Integer;
      rgDispId : MSIL_Types.native_int) is abstract;
   function GetLifetimeService(
      This : access Typ) return MSSyst.Object.Ref is abstract;
   function GetType(
      This : access Typ) return MSSyst.Type_k.Ref is abstract;
   procedure GetTypeInfo(
      This : access Typ;
      iTInfo : MSIL_Types.Unsigned_Integer;
      lcid : MSIL_Types.Unsigned_Integer;
      ppTInfo : MSIL_Types.native_int) is abstract;
   procedure GetTypeInfoCount(
      This : access Typ;
      pcTInfo : MSIL_Types.Unsigned_Integer_addrof) is abstract;
   function InitializeLifetimeService(
      This : access Typ) return MSSyst.Object.Ref is abstract;
   procedure Invoke(
      This : access Typ;
      dispIdMember : MSIL_Types.Unsigned_Integer;
      riid : MSSyst.Guid.Valuetype_addrof;
      lcid : MSIL_Types.Unsigned_Integer;
      wFlags : MSIL_Types.int16;
      pDispParams : MSIL_Types.native_int;
      pVarResult : MSIL_Types.native_int;
      pExcepInfo : MSIL_Types.native_int;
      puArgErr : MSIL_Types.native_int) is abstract;
   function Load(
      This : access Typ;
      assemblyRef : MSSyst.Reflection.AssemblyName.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Assembly.Ref is abstract;
   function Load(
      This : access Typ;
      assemblyString : MSSyst.String.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Assembly.Ref is abstract;
   function Load(
      This : access Typ;
      rawAssembly : MSIL_Types.unsigned_int8_Arr;
      rawSymbolStore : MSIL_Types.unsigned_int8_Arr;
      securityEvidence : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Assembly.Ref is abstract;
   function Load(
      This : access Typ;
      assemblyString : MSSyst.String.Ref) return MSSyst.Reflection.Assembly.Ref is abstract;
   function Load(
      This : access Typ;
      assemblyRef : MSSyst.Reflection.AssemblyName.Ref) return MSSyst.Reflection.Assembly.Ref is abstract;
   function Load(
      This : access Typ;
      rawAssembly : MSIL_Types.unsigned_int8_Arr;
      rawSymbolStore : MSIL_Types.unsigned_int8_Arr) return MSSyst.Reflection.Assembly.Ref is abstract;
   function Load(
      This : access Typ;
      rawAssembly : MSIL_Types.unsigned_int8_Arr) return MSSyst.Reflection.Assembly.Ref is abstract;
   procedure remove_AssemblyLoad(
      This : access Typ;
      value : MSSyst.AssemblyLoadEventHandler.Ref) is abstract;
   procedure remove_AssemblyResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref) is abstract;
   procedure remove_DomainUnload(
      This : access Typ;
      value : MSSyst.EventHandler.Ref) is abstract;
   procedure remove_ProcessExit(
      This : access Typ;
      value : MSSyst.EventHandler.Ref) is abstract;
   procedure remove_ResourceResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref) is abstract;
   procedure remove_TypeResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref) is abstract;
   procedure remove_UnhandledException(
      This : access Typ;
      value : MSSyst.UnhandledExceptionEventHandler.Ref) is abstract;
   procedure SetAppDomainPolicy(
      This : access Typ;
      domainPolicy : MSSyst.Security.Policy.PolicyLevel.Ref) is abstract;
   procedure SetCachePath(
      This : access Typ;
      s : MSSyst.String.Ref) is abstract;
   procedure SetData(
      This : access Typ;
      name : MSSyst.String.Ref;
      data : MSSyst.Object.Ref) is abstract;
   procedure SetPrincipalPolicy(
      This : access Typ;
      policy : MSSyst.Security.Principal.PrincipalPolicy.Valuetype) is abstract;
   procedure SetShadowCopyPath(
      This : access Typ;
      s : MSSyst.String.Ref) is abstract;
   procedure SetThreadPrincipal(
      This : access Typ;
      principal : MSSyst.Security.Principal.IPrincipal.Ref) is abstract;
   function ToString(
      This : access Typ) return MSSyst.String.Ref is abstract;
private
   pragma Import(MSIL,add_AssemblyLoad,"add_AssemblyLoad");
   pragma Import(MSIL,add_AssemblyResolve,"add_AssemblyResolve");
   pragma Import(MSIL,add_DomainUnload,"add_DomainUnload");
   pragma Import(MSIL,add_ProcessExit,"add_ProcessExit");
   pragma Import(MSIL,add_ResourceResolve,"add_ResourceResolve");
   pragma Import(MSIL,add_TypeResolve,"add_TypeResolve");
   pragma Import(MSIL,add_UnhandledException,"add_UnhandledException");
   pragma Import(MSIL,AppendPrivatePath,"AppendPrivatePath");
   pragma Import(MSIL,ClearPrivatePath,"ClearPrivatePath");
   pragma Import(MSIL,ClearShadowCopyPath,"ClearShadowCopyPath");
   pragma Import(MSIL,CreateInstance,"CreateInstance");
   pragma Import(MSIL,CreateInstanceFrom,"CreateInstanceFrom");
   pragma Import(MSIL,DefineDynamicAssembly,"DefineDynamicAssembly");
   pragma Import(MSIL,DoCallBack,"DoCallBack");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,ExecuteAssembly,"ExecuteAssembly");
   pragma Import(MSIL,get_BaseDirectory,"get_BaseDirectory");
   pragma Import(MSIL,get_DynamicDirectory,"get_DynamicDirectory");
   pragma Import(MSIL,get_Evidence,"get_Evidence");
   pragma Import(MSIL,get_FriendlyName,"get_FriendlyName");
   pragma Import(MSIL,get_RelativeSearchPath,"get_RelativeSearchPath");
   pragma Import(MSIL,get_ShadowCopyFiles,"get_ShadowCopyFiles");
   pragma Import(MSIL,GetAssemblies,"GetAssemblies");
   pragma Import(MSIL,GetData,"GetData");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetIDsOfNames,"GetIDsOfNames");
   pragma Import(MSIL,GetLifetimeService,"GetLifetimeService");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeInfo,"GetTypeInfo");
   pragma Import(MSIL,GetTypeInfoCount,"GetTypeInfoCount");
   pragma Import(MSIL,InitializeLifetimeService,"InitializeLifetimeService");
   pragma Import(MSIL,Invoke,"Invoke");
   pragma Import(MSIL,Load,"Load");
   pragma Import(MSIL,remove_AssemblyLoad,"remove_AssemblyLoad");
   pragma Import(MSIL,remove_AssemblyResolve,"remove_AssemblyResolve");
   pragma Import(MSIL,remove_DomainUnload,"remove_DomainUnload");
   pragma Import(MSIL,remove_ProcessExit,"remove_ProcessExit");
   pragma Import(MSIL,remove_ResourceResolve,"remove_ResourceResolve");
   pragma Import(MSIL,remove_TypeResolve,"remove_TypeResolve");
   pragma Import(MSIL,remove_UnhandledException,"remove_UnhandledException");
   pragma Import(MSIL,SetAppDomainPolicy,"SetAppDomainPolicy");
   pragma Import(MSIL,SetCachePath,"SetCachePath");
   pragma Import(MSIL,SetData,"SetData");
   pragma Import(MSIL,SetPrincipalPolicy,"SetPrincipalPolicy");
   pragma Import(MSIL,SetShadowCopyPath,"SetShadowCopyPath");
   pragma Import(MSIL,SetThreadPrincipal,"SetThreadPrincipal");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.uAppDomain;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.uAppDomain,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System._AppDomain");
