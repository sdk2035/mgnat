-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Security.Cryptography.AsymmetricSignatureFormatter;
with type MSSyst.Security.Cryptography.HashAlgorithm.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Security.Cryptography.AsymmetricAlgorithm.Ref is access;
package MSSyst.Security.Cryptography.DSASignatureFormatter is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Security.Cryptography.AsymmetricSignatureFormatter.Typ   with record
      null;
   end record;
   function new_DSASignatureFormatter(
      This : Ref := null) return Ref;
   function new_DSASignatureFormatter(
      This : Ref := null;
      key : MSSyst.Security.Cryptography.AsymmetricAlgorithm.Ref) return Ref;
   function CreateSignature(
      This : access Typ;
      rgbHash : MSIL_Types.unsigned_int8_Arr) return MSIL_Types.unsigned_int8_Array;
   procedure SetHashAlgorithm(
      This : access Typ;
      strName : MSSyst.String.Ref);
   procedure SetKey(
      This : access Typ;
      key : MSSyst.Security.Cryptography.AsymmetricAlgorithm.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DSASignatureFormatter);
   pragma Import(MSIL,CreateSignature,"CreateSignature");
   pragma Import(MSIL,SetHashAlgorithm,"SetHashAlgorithm");
   pragma Import(MSIL,SetKey,"SetKey");
end MSSyst.Security.Cryptography.DSASignatureFormatter;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Security.Cryptography.DSASignatureFormatter,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Security.Cryptography.DSASignatureFormatter");
