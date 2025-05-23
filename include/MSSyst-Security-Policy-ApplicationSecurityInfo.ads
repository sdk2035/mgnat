-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ActivationContext;
limited with MSSyst.ApplicationId;
limited with MSSyst.Security.PermissionSet;
limited with MSSyst.Security.Policy.Evidence;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Policy.ApplicationSecurityInfo is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ApplicationSecurityInfo(
      This : Ref := null;
      activationContext : access MSSyst.ActivationContext.Typ'Class) return Ref;
   function get_ApplicationEvidence(
      This : access Typ) return access MSSyst.Security.Policy.Evidence.Typ'Class;
   function get_ApplicationId(
      This : access Typ) return access MSSyst.ApplicationId.Typ'Class;
   function get_DefaultRequestSet(
      This : access Typ) return access MSSyst.Security.PermissionSet.Typ'Class;
   function get_DeploymentId(
      This : access Typ) return access MSSyst.ApplicationId.Typ'Class;
   procedure set_ApplicationEvidence(
      This : access Typ;
      value : access MSSyst.Security.Policy.Evidence.Typ'Class);
   procedure set_ApplicationId(
      This : access Typ;
      value : access MSSyst.ApplicationId.Typ'Class);
   procedure set_DefaultRequestSet(
      This : access Typ;
      value : access MSSyst.Security.PermissionSet.Typ'Class);
   procedure set_DeploymentId(
      This : access Typ;
      value : access MSSyst.ApplicationId.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ApplicationSecurityInfo);
   pragma Import(MSIL,get_ApplicationEvidence,"get_ApplicationEvidence");
   pragma Import(MSIL,get_ApplicationId,"get_ApplicationId");
   pragma Import(MSIL,get_DefaultRequestSet,"get_DefaultRequestSet");
   pragma Import(MSIL,get_DeploymentId,"get_DeploymentId");
   pragma Import(MSIL,set_ApplicationEvidence,"set_ApplicationEvidence");
   pragma Import(MSIL,set_ApplicationId,"set_ApplicationId");
   pragma Import(MSIL,set_DefaultRequestSet,"set_DefaultRequestSet");
   pragma Import(MSIL,set_DeploymentId,"set_DeploymentId");
end MSSyst.Security.Policy.ApplicationSecurityInfo;
pragma Import(MSIL,MSSyst.Security.Policy.ApplicationSecurityInfo,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.Policy.ApplicationSecurityInfo");
