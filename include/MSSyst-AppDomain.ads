-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ActivationContext;
limited with MSSyst.AppDomainInitializer;
limited with MSSyst.AppDomainManager;
limited with MSSyst.AppDomainSetup;
limited with MSSyst.ApplicationIdentity;
limited with MSSyst.AssemblyLoadEventHandler;
limited with MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm;
limited with MSSyst.CrossAppDomainDelegate;
limited with MSSyst.EventHandler;
limited with MSSyst.Globalization.CultureInfo;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Reflection.AssemblyName;
limited with MSSyst.Reflection.Assembly;
limited with MSSyst.Reflection.Binder;
limited with MSSyst.Reflection.BindingFlags;
limited with MSSyst.Reflection.Emit.AssemblyBuilderAccess;
limited with MSSyst.Reflection.Emit.AssemblyBuilder;
limited with MSSyst.ResolveEventHandler;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.Runtime.Remoting.ObjectHandle;
with MSSyst.Security.IEvidenceFactory;
limited with MSSyst.Security.IPermission;
limited with MSSyst.Security.PermissionSet;
limited with MSSyst.Security.Policy.ApplicationTrust;
limited with MSSyst.Security.Policy.Evidence;
limited with MSSyst.Security.Policy.PolicyLevel;
limited with MSSyst.Security.Policy.StrongName;
limited with MSSyst.Security.Principal.IPrincipal;
limited with MSSyst.Security.Principal.PrincipalPolicy;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.UnhandledExceptionEventHandler;
with MSSyst.uAppDomain;
package MSSyst.AppDomain is
   type Typ is new MSSyst.MarshalByRefObject.Typ
         and MSSyst.uAppDomain.Typ
         and MSSyst.Security.IEvidenceFactory.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure add_AssemblyLoad(
      This : access Typ;
      value : access MSSyst.AssemblyLoadEventHandler.Typ'Class);
   procedure add_AssemblyResolve(
      This : access Typ;
      value : access MSSyst.ResolveEventHandler.Typ'Class);
   procedure add_DomainUnload(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_ProcessExit(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_ReflectionOnlyAssemblyResolve(
      This : access Typ;
      value : access MSSyst.ResolveEventHandler.Typ'Class);
   procedure add_ResourceResolve(
      This : access Typ;
      value : access MSSyst.ResolveEventHandler.Typ'Class);
   procedure add_TypeResolve(
      This : access Typ;
      value : access MSSyst.ResolveEventHandler.Typ'Class);
   procedure add_UnhandledException(
      This : access Typ;
      value : access MSSyst.UnhandledExceptionEventHandler.Typ'Class);
   procedure AppendPrivatePath(
      This : access Typ;
      path : access MSSyst.String.Typ'Class);
   function ApplyPolicy(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
   procedure ClearPrivatePath(
      This : access Typ);
   procedure ClearShadowCopyPath(
      This : access Typ);
   function CreateComInstanceFrom(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class) return access MSSyst.Runtime.Remoting.ObjectHandle.Typ'Class;
   function CreateComInstanceFrom(
      This : access Typ;
      assemblyFile : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class;
      hashValue : MSIL_Types.unsigned_int8_Arr;
      hashAlgorithm : MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype) return access MSSyst.Runtime.Remoting.ObjectHandle.Typ'Class;
   function CreateDomain(
      friendlyName : access MSSyst.String.Typ'Class;
      securityInfo : access MSSyst.Security.Policy.Evidence.Typ'Class;
      info : access MSSyst.AppDomainSetup.Typ'Class) return access MSSyst.AppDomain.Typ'Class;
   function CreateDomain(
      friendlyName : access MSSyst.String.Typ'Class;
      securityInfo : access MSSyst.Security.Policy.Evidence.Typ'Class;
      info : access MSSyst.AppDomainSetup.Typ'Class;
      grantSet : access MSSyst.Security.PermissionSet.Typ'Class;
      fullTrustAssemblies : access MSSyst.Security.Policy.StrongName.Ref_arr) return access MSSyst.AppDomain.Typ'Class;
   function CreateDomain(
      friendlyName : access MSSyst.String.Typ'Class;
      securityInfo : access MSSyst.Security.Policy.Evidence.Typ'Class;
      appBasePath : access MSSyst.String.Typ'Class;
      appRelativeSearchPath : access MSSyst.String.Typ'Class;
      shadowCopyFiles : Standard.Boolean;
      adInit : access MSSyst.AppDomainInitializer.Typ'Class;
      adInitArgs : access MSSyst.String.Ref_arr) return access MSSyst.AppDomain.Typ'Class;
   function CreateDomain(
      friendlyName : access MSSyst.String.Typ'Class;
      securityInfo : access MSSyst.Security.Policy.Evidence.Typ'Class;
      appBasePath : access MSSyst.String.Typ'Class;
      appRelativeSearchPath : access MSSyst.String.Typ'Class;
      shadowCopyFiles : Standard.Boolean) return access MSSyst.AppDomain.Typ'Class;
   function CreateDomain(
      friendlyName : access MSSyst.String.Typ'Class;
      securityInfo : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.AppDomain.Typ'Class;
   function CreateDomain(
      friendlyName : access MSSyst.String.Typ'Class) return access MSSyst.AppDomain.Typ'Class;
   function CreateInstance(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class) return access MSSyst.Runtime.Remoting.ObjectHandle.Typ'Class;
   function CreateInstance(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class;
      activationAttributes : access MSSyst.Object.Ref_arr) return access MSSyst.Runtime.Remoting.ObjectHandle.Typ'Class;
   function CreateInstance(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : access MSSyst.Reflection.Binder.Typ'Class;
      args : access MSSyst.Object.Ref_arr;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class;
      activationAttributes : access MSSyst.Object.Ref_arr;
      securityAttributes : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Runtime.Remoting.ObjectHandle.Typ'Class;
   function CreateInstanceAndUnwrap(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class) return access MSSyst.Object.Typ'Class;
   function CreateInstanceAndUnwrap(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : access MSSyst.Reflection.Binder.Typ'Class;
      args : access MSSyst.Object.Ref_arr;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class;
      activationAttributes : access MSSyst.Object.Ref_arr;
      securityAttributes : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Object.Typ'Class;
   function CreateInstanceAndUnwrap(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class;
      activationAttributes : access MSSyst.Object.Ref_arr) return access MSSyst.Object.Typ'Class;
   function CreateInstanceFrom(
      This : access Typ;
      assemblyFile : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class;
      activationAttributes : access MSSyst.Object.Ref_arr) return access MSSyst.Runtime.Remoting.ObjectHandle.Typ'Class;
   function CreateInstanceFrom(
      This : access Typ;
      assemblyFile : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : access MSSyst.Reflection.Binder.Typ'Class;
      args : access MSSyst.Object.Ref_arr;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class;
      activationAttributes : access MSSyst.Object.Ref_arr;
      securityAttributes : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Runtime.Remoting.ObjectHandle.Typ'Class;
   function CreateInstanceFrom(
      This : access Typ;
      assemblyFile : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class) return access MSSyst.Runtime.Remoting.ObjectHandle.Typ'Class;
   function CreateInstanceFromAndUnwrap(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class;
      activationAttributes : access MSSyst.Object.Ref_arr) return access MSSyst.Object.Typ'Class;
   function CreateInstanceFromAndUnwrap(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class) return access MSSyst.Object.Typ'Class;
   function CreateInstanceFromAndUnwrap(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      typeName : access MSSyst.String.Typ'Class;
      ignoreCase : Standard.Boolean;
      bindingAttr : MSSyst.Reflection.BindingFlags.Valuetype;
      binder : access MSSyst.Reflection.Binder.Typ'Class;
      args : access MSSyst.Object.Ref_arr;
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class;
      activationAttributes : access MSSyst.Object.Ref_arr;
      securityAttributes : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Object.Typ'Class;
   function DefineDynamicAssembly(
      This : access Typ;
      name : access MSSyst.Reflection.AssemblyName.Typ'Class;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype) return access MSSyst.Reflection.Emit.AssemblyBuilder.Typ'Class;
   function DefineDynamicAssembly(
      This : access Typ;
      name : access MSSyst.Reflection.AssemblyName.Typ'Class;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.Emit.AssemblyBuilder.Typ'Class;
   function DefineDynamicAssembly(
      This : access Typ;
      name : access MSSyst.Reflection.AssemblyName.Typ'Class;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      evidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Emit.AssemblyBuilder.Typ'Class;
   function DefineDynamicAssembly(
      This : access Typ;
      name : access MSSyst.Reflection.AssemblyName.Typ'Class;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : access MSSyst.String.Typ'Class;
      evidence : access MSSyst.Security.Policy.Evidence.Typ'Class;
      requiredPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      optionalPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      refusedPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      isSynchronized : Standard.Boolean) return access MSSyst.Reflection.Emit.AssemblyBuilder.Typ'Class;
   function DefineDynamicAssembly(
      This : access Typ;
      name : access MSSyst.Reflection.AssemblyName.Typ'Class;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      evidence : access MSSyst.Security.Policy.Evidence.Typ'Class;
      requiredPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      optionalPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      refusedPermissions : access MSSyst.Security.PermissionSet.Typ'Class) return access MSSyst.Reflection.Emit.AssemblyBuilder.Typ'Class;
   function DefineDynamicAssembly(
      This : access Typ;
      name : access MSSyst.Reflection.AssemblyName.Typ'Class;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : access MSSyst.String.Typ'Class;
      evidence : access MSSyst.Security.Policy.Evidence.Typ'Class;
      requiredPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      optionalPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      refusedPermissions : access MSSyst.Security.PermissionSet.Typ'Class) return access MSSyst.Reflection.Emit.AssemblyBuilder.Typ'Class;
   function DefineDynamicAssembly(
      This : access Typ;
      name : access MSSyst.Reflection.AssemblyName.Typ'Class;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      requiredPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      optionalPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      refusedPermissions : access MSSyst.Security.PermissionSet.Typ'Class) return access MSSyst.Reflection.Emit.AssemblyBuilder.Typ'Class;
   function DefineDynamicAssembly(
      This : access Typ;
      name : access MSSyst.Reflection.AssemblyName.Typ'Class;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : access MSSyst.String.Typ'Class;
      evidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Emit.AssemblyBuilder.Typ'Class;
   function DefineDynamicAssembly(
      This : access Typ;
      name : access MSSyst.Reflection.AssemblyName.Typ'Class;
      access_k : MSSyst.Reflection.Emit.AssemblyBuilderAccess.Valuetype;
      dir : access MSSyst.String.Typ'Class;
      requiredPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      optionalPermissions : access MSSyst.Security.PermissionSet.Typ'Class;
      refusedPermissions : access MSSyst.Security.PermissionSet.Typ'Class) return access MSSyst.Reflection.Emit.AssemblyBuilder.Typ'Class;
   procedure DoCallBack(
      This : access Typ;
      callBackDelegate : access MSSyst.CrossAppDomainDelegate.Typ'Class);
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : access MSSyst.String.Typ'Class) return Integer;
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : access MSSyst.String.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class;
      args : access MSSyst.String.Ref_arr;
      hashValue : MSIL_Types.unsigned_int8_Arr;
      hashAlgorithm : MSSyst.Configuration.Assemblies.AssemblyHashAlgorithm.Valuetype) return Integer;
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : access MSSyst.String.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class) return Integer;
   function ExecuteAssembly(
      This : access Typ;
      assemblyFile : access MSSyst.String.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class;
      args : access MSSyst.String.Ref_arr) return Integer;
   function ExecuteAssemblyByName(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class) return Integer;
   function ExecuteAssemblyByName(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class;
      args : access MSSyst.String.Ref_arr) return Integer;
   function ExecuteAssemblyByName(
      This : access Typ;
      assemblyName : access MSSyst.String.Typ'Class) return Integer;
   function ExecuteAssemblyByName(
      This : access Typ;
      assemblyName : access MSSyst.Reflection.AssemblyName.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class;
      args : access MSSyst.String.Ref_arr) return Integer;
   function get_ActivationContext(
      This : access Typ) return access MSSyst.ActivationContext.Typ'Class;
   function get_ApplicationIdentity(
      This : access Typ) return access MSSyst.ApplicationIdentity.Typ'Class;
   function get_ApplicationTrust(
      This : access Typ) return access MSSyst.Security.Policy.ApplicationTrust.Typ'Class;
   function get_BaseDirectory(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_CurrentDomain return access MSSyst.AppDomain.Typ'Class;
   function get_DomainManager(
      This : access Typ) return access MSSyst.AppDomainManager.Typ'Class;
   function get_DynamicDirectory(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Evidence(
      This : access Typ) return access MSSyst.Security.Policy.Evidence.Typ'Class;
   function get_FriendlyName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Id(
      This : access Typ) return Integer;
   function get_RelativeSearchPath(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_SetupInformation(
      This : access Typ) return access MSSyst.AppDomainSetup.Typ'Class;
   function get_ShadowCopyFiles(
      This : access Typ) return Standard.Boolean;
   function GetAssemblies(
      This : access Typ) return access MSSyst.Reflection.Assembly.Ref_arr;
   function GetCurrentThreadId return Integer;
   function GetData(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.Object.Typ'Class;
   function GetType(
      This : access Typ) return access MSSyst.Type_k.Typ'Class;
   function InitializeLifetimeService(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function IsDefaultAppDomain(
      This : access Typ) return Standard.Boolean;
   function IsFinalizingForUnload(
      This : access Typ) return Standard.Boolean;
   function Load(
      This : access Typ;
      rawAssembly : MSIL_Types.unsigned_int8_Arr) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      This : access Typ;
      assemblyString : access MSSyst.String.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      This : access Typ;
      assemblyRef : access MSSyst.Reflection.AssemblyName.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      This : access Typ;
      rawAssembly : MSIL_Types.unsigned_int8_Arr;
      rawSymbolStore : MSIL_Types.unsigned_int8_Arr) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      This : access Typ;
      rawAssembly : MSIL_Types.unsigned_int8_Arr;
      rawSymbolStore : MSIL_Types.unsigned_int8_Arr;
      securityEvidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      This : access Typ;
      assemblyRef : access MSSyst.Reflection.AssemblyName.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function Load(
      This : access Typ;
      assemblyString : access MSSyst.String.Typ'Class;
      assemblySecurity : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Reflection.Assembly.Typ'Class;
   function ReflectionOnlyGetAssemblies(
      This : access Typ) return access MSSyst.Reflection.Assembly.Ref_arr;
   procedure remove_AssemblyLoad(
      This : access Typ;
      value : access MSSyst.AssemblyLoadEventHandler.Typ'Class);
   procedure remove_AssemblyResolve(
      This : access Typ;
      value : access MSSyst.ResolveEventHandler.Typ'Class);
   procedure remove_DomainUnload(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_ProcessExit(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_ReflectionOnlyAssemblyResolve(
      This : access Typ;
      value : access MSSyst.ResolveEventHandler.Typ'Class);
   procedure remove_ResourceResolve(
      This : access Typ;
      value : access MSSyst.ResolveEventHandler.Typ'Class);
   procedure remove_TypeResolve(
      This : access Typ;
      value : access MSSyst.ResolveEventHandler.Typ'Class);
   procedure remove_UnhandledException(
      This : access Typ;
      value : access MSSyst.UnhandledExceptionEventHandler.Typ'Class);
   procedure SetAppDomainPolicy(
      This : access Typ;
      domainPolicy : access MSSyst.Security.Policy.PolicyLevel.Typ'Class);
   procedure SetCachePath(
      This : access Typ;
      path : access MSSyst.String.Typ'Class);
   procedure SetData(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      data : access MSSyst.Object.Typ'Class;
      permission : access MSSyst.Security.IPermission.Typ'Class);
   procedure SetData(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      data : access MSSyst.Object.Typ'Class);
   procedure SetDynamicBase(
      This : access Typ;
      path : access MSSyst.String.Typ'Class);
   procedure SetPrincipalPolicy(
      This : access Typ;
      policy : MSSyst.Security.Principal.PrincipalPolicy.Valuetype);
   procedure SetShadowCopyFiles(
      This : access Typ);
   procedure SetShadowCopyPath(
      This : access Typ;
      path : access MSSyst.String.Typ'Class);
   procedure SetThreadPrincipal(
      This : access Typ;
      principal : access MSSyst.Security.Principal.IPrincipal.Typ'Class);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
   procedure Unload(
      domain : access MSSyst.AppDomain.Typ'Class);
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
pragma Import(MSIL,MSSyst.AppDomain,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.AppDomain");
