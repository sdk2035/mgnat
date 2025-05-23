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
with MSSyst.ValueType;
package MSSyst.Drawing.CharacterRange is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function new_CharacterRange(
      First : Integer;
      Length : Integer) return Valuetype;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_First(
      This : Valuetype) return Integer;
   function get_Length(
      This : Valuetype) return Integer;
   function GetHashCode(
      This : Valuetype) return Integer;
   function op_Equality(
      cr1 : MSSyst.Drawing.CharacterRange.Valuetype;
      cr2 : MSSyst.Drawing.CharacterRange.Valuetype) return Standard.Boolean;
   function op_Inequality(
      cr1 : MSSyst.Drawing.CharacterRange.Valuetype;
      cr2 : MSSyst.Drawing.CharacterRange.Valuetype) return Standard.Boolean;
   procedure set_First(
      This : Valuetype;
      value : Integer);
   procedure set_Length(
      This : Valuetype;
      value : Integer);
private
   pragma MSIL_Constructor(new_CharacterRange);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_First,"get_First");
   pragma Import(MSIL,get_Length,"get_Length");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
   pragma Import(MSIL,set_First,"set_First");
   pragma Import(MSIL,set_Length,"set_Length");
end MSSyst.Drawing.CharacterRange;
pragma Import(MSIL,MSSyst.Drawing.CharacterRange,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.CharacterRange");
