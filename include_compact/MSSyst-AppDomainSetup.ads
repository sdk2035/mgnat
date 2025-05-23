-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with MSSyst.IAppDomainSetup;
with type MSSyst.Runtime.Hosting.ActivationArguments.Ref is access;
with type MSSyst.AppDomainInitializer.Ref is access;
with type MSSyst.String.Ref_array is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Security.Policy.ApplicationTrust.Ref is access;
with MSSyst.LoaderOptimization;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.ActivationContext.Ref is access;
package MSSyst.AppDomainSetup is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ
         and MSSyst.IAppDomainSetup.Typ
   with record
      null;
   end record;
   function new_AppDomainSetup(
      This : Ref := null) return Ref;
   function new_AppDomainSetup(
      This : Ref := null;
      activationContext : MSSyst.ActivationContext.Ref) return Ref;
   function new_AppDomainSetup(
      This : Ref := null;
      activationArguments : MSSyst.Runtime.Hosting.ActivationArguments.Ref) return Ref;
   function get_ActivationArguments(
      This : access Typ) return MSSyst.Runtime.Hosting.ActivationArguments.Ref;
   function get_AppDomainInitializer(
      This : access Typ) return MSSyst.AppDomainInitializer.Ref;
   function get_AppDomainInitializerArguments(
      This : access Typ) return MSSyst.String.Ref_array;
   function get_ApplicationBase(
      This : access Typ) return MSSyst.String.Ref;
   function get_ApplicationName(
      This : access Typ) return MSSyst.String.Ref;
   function get_ApplicationTrust(
      This : access Typ) return MSSyst.Security.Policy.ApplicationTrust.Ref;
   function get_CachePath(
      This : access Typ) return MSSyst.String.Ref;
   function get_ConfigurationFile(
      This : access Typ) return MSSyst.String.Ref;
   function get_DisallowApplicationBaseProbing(
      This : access Typ) return Standard.Boolean;
   function get_DisallowBindingRedirects(
      This : access Typ) return Standard.Boolean;
   function get_DisallowCodeDownload(
      This : access Typ) return Standard.Boolean;
   function get_DisallowPublisherPolicy(
      This : access Typ) return Standard.Boolean;
   function get_DynamicBase(
      This : access Typ) return MSSyst.String.Ref;
   function get_LicenseFile(
      This : access Typ) return MSSyst.String.Ref;
   function get_LoaderOptimization(
      This : access Typ) return MSSyst.LoaderOptimization.Valuetype;
   function get_PrivateBinPath(
      This : access Typ) return MSSyst.String.Ref;
   function get_PrivateBinPathProbe(
      This : access Typ) return MSSyst.String.Ref;
   function get_ShadowCopyDirectories(
      This : access Typ) return MSSyst.String.Ref;
   function get_ShadowCopyFiles(
      This : access Typ) return MSSyst.String.Ref;
   function GetConfigurationBytes(
      This : access Typ) return MSIL_Types.unsigned_int8_Array;
   procedure set_ActivationArguments(
      This : access Typ;
      value : MSSyst.Runtime.Hosting.ActivationArguments.Ref);
   procedure set_AppDomainInitializer(
      This : access Typ;
      value : MSSyst.AppDomainInitializer.Ref);
   procedure set_AppDomainInitializerArguments(
      This : access Typ;
      value : MSSyst.String.Ref_array);
   procedure set_ApplicationBase(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_ApplicationName(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_ApplicationTrust(
      This : access Typ;
      value : MSSyst.Security.Policy.ApplicationTrust.Ref);
   procedure set_CachePath(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_ConfigurationFile(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_DisallowApplicationBaseProbing(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_DisallowBindingRedirects(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_DisallowCodeDownload(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_DisallowPublisherPolicy(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_DynamicBase(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_LicenseFile(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_LoaderOptimization(
      This : access Typ;
      value : MSSyst.LoaderOptimization.Valuetype);
   procedure set_PrivateBinPath(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_PrivateBinPathProbe(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_ShadowCopyDirectories(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_ShadowCopyFiles(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure SetConfigurationBytes(
      This : access Typ;
      value : MSIL_Types.unsigned_int8_Arr);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_AppDomainSetup);
   pragma Import(MSIL,get_ActivationArguments,"get_ActivationArguments");
   pragma Import(MSIL,get_AppDomainInitializer,"get_AppDomainInitializer");
   pragma Import(MSIL,get_AppDomainInitializerArguments,"get_AppDomainInitializerArguments");
   pragma Import(MSIL,get_ApplicationBase,"get_ApplicationBase");
   pragma Import(MSIL,get_ApplicationName,"get_ApplicationName");
   pragma Import(MSIL,get_ApplicationTrust,"get_ApplicationTrust");
   pragma Import(MSIL,get_CachePath,"get_CachePath");
   pragma Import(MSIL,get_ConfigurationFile,"get_ConfigurationFile");
   pragma Import(MSIL,get_DisallowApplicationBaseProbing,"get_DisallowApplicationBaseProbing");
   pragma Import(MSIL,get_DisallowBindingRedirects,"get_DisallowBindingRedirects");
   pragma Import(MSIL,get_DisallowCodeDownload,"get_DisallowCodeDownload");
   pragma Import(MSIL,get_DisallowPublisherPolicy,"get_DisallowPublisherPolicy");
   pragma Import(MSIL,get_DynamicBase,"get_DynamicBase");
   pragma Import(MSIL,get_LicenseFile,"get_LicenseFile");
   pragma Import(MSIL,get_LoaderOptimization,"get_LoaderOptimization");
   pragma Import(MSIL,get_PrivateBinPath,"get_PrivateBinPath");
   pragma Import(MSIL,get_PrivateBinPathProbe,"get_PrivateBinPathProbe");
   pragma Import(MSIL,get_ShadowCopyDirectories,"get_ShadowCopyDirectories");
   pragma Import(MSIL,get_ShadowCopyFiles,"get_ShadowCopyFiles");
   pragma Import(MSIL,GetConfigurationBytes,"GetConfigurationBytes");
   pragma Import(MSIL,set_ActivationArguments,"set_ActivationArguments");
   pragma Import(MSIL,set_AppDomainInitializer,"set_AppDomainInitializer");
   pragma Import(MSIL,set_AppDomainInitializerArguments,"set_AppDomainInitializerArguments");
   pragma Import(MSIL,set_ApplicationBase,"set_ApplicationBase");
   pragma Import(MSIL,set_ApplicationName,"set_ApplicationName");
   pragma Import(MSIL,set_ApplicationTrust,"set_ApplicationTrust");
   pragma Import(MSIL,set_CachePath,"set_CachePath");
   pragma Import(MSIL,set_ConfigurationFile,"set_ConfigurationFile");
   pragma Import(MSIL,set_DisallowApplicationBaseProbing,"set_DisallowApplicationBaseProbing");
   pragma Import(MSIL,set_DisallowBindingRedirects,"set_DisallowBindingRedirects");
   pragma Import(MSIL,set_DisallowCodeDownload,"set_DisallowCodeDownload");
   pragma Import(MSIL,set_DisallowPublisherPolicy,"set_DisallowPublisherPolicy");
   pragma Import(MSIL,set_DynamicBase,"set_DynamicBase");
   pragma Import(MSIL,set_LicenseFile,"set_LicenseFile");
   pragma Import(MSIL,set_LoaderOptimization,"set_LoaderOptimization");
   pragma Import(MSIL,set_PrivateBinPath,"set_PrivateBinPath");
   pragma Import(MSIL,set_PrivateBinPathProbe,"set_PrivateBinPathProbe");
   pragma Import(MSIL,set_ShadowCopyDirectories,"set_ShadowCopyDirectories");
   pragma Import(MSIL,set_ShadowCopyFiles,"set_ShadowCopyFiles");
   pragma Import(MSIL,SetConfigurationBytes,"SetConfigurationBytes");
end MSSyst.AppDomainSetup;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.AppDomainSetup,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.AppDomainSetup");
