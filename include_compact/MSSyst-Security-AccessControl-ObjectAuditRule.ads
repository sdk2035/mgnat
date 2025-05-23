-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Security.AccessControl.AuditRule;
with type MSSyst.Object.Ref is access;
with MSSyst.Security.AccessControl.AuditFlags;
with type MSSyst.Security.Principal.IdentityReference.Ref is access;
with MSSyst.Security.AccessControl.InheritanceFlags;
with type MSSyst.Guid.Valuetype is tagged;
with MSSyst.Security.AccessControl.ObjectAceFlags;
with MSSyst.Security.AccessControl.PropagationFlags;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Security.AccessControl.ObjectAuditRule is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Security.AccessControl.AuditRule.Typ   with record
      null;
   end record;
   function get_InheritedObjectType(
      This : access Typ) return MSSyst.Guid.Valuetype;
   function get_ObjectFlags(
      This : access Typ) return MSSyst.Security.AccessControl.ObjectAceFlags.Valuetype;
   function get_ObjectType(
      This : access Typ) return MSSyst.Guid.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_InheritedObjectType,"get_InheritedObjectType");
   pragma Import(MSIL,get_ObjectFlags,"get_ObjectFlags");
   pragma Import(MSIL,get_ObjectType,"get_ObjectType");
end MSSyst.Security.AccessControl.ObjectAuditRule;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.AccessControl.ObjectAuditRule,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Security.AccessControl.ObjectAuditRule");
