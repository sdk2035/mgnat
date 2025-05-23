-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Security.Cryptography.AsymmetricAlgorithm;
with MSSyst.Security.Cryptography.AsymmetricSignatureFormatter;
limited with MSSyst.Security.Cryptography.HashAlgorithm;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Cryptography.RSAPKCS1SignatureFormatter is
   type Typ is new MSSyst.Security.Cryptography.AsymmetricSignatureFormatter.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_RSAPKCS1SignatureFormatter(
      This : Ref := null) return Ref;
   function new_RSAPKCS1SignatureFormatter(
      This : Ref := null;
      key : access MSSyst.Security.Cryptography.AsymmetricAlgorithm.Typ'Class) return Ref;
   function CreateSignature(
      This : access Typ;
      rgbHash : MSIL_Types.unsigned_int8_Arr) return MSIL_Types.unsigned_int8_Array;
   procedure SetHashAlgorithm(
      This : access Typ;
      strName : access MSSyst.String.Typ'Class);
   procedure SetKey(
      This : access Typ;
      key : access MSSyst.Security.Cryptography.AsymmetricAlgorithm.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_RSAPKCS1SignatureFormatter);
   pragma Import(MSIL,CreateSignature,"CreateSignature");
   pragma Import(MSIL,SetHashAlgorithm,"SetHashAlgorithm");
   pragma Import(MSIL,SetKey,"SetKey");
end MSSyst.Security.Cryptography.RSAPKCS1SignatureFormatter;
pragma Import(MSIL,MSSyst.Security.Cryptography.RSAPKCS1SignatureFormatter,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.Cryptography.RSAPKCS1SignatureFormatter");
