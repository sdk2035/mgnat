-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.IFormatProvider;
limited with MSSyst.String;
limited with MSSyst.TypeCode;
limited with MSSyst.Type_k;
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
      target : access MSSyst.Object.Typ'Class) return Integer;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return access MSSyst.Type_k.Typ'Class;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Security.Cryptography.X509Certificates.X509ChainStatusFlags;
pragma Import(MSIL,MSSyst.Security.Cryptography.X509Certificates.X509ChainStatusFlags,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Security.Cryptography.X509Certificates.X509ChainStatusFlags");
