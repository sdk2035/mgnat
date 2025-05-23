-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Security.Policy.PolicyLevel;
limited with MSSyst.Security.SecurityElement;
package MSSyst.Security.ISecurityPolicyEncodable is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure FromXml(
      This : access Typ;
      e : access MSSyst.Security.SecurityElement.Typ'Class;
      level : access MSSyst.Security.Policy.PolicyLevel.Typ'Class) is abstract;
   function ToXml(
      This : access Typ;
      level : access MSSyst.Security.Policy.PolicyLevel.Typ'Class) return access MSSyst.Security.SecurityElement.Typ'Class is abstract;
private
   pragma Import(MSIL,FromXml,"FromXml");
   pragma Import(MSIL,ToXml,"ToXml");
end MSSyst.Security.ISecurityPolicyEncodable;
pragma Import(MSIL,MSSyst.Security.ISecurityPolicyEncodable,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.ISecurityPolicyEncodable");
