-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Collections.IList;
limited with MSSyst.Security.NamedPermissionSet;
limited with MSSyst.Security.PermissionSet;
limited with MSSyst.Security.Policy.CodeGroup;
limited with MSSyst.Security.Policy.Evidence;
limited with MSSyst.Security.Policy.PolicyStatement;
limited with MSSyst.Security.Policy.StrongNameMembershipCondition;
limited with MSSyst.Security.Policy.StrongName;
limited with MSSyst.Security.PolicyLevelType;
limited with MSSyst.Security.SecurityElement;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Policy.PolicyLevel is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure AddFullTrustAssembly(
      This : access Typ;
      sn : access MSSyst.Security.Policy.StrongName.Typ'Class);
   procedure AddFullTrustAssembly(
      This : access Typ;
      snMC : access MSSyst.Security.Policy.StrongNameMembershipCondition.Typ'Class);
   procedure AddNamedPermissionSet(
      This : access Typ;
      permSet : access MSSyst.Security.NamedPermissionSet.Typ'Class);
   function ChangeNamedPermissionSet(
      This : access Typ;
      name : access MSSyst.String.Typ'Class;
      pSet : access MSSyst.Security.PermissionSet.Typ'Class) return access MSSyst.Security.NamedPermissionSet.Typ'Class;
   function CreateAppDomainLevel return access MSSyst.Security.Policy.PolicyLevel.Typ'Class;
   procedure FromXml(
      This : access Typ;
      e : access MSSyst.Security.SecurityElement.Typ'Class);
   function get_FullTrustAssemblies(
      This : access Typ) return access MSSyst.Collections.IList.Typ'Class;
   function get_Label(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_NamedPermissionSets(
      This : access Typ) return access MSSyst.Collections.IList.Typ'Class;
   function get_RootCodeGroup(
      This : access Typ) return access MSSyst.Security.Policy.CodeGroup.Typ'Class;
   function get_StoreLocation(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Type(
      This : access Typ) return MSSyst.Security.PolicyLevelType.Valuetype;
   function GetNamedPermissionSet(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.Security.NamedPermissionSet.Typ'Class;
   procedure Recover(
      This : access Typ);
   procedure RemoveFullTrustAssembly(
      This : access Typ;
      sn : access MSSyst.Security.Policy.StrongName.Typ'Class);
   procedure RemoveFullTrustAssembly(
      This : access Typ;
      snMC : access MSSyst.Security.Policy.StrongNameMembershipCondition.Typ'Class);
   function RemoveNamedPermissionSet(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.Security.NamedPermissionSet.Typ'Class;
   function RemoveNamedPermissionSet(
      This : access Typ;
      permSet : access MSSyst.Security.NamedPermissionSet.Typ'Class) return access MSSyst.Security.NamedPermissionSet.Typ'Class;
   procedure Reset(
      This : access Typ);
   function Resolve(
      This : access Typ;
      evidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Security.Policy.PolicyStatement.Typ'Class;
   function ResolveMatchingCodeGroups(
      This : access Typ;
      evidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return access MSSyst.Security.Policy.CodeGroup.Typ'Class;
   procedure set_RootCodeGroup(
      This : access Typ;
      value : access MSSyst.Security.Policy.CodeGroup.Typ'Class);
   function ToXml(
      This : access Typ) return access MSSyst.Security.SecurityElement.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,AddFullTrustAssembly,"AddFullTrustAssembly");
   pragma Import(MSIL,AddNamedPermissionSet,"AddNamedPermissionSet");
   pragma Import(MSIL,ChangeNamedPermissionSet,"ChangeNamedPermissionSet");
   pragma Import(MSIL,CreateAppDomainLevel,"CreateAppDomainLevel");
   pragma Import(MSIL,FromXml,"FromXml");
   pragma Import(MSIL,get_FullTrustAssemblies,"get_FullTrustAssemblies");
   pragma Import(MSIL,get_Label,"get_Label");
   pragma Import(MSIL,get_NamedPermissionSets,"get_NamedPermissionSets");
   pragma Import(MSIL,get_RootCodeGroup,"get_RootCodeGroup");
   pragma Import(MSIL,get_StoreLocation,"get_StoreLocation");
   pragma Import(MSIL,get_Type,"get_Type");
   pragma Import(MSIL,GetNamedPermissionSet,"GetNamedPermissionSet");
   pragma Import(MSIL,Recover,"Recover");
   pragma Import(MSIL,RemoveFullTrustAssembly,"RemoveFullTrustAssembly");
   pragma Import(MSIL,RemoveNamedPermissionSet,"RemoveNamedPermissionSet");
   pragma Import(MSIL,Reset,"Reset");
   pragma Import(MSIL,Resolve,"Resolve");
   pragma Import(MSIL,ResolveMatchingCodeGroups,"ResolveMatchingCodeGroups");
   pragma Import(MSIL,set_RootCodeGroup,"set_RootCodeGroup");
   pragma Import(MSIL,ToXml,"ToXml");
end MSSyst.Security.Policy.PolicyLevel;
pragma Import(MSIL,MSSyst.Security.Policy.PolicyLevel,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.Policy.PolicyLevel");
