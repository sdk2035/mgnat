-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.TypeCode;
with type MSSyst.String.Ref is access;
with type MSSyst.IFormatProvider.Ref is access;
package MSSyst.Security.Cryptography.X509Certificates.X509ChainStatusFlags is
   type ValueType is (
      NoError,
      NotTimeValid,
      NotTimeNested,
      Revoked,
      NotSignatureValid,
      NotValidForUsage,
      UntrustedRoot,
      RevocationStatusUnknown,
      Cyclic,
      InvalidExtension,
      InvalidPolicyConstraints,
      InvalidBasicConstraints,
      InvalidNameConstraints,
      HasNotSupportedNameConstraint,
      HasNotDefinedNameConstraint,
      HasNotPermittedNameConstraint,
      HasExcludedNameConstraint,
      PartialChain,
      CtlNotTimeValid,
      CtlNotSignatureValid,
      CtlNotValidForUsage,
      OfflineRevocation,
      NoIssuanceChainPolicy);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      NoError =>  0,
      NotTimeValid =>  1,
      NotTimeNested =>  2,
      Revoked =>  4,
      NotSignatureValid =>  8,
      NotValidForUsage =>  16,
      UntrustedRoot =>  32,
      RevocationStatusUnknown =>  64,
      Cyclic =>  128,
      InvalidExtension =>  256,
      InvalidPolicyConstraints =>  512,
      InvalidBasicConstraints =>  1024,
      InvalidNameConstraints =>  2048,
      HasNotSupportedNameConstraint =>  4096,
      HasNotDefinedNameConstraint =>  8192,
      HasNotPermittedNameConstraint =>  16384,
      HasExcludedNameConstraint =>  32768,
      PartialChain =>  65536,
      CtlNotTimeValid =>  131072,
      CtlNotSignatureValid =>  262144,
      CtlNotValidForUsage =>  524288,
      OfflineRevocation =>  16777216,
      NoIssuanceChainPolicy =>  33554432);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function "+" (L,R : Valuetype) return Valuetype;
   pragma Import (MSIL, "+", "+");
   function CompareTo(
      This : Valuetype;
      target : MSSyst.Object.Ref) return Integer;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return MSSyst.Type_k.Ref;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref) return MSSyst.String.Ref;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Security.Cryptography.X509Certificates.X509ChainStatusFlags;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.Cryptography.X509Certificates.X509ChainStatusFlags,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Security.Cryptography.X509Certificates.X509ChainStatusFlags");
