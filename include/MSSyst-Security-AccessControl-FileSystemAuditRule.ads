-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Security.AccessControl.AuditFlags;
with MSSyst.Security.AccessControl.AuditRule;
with MSSyst.Security.AccessControl.AuthorizationRule;
limited with MSSyst.Security.AccessControl.FileSystemRights;
limited with MSSyst.Security.AccessControl.InheritanceFlags;
limited with MSSyst.Security.AccessControl.PropagationFlags;
limited with MSSyst.Security.Principal.IdentityReference;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.AccessControl.FileSystemAuditRule is
   type Typ is new MSSyst.Security.AccessControl.AuditRule.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_FileSystemAuditRule(
      This : Ref := null;
      identity : access MSSyst.Security.Principal.IdentityReference.Typ'Class;
      fileSystemRights : MSSyst.Security.AccessControl.FileSystemRights.Valuetype;
      flags : MSSyst.Security.AccessControl.AuditFlags.Valuetype) return Ref;
   function new_FileSystemAuditRule(
      This : Ref := null;
      identity : access MSSyst.Security.Principal.IdentityReference.Typ'Class;
      fileSystemRights : MSSyst.Security.AccessControl.FileSystemRights.Valuetype;
      inheritanceFlags : MSSyst.Security.AccessControl.InheritanceFlags.Valuetype;
      propagationFlags : MSSyst.Security.AccessControl.PropagationFlags.Valuetype;
      flags : MSSyst.Security.AccessControl.AuditFlags.Valuetype) return Ref;
   function new_FileSystemAuditRule(
      This : Ref := null;
      identity : access MSSyst.String.Typ'Class;
      fileSystemRights : MSSyst.Security.AccessControl.FileSystemRights.Valuetype;
      flags : MSSyst.Security.AccessControl.AuditFlags.Valuetype) return Ref;
   function new_FileSystemAuditRule(
      This : Ref := null;
      identity : access MSSyst.String.Typ'Class;
      fileSystemRights : MSSyst.Security.AccessControl.FileSystemRights.Valuetype;
      inheritanceFlags : MSSyst.Security.AccessControl.InheritanceFlags.Valuetype;
      propagationFlags : MSSyst.Security.AccessControl.PropagationFlags.Valuetype;
      flags : MSSyst.Security.AccessControl.AuditFlags.Valuetype) return Ref;
   function get_FileSystemRights(
      This : access Typ) return MSSyst.Security.AccessControl.FileSystemRights.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_FileSystemAuditRule);
   pragma Import(MSIL,get_FileSystemRights,"get_FileSystemRights");
end MSSyst.Security.AccessControl.FileSystemAuditRule;
pragma Import(MSIL,MSSyst.Security.AccessControl.FileSystemAuditRule,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.AccessControl.FileSystemAuditRule");
