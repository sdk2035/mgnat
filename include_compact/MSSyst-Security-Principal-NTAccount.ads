-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Security.Principal.IdentityReference;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Security.Principal.NTAccount is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Security.Principal.IdentityReference.Typ   with record
      null;
   end record;
   function new_NTAccount(
      This : Ref := null;
      domainName : MSSyst.String.Ref;
      accountName : MSSyst.String.Ref) return Ref;
   function new_NTAccount(
      This : Ref := null;
      name : MSSyst.String.Ref) return Ref;
   function Equals(
      This : access Typ;
      o : MSSyst.Object.Ref) return Standard.Boolean;
   function get_Value(
      This : access Typ) return MSSyst.String.Ref;
   function GetHashCode(
      This : access Typ) return Integer;
   function IsValidTargetType(
      This : access Typ;
      targetType : MSSyst.Type_k.Ref) return Standard.Boolean;
   function op_Equality(
      left : MSSyst.Security.Principal.NTAccount.Ref;
      right : MSSyst.Security.Principal.NTAccount.Ref) return Standard.Boolean;
   function op_Inequality(
      left : MSSyst.Security.Principal.NTAccount.Ref;
      right : MSSyst.Security.Principal.NTAccount.Ref) return Standard.Boolean;
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
   function Translate(
      This : access Typ;
      targetType : MSSyst.Type_k.Ref) return MSSyst.Security.Principal.IdentityReference.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_NTAccount);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_Value,"get_Value");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,IsValidTargetType,"IsValidTargetType");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
   pragma Import(MSIL,ToString,"ToString");
   pragma Import(MSIL,Translate,"Translate");
end MSSyst.Security.Principal.NTAccount;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.Principal.NTAccount,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Security.Principal.NTAccount");
