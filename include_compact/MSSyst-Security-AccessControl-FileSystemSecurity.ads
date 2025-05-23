-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Security.AccessControl.NativeObjectSecurity;
with type MSSyst.Security.AccessControl.AccessRule.Ref is access;
with type MSSyst.Security.Principal.IdentityReference.Ref is access;
with MSSyst.Security.AccessControl.InheritanceFlags;
with MSSyst.Security.AccessControl.PropagationFlags;
with MSSyst.Security.AccessControl.AccessControlType;
with type MSSyst.Security.AccessControl.FileSystemAccessRule.Ref is access;
with type MSSyst.Security.AccessControl.FileSystemAuditRule.Ref is access;
with type MSSyst.Security.AccessControl.AuditRule.Ref is access;
with MSSyst.Security.AccessControl.AuditFlags;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Security.AccessControl.AuthorizationRuleCollection.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Security.AccessControl.AccessControlSections;
with MSSyst.Security.AccessControl.AccessControlModification;
package MSSyst.Security.AccessControl.FileSystemSecurity is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Security.AccessControl.NativeObjectSecurity.Typ   with record
      null;
   end record;
   function AccessRuleFactory(
      This : access Typ;
      identityReference : MSSyst.Security.Principal.IdentityReference.Ref;
      accessMask : Integer;
      isInherited : Standard.Boolean;
      inheritanceFlags : MSSyst.Security.AccessControl.InheritanceFlags.Valuetype;
      propagationFlags : MSSyst.Security.AccessControl.PropagationFlags.Valuetype;
      type_k : MSSyst.Security.AccessControl.AccessControlType.Valuetype) return MSSyst.Security.AccessControl.AccessRule.Ref;
   procedure AddAccessRule(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAccessRule.Ref);
   procedure AddAuditRule(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAuditRule.Ref);
   function AuditRuleFactory(
      This : access Typ;
      identityReference : MSSyst.Security.Principal.IdentityReference.Ref;
      accessMask : Integer;
      isInherited : Standard.Boolean;
      inheritanceFlags : MSSyst.Security.AccessControl.InheritanceFlags.Valuetype;
      propagationFlags : MSSyst.Security.AccessControl.PropagationFlags.Valuetype;
      flags : MSSyst.Security.AccessControl.AuditFlags.Valuetype) return MSSyst.Security.AccessControl.AuditRule.Ref;
   function get_AccessRightType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function get_AccessRuleType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function get_AuditRuleType(
      This : access Typ) return MSSyst.Type_k.Ref;
   function RemoveAccessRule(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAccessRule.Ref) return Standard.Boolean;
   procedure RemoveAccessRuleAll(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAccessRule.Ref);
   procedure RemoveAccessRuleSpecific(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAccessRule.Ref);
   function RemoveAuditRule(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAuditRule.Ref) return Standard.Boolean;
   procedure RemoveAuditRuleAll(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAuditRule.Ref);
   procedure RemoveAuditRuleSpecific(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAuditRule.Ref);
   procedure ResetAccessRule(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAccessRule.Ref);
   procedure SetAccessRule(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAccessRule.Ref);
   procedure SetAuditRule(
      This : access Typ;
      rule : MSSyst.Security.AccessControl.FileSystemAuditRule.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,AccessRuleFactory,"AccessRuleFactory");
   pragma Import(MSIL,AddAccessRule,"AddAccessRule");
   pragma Import(MSIL,AddAuditRule,"AddAuditRule");
   pragma Import(MSIL,AuditRuleFactory,"AuditRuleFactory");
   pragma Import(MSIL,get_AccessRightType,"get_AccessRightType");
   pragma Import(MSIL,get_AccessRuleType,"get_AccessRuleType");
   pragma Import(MSIL,get_AuditRuleType,"get_AuditRuleType");
   pragma Import(MSIL,RemoveAccessRule,"RemoveAccessRule");
   pragma Import(MSIL,RemoveAccessRuleAll,"RemoveAccessRuleAll");
   pragma Import(MSIL,RemoveAccessRuleSpecific,"RemoveAccessRuleSpecific");
   pragma Import(MSIL,RemoveAuditRule,"RemoveAuditRule");
   pragma Import(MSIL,RemoveAuditRuleAll,"RemoveAuditRuleAll");
   pragma Import(MSIL,RemoveAuditRuleSpecific,"RemoveAuditRuleSpecific");
   pragma Import(MSIL,ResetAccessRule,"ResetAccessRule");
   pragma Import(MSIL,SetAccessRule,"SetAccessRule");
   pragma Import(MSIL,SetAuditRule,"SetAuditRule");
end MSSyst.Security.AccessControl.FileSystemSecurity;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.AccessControl.FileSystemSecurity,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Security.AccessControl.FileSystemSecurity");
