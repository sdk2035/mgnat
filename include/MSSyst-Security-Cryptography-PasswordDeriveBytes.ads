-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Security.Cryptography.CspParameters;
with MSSyst.Security.Cryptography.DeriveBytes;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Security.Cryptography.PasswordDeriveBytes is
   type Typ is new MSSyst.Security.Cryptography.DeriveBytes.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_PasswordDeriveBytes(
      This : Ref := null;
      strPassword : access MSSyst.String.Typ'Class;
      rgbSalt : MSIL_Types.unsigned_int8_Arr) return Ref;
   function new_PasswordDeriveBytes(
      This : Ref := null;
      password : MSIL_Types.unsigned_int8_Arr;
      salt : MSIL_Types.unsigned_int8_Arr) return Ref;
   function new_PasswordDeriveBytes(
      This : Ref := null;
      strPassword : access MSSyst.String.Typ'Class;
      rgbSalt : MSIL_Types.unsigned_int8_Arr;
      strHashName : access MSSyst.String.Typ'Class;
      iterations : Integer) return Ref;
   function new_PasswordDeriveBytes(
      This : Ref := null;
      password : MSIL_Types.unsigned_int8_Arr;
      salt : MSIL_Types.unsigned_int8_Arr;
      hashName : access MSSyst.String.Typ'Class;
      iterations : Integer) return Ref;
   function new_PasswordDeriveBytes(
      This : Ref := null;
      strPassword : access MSSyst.String.Typ'Class;
      rgbSalt : MSIL_Types.unsigned_int8_Arr;
      cspParams : access MSSyst.Security.Cryptography.CspParameters.Typ'Class) return Ref;
   function new_PasswordDeriveBytes(
      This : Ref := null;
      password : MSIL_Types.unsigned_int8_Arr;
      salt : MSIL_Types.unsigned_int8_Arr;
      cspParams : access MSSyst.Security.Cryptography.CspParameters.Typ'Class) return Ref;
   function new_PasswordDeriveBytes(
      This : Ref := null;
      strPassword : access MSSyst.String.Typ'Class;
      rgbSalt : MSIL_Types.unsigned_int8_Arr;
      strHashName : access MSSyst.String.Typ'Class;
      iterations : Integer;
      cspParams : access MSSyst.Security.Cryptography.CspParameters.Typ'Class) return Ref;
   function new_PasswordDeriveBytes(
      This : Ref := null;
      password : MSIL_Types.unsigned_int8_Arr;
      salt : MSIL_Types.unsigned_int8_Arr;
      hashName : access MSSyst.String.Typ'Class;
      iterations : Integer;
      cspParams : access MSSyst.Security.Cryptography.CspParameters.Typ'Class) return Ref;
   function CryptDeriveKey(
      This : access Typ;
      algname : access MSSyst.String.Typ'Class;
      alghashname : access MSSyst.String.Typ'Class;
      keySize : Integer;
      rgbIV : MSIL_Types.unsigned_int8_Arr) return MSIL_Types.unsigned_int8_Array;
   function get_HashName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_IterationCount(
      This : access Typ) return Integer;
   function get_Salt(
      This : access Typ) return MSIL_Types.unsigned_int8_Array;
   function GetBytes(
      This : access Typ;
      cb : Integer) return MSIL_Types.unsigned_int8_Array;
   procedure Reset(
      This : access Typ);
   procedure set_HashName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_IterationCount(
      This : access Typ;
      value : Integer);
   procedure set_Salt(
      This : access Typ;
      value : MSIL_Types.unsigned_int8_Arr);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_PasswordDeriveBytes);
   pragma Import(MSIL,CryptDeriveKey,"CryptDeriveKey");
   pragma Import(MSIL,get_HashName,"get_HashName");
   pragma Import(MSIL,get_IterationCount,"get_IterationCount");
   pragma Import(MSIL,get_Salt,"get_Salt");
   pragma Import(MSIL,GetBytes,"GetBytes");
   pragma Import(MSIL,Reset,"Reset");
   pragma Import(MSIL,set_HashName,"set_HashName");
   pragma Import(MSIL,set_IterationCount,"set_IterationCount");
   pragma Import(MSIL,set_Salt,"set_Salt");
end MSSyst.Security.Cryptography.PasswordDeriveBytes;
pragma Import(MSIL,MSSyst.Security.Cryptography.PasswordDeriveBytes,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.Cryptography.PasswordDeriveBytes");
