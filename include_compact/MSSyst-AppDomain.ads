-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.MarshalByRefObject;
with MSSyst.uAppDomain;
with MSSyst.Security.IEvidenceFactory;
with type MSSyst.AssemblyLoadEventHandler.Ref is access;
with type MSSyst.ResolveEventHandler.Ref is access;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.UnhandledExceptionEventHandler.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Runtime.Remoting.ObjectHandle.Ref is access;
with MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm;
with type MSSyst.Security.Policy.Evidence.Ref is access;
with type MSSyst.AppDomainSetup.Ref is access;
with type MSSyst.Security.PermissionSet.Ref is access;
with type MSSyst.Security.Policy.StrongName.Ref_array is access;
with type MSSyst.AppDomainInitializer.Ref is access;
with type MSSyst.String.Ref_array is access;
with type MSSyst.Object.Ref_array is access;
with MSSyst.Reflection.BindingFlags;
with type MSSyst.Reflection.Binder.Ref is access;
with type MSSyst.Globalization.CultureInfo.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Reflection.Emit.AssemblyBuilder.Ref is access;
with type MSSyst.Reflection.AssemblyName.Ref is access;
with MSSyst.Reflection.Emit.AssemblyBuilderAccess;
with type MSSyst.CrossAppDomainDelegate.Ref is access;
with type MSSyst.ActivationContext.Ref is access;
with type MSSyst.ApplicationIdentity.Ref is access;
with type MSSyst.Security.Policy.ApplicationTrust.Ref is access;
with type MSSyst.AppDomainManager.Ref is access;
with type MSSyst.Reflection.Assembly.Ref_array is access;
with type MSSyst.Reflection.Assembly.Ref is access;
with type MSSyst.Security.Policy.PolicyLevel.Ref is access;
with type MSSyst.Security.IPermission.Ref is access;
with MSSyst.Security.Principal.PrincipalPolicy;
with type MSSyst.Security.Principal.IPrincipal.Ref is access;
package MSSyst.AppDomain is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.MarshalByRefObject.Typ
         and MSSyst.uAppDomain.Typ
         and MSSyst.Security.IEvidenceFactory.Typ
   with record
      null;
   end record;
   procedure add_AssemblyLoad(
      This : access Typ;
      value : MSSyst.AssemblyLoadEventHandler.Ref);
   procedure add_AssemblyResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref);
   procedure add_DomainUnload(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_ProcessExit(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_ReflectionOnlyAssemblyResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref);
   procedure add_ResourceResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref);
   procedure add_TypeResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref);
   procedure add_UnhandledException(
      This : access Typ;
      value : MSSyst.UnhandledExceptionEventHandler.Ref);
   procedure AppendPrivatePath(
      This : access Typ;
      path : MSSyst.String.Ref);
   function ApplyPolicy(
      This : access Typ;
      assemblyName : MSSyst.String.Ref) return MSSyst.String.Ref;
   procedure ClearPrivatePath(
      This : access Typ);
   procedure ClearShadowCopyPath(
      This : access Typ);
   function CreateComInstanceFrom(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref) return MSSyst.Runtime.Remoting.ObjectHandle.Ref;
   function CreateComInstanceFrom(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      hashValue : MSIL_Types.unsigned_int8_Arr;
      hashAlgorithm : MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype) return MSSyst.Runtime.Remoting.ObjectHandle.Ref;
   function CreateDomain(
      friendlyName : MSSyst.String.Ref;
      securityInfo : MSSyst.Security.Policy.Evidence.Ref;
      info : MSSyst.AppDomainSetup.Ref) return MSSyst.AppDomain.Ref;
   function CreateDomain(
      friendlyName : MSSyst.String.Ref;
      securityInfo : MSSyst.Security.Policy.Evidence.Ref;
      info : MSSyst.AppDomainSetup.Ref;
      grantSet : MSSyst.Security.PermissionSet.Ref;
      fullTrustAssemblies : MSSyst.Security.Policy.StrongName.Ref_array) return MSSyst.AppDomain.Ref;
   function CreateDomain(
      friendlyName : MSSyst.String.Ref;
      securityInfo : MSSyst.Security.Policy.Evidence.Ref;
      appBasePath : MSSyst.String.Ref;
      appRelativeSearchPath : MSSyst.String.Ref;
      shadowCopyFiles : Standard.Boolean;
      adInit : MSSyst.AppDomainInitializer.Ref;
      adInitArgs : MSSyst.String.Ref_array) return MSSyst.AppDomain.Ref;
   function CreateDomain(
      friendlyName : MSSyst.String.Ref;
      securityInfo : MSSyst.Security.Policy.Evidence.Ref;
      appBasePath : MSSyst.String.Ref;
      appRelativeSearchPath : MSSyst.String.Ref;
      shadowCopyFiles : Standard.Boolean) return MSSyst.AppDomain.Ref;
   function CreateDomain(
      friendlyName : MSSyst.String.Ref;
      securityInfo : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.AppDomain.Ref;
   function CreateDomain(
      friendlyName : MSSyst.String.Ref) return MSSyst.AppDomain.Ref;
   function CreateInstance(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref) return MSSyst.Runtime.Remoting.ObjectHandle.Ref;
   function CreateInstance(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      activationAttributes : MSSyst.Object.Ref_array) return MSSyst.Runtime.Remoting.ObjectHandle.Ref;
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
      securityAttributes : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Runtime.Remoting.ObjectHandle.Ref;
   function CreateInstanceAndUnwrap(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref) return MSSyst.Object.Ref;
   function CreateInstanceAndUnwrap(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      ignoreCase : Standard.Boolean;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : MSSyst.Reflection.Binder.Ref;
      args : MSSyst.Object.Ref_array;
      culture : MSSyst.Globalization.CultureInfo.Ref;
      activationAttributes : MSSyst.Object.Ref_array;
      securityAttributes : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Object.Ref;
   function CreateInstanceAndUnwrap(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      activationAttributes : MSSyst.Object.Ref_array) return MSSyst.Object.Ref;
   function CreateInstanceFrom(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      activationAttributes : MSSyst.Object.Ref_array) return MSSyst.Runtime.Remoting.ObjectHandle.Ref;
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
      securityAttributes : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Runtime.Remoting.ObjectHandle.Ref;
   function CreateInstanceFrom(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref) return MSSyst.Runtime.Remoting.ObjectHandle.Ref;
   function CreateInstanceFromAndUnwrap(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      activationAttributes : MSSyst.Object.Ref_array) return MSSyst.Object.Ref;
   function CreateInstanceFromAndUnwrap(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref) return MSSyst.Object.Ref;
   function CreateInstanceFromAndUnwrap(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      typeName : MSSyst.String.Ref;
      ignoreCase : Standard.Boolean;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : MSSyst.Reflection.Binder.Ref;
      args : MSSyst.Object.Ref_array;
      culture : MSSyst.Globalization.CultureInfo.Ref;
      activationAttributes : MSSyst.Object.Ref_array;
      securityAttributes : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Object.Ref;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      evidence : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref;
      evidence : MSSyst.Security.Policy.Evidence.Ref;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref;
      isSynchronized : Standard.Boolean) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      evidence : MSSyst.Security.Policy.Evidence.Ref;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref;
      evidence : MSSyst.Security.Policy.Evidence.Ref;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref;
      evidence : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref;
   function DefineDynamicAssembly(
      This : access Typ;
      name : MSSyst.Reflection.AssemblyName.Ref;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : MSSyst.String.Ref;
      requiredPermissions : MSSyst.Security.PermissionSet.Ref;
      optionalPermissions : MSSyst.Security.PermissionSet.Ref;
      refusedPermissions : MSSyst.Security.PermissionSet.Ref) return MSSyst.Reflection.Emit.AssemblyBuilder.Ref;
   procedure DoCallBack(
      This : access Typ;
      callBackDelegate : MSSyst.CrossAppDomainDelegate.Ref);
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref) return Integer;
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref;
      args : MSSyst.String.Ref_array;
      hashValue : MSIL_Types.unsigned_int8_Arr;
      hashAlgorithm : MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype) return Integer;
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref) return Integer;
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : MSSyst.String.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref;
      args : MSSyst.String.Ref_array) return Integer;
   function ExecuteAssemblyByName(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref) return Integer;
   function ExecuteAssemblyByName(
      This : access Typ;
      assemblyName : MSSyst.String.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref;
      args : MSSyst.String.Ref_array) return Integer;
   function ExecuteAssemblyByName(
      This : access Typ;
      assemblyName : MSSyst.String.Ref) return Integer;
   function ExecuteAssemblyByName(
      This : access Typ;
      assemblyName : MSSyst.Reflection.AssemblyName.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref;
      args : MSSyst.String.Ref_array) return Integer;
   function get_ActivationContext(
      This : access Typ) return MSSyst.ActivationContext.Ref;
   function get_ApplicationIdentity(
      This : access Typ) return MSSyst.ApplicationIdentity.Ref;
   function get_ApplicationTrust(
      This : access Typ) return MSSyst.Security.Policy.ApplicationTrust.Ref;
   function get_BaseDirectory(
      This : access Typ) return MSSyst.String.Ref;
   function get_CurrentDomain return MSSyst.AppDomain.Ref;
   function get_DomainManager(
      This : access Typ) return MSSyst.AppDomainManager.Ref;
   function get_DynamicDirectory(
      This : access Typ) return MSSyst.String.Ref;
   function get_Evidence(
      This : access Typ) return MSSyst.Security.Policy.Evidence.Ref;
   function get_FriendlyName(
      This : access Typ) return MSSyst.String.Ref;
   function get_Id(
      This : access Typ) return Integer;
   function get_RelativeSearchPath(
      This : access Typ) return MSSyst.String.Ref;
   function get_SetupInformation(
      This : access Typ) return MSSyst.AppDomainSetup.Ref;
   function get_ShadowCopyFiles(
      This : access Typ) return Standard.Boolean;
   function GetAssemblies(
      This : access Typ) return MSSyst.Reflection.Assembly.Ref_array;
   function GetCurrentThreadId return Integer;
   function GetData(
      This : access Typ;
      name : MSSyst.String.Ref) return MSSyst.Object.Ref;
   function GetType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function InitializeLifetimeService(
      This : access Typ) return MSSyst.Object.Ref;
   function IsDefaultAppDomain(
      This : access Typ) return Standard.Boolean;
   function IsFinalizingForUnload(
      This : access Typ) return Standard.Boolean;
   function Load(
      This : access Typ;
      rawAssembly : MSIL_Types.unsigned_int8_Arr) return MSSyst.Reflection.Assembly.Ref;
   function Load(
      This : access Typ;
      assemblyString : MSSyst.String.Ref) return MSSyst.Reflection.Assembly.Ref;
   function Load(
      This : access Typ;
      assemblyRef : MSSyst.Reflection.AssemblyName.Ref) return MSSyst.Reflection.Assembly.Ref;
   function Load(
      This : access Typ;
      rawAssembly : MSIL_Types.unsigned_int8_Arr;
      rawSymbolStore : MSIL_Types.unsigned_int8_Arr) return MSSyst.Reflection.Assembly.Ref;
   function Load(
      This : access Typ;
      rawAssembly : MSIL_Types.unsigned_int8_Arr;
      rawSymbolStore : MSIL_Types.unsigned_int8_Arr;
      securityEvidence : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Assembly.Ref;
   function Load(
      This : access Typ;
      assemblyRef : MSSyst.Reflection.AssemblyName.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Assembly.Ref;
   function Load(
      This : access Typ;
      assemblyString : MSSyst.String.Ref;
      assemblySecurity : MSSyst.Security.Policy.Evidence.Ref) return MSSyst.Reflection.Assembly.Ref;
   function ReflectionOnlyGetAssemblies(
      This : access Typ) return MSSyst.Reflection.Assembly.Ref_array;
   procedure remove_AssemblyLoad(
      This : access Typ;
      value : MSSyst.AssemblyLoadEventHandler.Ref);
   procedure remove_AssemblyResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref);
   procedure remove_DomainUnload(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_ProcessExit(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_ReflectionOnlyAssemblyResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref);
   procedure remove_ResourceResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref);
   procedure remove_TypeResolve(
      This : access Typ;
      value : MSSyst.ResolveEventHandler.Ref);
   procedure remove_UnhandledException(
      This : access Typ;
      value : MSSyst.UnhandledExceptionEventHandler.Ref);
   procedure SetAppDomainPolicy(
      This : access Typ;
      domainPolicy : MSSyst.Security.Policy.PolicyLevel.Ref);
   procedure SetCachePath(
      This : access Typ;
      path : MSSyst.String.Ref);
   procedure SetData(
      This : access Typ;
      name : MSSyst.String.Ref;
      data : MSSyst.Object.Ref;
      permission : MSSyst.Security.IPermission.Ref);
   procedure SetData(
      This : access Typ;
      name : MSSyst.String.Ref;
      data : MSSyst.Object.Ref);
   procedure SetDynamicBase(
      This : access Typ;
      path : MSSyst.String.Ref);
   procedure SetPrincipalPolicy(
      This : access Typ;
      policy : MSSyst.Security.Principal.PrincipalPolicy.Valuetype);
   procedure SetShadowCopyFiles(
      This : access Typ);
   procedure SetShadowCopyPath(
      This : access Typ;
      path : MSSyst.String.Ref);
   procedure SetThreadPrincipal(
      This : access Typ;
      principal : MSSyst.Security.Principal.IPrincipal.Ref);
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
   procedure Unload(
      domain : MSSyst.AppDomain.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,add_AssemblyLoad,"add_AssemblyLoad");
   pragma Import(MSIL,add_AssemblyResolve,"add_AssemblyResolve");
   pragma Import(MSIL,add_DomainUnload,"add_DomainUnload");
   pragma Import(MSIL,add_ProcessExit,"add_ProcessExit");
   pragma Import(MSIL,add_ReflectionOnlyAssemblyResolve,"add_ReflectionOnlyAssemblyResolve");
   pragma Import(MSIL,add_ResourceResolve,"add_ResourceResolve");
   pragma Import(MSIL,add_TypeResolve,"add_TypeResolve");
   pragma Import(MSIL,add_UnhandledException,"add_UnhandledException");
   pragma Import(MSIL,AppendPrivatePath,"AppendPrivatePath");
   pragma Import(MSIL,ApplyPolicy,"ApplyPolicy");
   pragma Import(MSIL,ClearPrivatePath,"ClearPrivatePath");
   pragma Import(MSIL,ClearShadowCopyPath,"ClearShadowCopyPath");
   pragma Import(MSIL,CreateComInstanceFrom,"CreateComInstanceFrom");
   pragma Import(MSIL,CreateDomain,"CreateDomain");
   pragma Import(MSIL,CreateInstance,"CreateInstance");
   pragma Import(MSIL,CreateInstanceAndUnwrap,"CreateInstanceAndUnwrap");
   pragma Import(MSIL,CreateInstanceFrom,"CreateInstanceFrom");
   pragma Import(MSIL,CreateInstanceFromAndUnwrap,"CreateInstanceFromAndUnwrap");
   pragma Import(MSIL,DefineDynamicAssembly,"DefineDynamicAssembly");
   pragma Import(MSIL,DoCallBack,"DoCallBack");
   pragma Import(MSIL,ExecuteAssembly,"ExecuteAssembly");
   pragma Import(MSIL,ExecuteAssemblyByName,"ExecuteAssemblyByName");
   pragma Import(MSIL,get_ActivationContext,"get_ActivationContext");
   pragma Import(MSIL,get_ApplicationIdentity,"get_ApplicationIdentity");
   pragma Import(MSIL,get_ApplicationTrust,"get_ApplicationTrust");
   pragma Import(MSIL,get_BaseDirectory,"get_BaseDirectory");
   pragma Import(MSIL,get_CurrentDomain,"get_CurrentDomain");
   pragma Import(MSIL,get_DomainManager,"get_DomainManager");
   pragma Import(MSIL,get_DynamicDirectory,"get_DynamicDirectory");
   pragma Import(MSIL,get_Evidence,"get_Evidence");
   pragma Import(MSIL,get_FriendlyName,"get_FriendlyName");
   pragma Import(MSIL,get_Id,"get_Id");
   pragma Import(MSIL,get_RelativeSearchPath,"get_RelativeSearchPath");
   pragma Import(MSIL,get_SetupInformation,"get_SetupInformation");
   pragma Import(MSIL,get_ShadowCopyFiles,"get_ShadowCopyFiles");
   pragma Import(MSIL,GetAssemblies,"GetAssemblies");
   pragma Import(MSIL,GetCurrentThreadId,"GetCurrentThreadId");
   pragma Import(MSIL,GetData,"GetData");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,InitializeLifetimeService,"InitializeLifetimeService");
   pragma Import(MSIL,IsDefaultAppDomain,"IsDefaultAppDomain");
   pragma Import(MSIL,IsFinalizingForUnload,"IsFinalizingForUnload");
   pragma Import(MSIL,Load,"Load");
   pragma Import(MSIL,ReflectionOnlyGetAssemblies,"ReflectionOnlyGetAssemblies");
   pragma Import(MSIL,remove_AssemblyLoad,"remove_AssemblyLoad");
   pragma Import(MSIL,remove_AssemblyResolve,"remove_AssemblyResolve");
   pragma Import(MSIL,remove_DomainUnload,"remove_DomainUnload");
   pragma Import(MSIL,remove_ProcessExit,"remove_ProcessExit");
   pragma Import(MSIL,remove_ReflectionOnlyAssemblyResolve,"remove_ReflectionOnlyAssemblyResolve");
   pragma Import(MSIL,remove_ResourceResolve,"remove_ResourceResolve");
   pragma Import(MSIL,remove_TypeResolve,"remove_TypeResolve");
   pragma Import(MSIL,remove_UnhandledException,"remove_UnhandledException");
   pragma Import(MSIL,SetAppDomainPolicy,"SetAppDomainPolicy");
   pragma Import(MSIL,SetCachePath,"SetCachePath");
   pragma Import(MSIL,SetData,"SetData");
   pragma Import(MSIL,SetDynamicBase,"SetDynamicBase");
   pragma Import(MSIL,SetPrincipalPolicy,"SetPrincipalPolicy");
   pragma Import(MSIL,SetShadowCopyFiles,"SetShadowCopyFiles");
   pragma Import(MSIL,SetShadowCopyPath,"SetShadowCopyPath");
   pragma Import(MSIL,SetThreadPrincipal,"SetThreadPrincipal");
   pragma Import(MSIL,ToString,"ToString");
   pragma Import(MSIL,Unload,"Unload");
end MSSyst.AppDomain;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.AppDomain,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.AppDomain");
