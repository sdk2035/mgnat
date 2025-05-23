-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Random is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_Random(
      This : Ref := null) return Ref;
   function new_Random(
      This : Ref := null;
      Seed : Integer) return Ref;
   function Next(
      This : access Typ) return Integer;
   function Next(
      This : access Typ;
      minValue : Integer;
      maxValue : Integer) return Integer;
   function Next(
      This : access Typ;
      maxValue : Integer) return Integer;
   procedure NextBytes(
      This : access Typ;
      buffer : MSIL_Types.unsigned_int8_Arr);
   function NextDouble(
      This : access Typ) return Long_Float;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_Random);
   pragma Import(MSIL,Next,"Next");
   pragma Import(MSIL,NextBytes,"NextBytes");
   pragma Import(MSIL,NextDouble,"NextDouble");
end MSSyst.Random;
pragma Import(MSIL,MSSyst.Random,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Random");
