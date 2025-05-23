-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Security.AccessControl.AceFlags;
limited with MSSyst.Security.AccessControl.AceType;
limited with MSSyst.Security.AccessControl.AuditFlags;
with MSSyst.Security.AccessControl.GenericAce;
limited with MSSyst.Security.AccessControl.InheritanceFlags;
limited with MSSyst.Security.AccessControl.PropagationFlags;
limited with MSSyst.Security.Principal.SecurityIdentifier;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.AccessControl.KnownAce is
   type Typ is abstract new MSSyst.Security.AccessControl.GenericAce.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_AccessMask(
      This : access Typ) return Integer;
   function get_SecurityIdentifier(
      This : access Typ) return access MSSyst.Security.Principal.SecurityIdentifier.Typ'Class;
   procedure set_AccessMask(
      This : access Typ;
      value : Integer);
   procedure set_SecurityIdentifier(
      This : access Typ;
      value : access MSSyst.Security.Principal.SecurityIdentifier.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_AccessMask,"get_AccessMask");
   pragma Import(MSIL,get_SecurityIdentifier,"get_SecurityIdentifier");
   pragma Import(MSIL,set_AccessMask,"set_AccessMask");
   pragma Import(MSIL,set_SecurityIdentifier,"set_SecurityIdentifier");
end MSSyst.Security.AccessControl.KnownAce;
pragma Import(MSIL,MSSyst.Security.AccessControl.KnownAce,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.AccessControl.KnownAce");
