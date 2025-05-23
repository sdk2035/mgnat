-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ValueType;
with type MSSyst.Object.Ref is access;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Drawing.Rectangle.Valuetype is tagged;
with type MSSyst.String.Ref is access;
package MSSyst.Drawing.Internal.IntNativeMethods.RECT is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function new_RECT(
      left : Integer;
      top : Integer;
      right : Integer;
      bottom : Integer) return Valuetype;
   function new_RECT(
      r : MSSyst.Drawing.Rectangle.Valuetype) return Valuetype;
   function FromXYWH(
      x : Integer;
      y : Integer;
      width : Integer;
      height : Integer) return MSSyst.Drawing.Internal.IntNativeMethods.RECT.Valuetype;
   function get_Size(
      This : Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function ToRectangle(
      This : Valuetype) return MSSyst.Drawing.Rectangle.Valuetype;
private
   pragma MSIL_Constructor(new_RECT);
   pragma Import(MSIL,FromXYWH,"FromXYWH");
   pragma Import(MSIL,get_Size,"get_Size");
   pragma Import(MSIL,ToRectangle,"ToRectangle");
end MSSyst.Drawing.Internal.IntNativeMethods.RECT;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.Internal.IntNativeMethods.RECT,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Internal.IntNativeMethods/RECT");
