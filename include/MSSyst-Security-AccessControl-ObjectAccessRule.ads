-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Guid;
limited with MSSyst.Security.AccessControl.AccessControlType;
with MSSyst.Security.AccessControl.AccessRule;
with MSSyst.Security.AccessControl.AuthorizationRule;
limited with MSSyst.Security.AccessControl.InheritanceFlags;
limited with MSSyst.Security.AccessControl.ObjectAceFlags;
limited with MSSyst.Security.AccessControl.PropagationFlags;
limited with MSSyst.Security.Principal.IdentityReference;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.AccessControl.ObjectAccessRule is
   type Typ is abstract new MSSyst.Security.AccessControl.AccessRule.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
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
end MSSyst.Security.AccessControl.ObjectAccessRule;
pragma Import(MSIL,MSSyst.Security.AccessControl.ObjectAccessRule,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.AccessControl.ObjectAccessRule");
