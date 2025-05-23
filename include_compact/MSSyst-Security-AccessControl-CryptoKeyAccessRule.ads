-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Security.AccessControl.AccessRule;
with type MSSyst.Object.Ref is access;
with MSSyst.Security.AccessControl.AccessControlType;
with MSSyst.Security.AccessControl.CryptoKeyRights;
with type MSSyst.Security.Principal.IdentityReference.Ref is access;
with MSSyst.Security.AccessControl.InheritanceFlags;
with MSSyst.Security.AccessControl.PropagationFlags;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Security.AccessControl.CryptoKeyAccessRule is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Security.AccessControl.AccessRule.Typ   with record
      null;
   end record;
   function new_CryptoKeyAccessRule(
      This : Ref := null;
      identity : MSSyst.Security.Principal.IdentityReference.Ref;
      cryptoKeyRights : MSSyst.Security.AccessControl.CryptoKeyRights.Valuetype;
      type_k : MSSyst.Security.AccessControl.AccessControlType.Valuetype) return Ref;
   function new_CryptoKeyAccessRule(
      This : Ref := null;
      identity : MSSyst.String.Ref;
      cryptoKeyRights : MSSyst.Security.AccessControl.CryptoKeyRights.Valuetype;
      type_k : MSSyst.Security.AccessControl.AccessControlType.Valuetype) return Ref;
   function get_CryptoKeyRights(
      This : access Typ) return MSSyst.Security.AccessControl.CryptoKeyRights.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CryptoKeyAccessRule);
   pragma Import(MSIL,get_CryptoKeyRights,"get_CryptoKeyRights");
end MSSyst.Security.AccessControl.CryptoKeyAccessRule;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.AccessControl.CryptoKeyAccessRule,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Security.AccessControl.CryptoKeyAccessRule");
