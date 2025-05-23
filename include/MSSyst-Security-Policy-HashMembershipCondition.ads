-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Runtime.Serialization.IDeserializationCallback;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.Security.Cryptography.HashAlgorithm;
with MSSyst.Security.ISecurityEncodable;
with MSSyst.Security.ISecurityPolicyEncodable;
limited with MSSyst.Security.Policy.Evidence;
with MSSyst.Security.Policy.IMembershipCondition;
limited with MSSyst.Security.Policy.PolicyLevel;
limited with MSSyst.Security.SecurityElement;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Policy.HashMembershipCondition is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
         and MSSyst.Runtime.Serialization.IDeserializationCallback.Typ
         and MSSyst.Security.Policy.IMembershipCondition.Typ
         and MSSyst.Security.ISecurityEncodable.Typ
         and MSSyst.Security.ISecurityPolicyEncodable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_HashMembershipCondition(
      This : Ref := null;
      hashAlg : access MSSyst.Security.Cryptography.HashAlgorithm.Typ'Class;
      value : MSIL_Types.unsigned_int8_Arr) return Ref;
   function Check(
      This : access Typ;
      evidence : access MSSyst.Security.Policy.Evidence.Typ'Class) return Standard.Boolean;
   function Copy(
      This : access Typ) return access MSSyst.Security.Policy.IMembershipCondition.Typ'Class;
   function Equals(
      This : access Typ;
      o : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   procedure FromXml(
      This : access Typ;
      e : access MSSyst.Security.SecurityElement.Typ'Class;
      level : access MSSyst.Security.Policy.PolicyLevel.Typ'Class);
   procedure FromXml(
      This : access Typ;
      e : access MSSyst.Security.SecurityElement.Typ'Class);
   function get_HashAlgorithm(
      This : access Typ) return access MSSyst.Security.Cryptography.HashAlgorithm.Typ'Class;
   function get_HashValue(
      This : access Typ) return MSIL_Types.unsigned_int8_Array;
   function GetHashCode(
      This : access Typ) return Integer;
   procedure set_HashAlgorithm(
      This : access Typ;
      value : access MSSyst.Security.Cryptography.HashAlgorithm.Typ'Class);
   procedure set_HashValue(
      This : access Typ;
      value : MSIL_Types.unsigned_int8_Arr);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function ToXml(
      This : access Typ) return access MSSyst.Security.SecurityElement.Typ'Class;
   function ToXml(
      This : access Typ;
      level : access MSSyst.Security.Policy.PolicyLevel.Typ'Class) return access MSSyst.Security.SecurityElement.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_HashMembershipCondition);
   pragma Import(MSIL,Check,"Check");
   pragma Import(MSIL,Copy,"Copy");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,FromXml,"FromXml");
   pragma Import(MSIL,get_HashAlgorithm,"get_HashAlgorithm");
   pragma Import(MSIL,get_HashValue,"get_HashValue");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,set_HashAlgorithm,"set_HashAlgorithm");
   pragma Import(MSIL,set_HashValue,"set_HashValue");
   pragma Import(MSIL,ToString,"ToString");
   pragma Import(MSIL,ToXml,"ToXml");
end MSSyst.Security.Policy.HashMembershipCondition;
pragma Import(MSIL,MSSyst.Security.Policy.HashMembershipCondition,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.Policy.HashMembershipCondition");
