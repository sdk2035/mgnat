-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Drawing.Drawing2D.CustomLineCap;
with MSSyst.Drawing.Drawing2D.LineCap;
limited with MSSyst.Drawing.Drawing2D.LineJoin;
with MSSyst.ICloneable;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Drawing2D.AdjustableArrowCap is
   type Typ is new MSSyst.Drawing.Drawing2D.CustomLineCap.Typ
         and MSSyst.ICloneable.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_AdjustableArrowCap(
      This : Ref := null;
      width : Float;
      height : Float) return Ref;
   function new_AdjustableArrowCap(
      This : Ref := null;
      width : Float;
      height : Float;
      isFilled : Standard.Boolean) return Ref;
   function get_Filled(
      This : access Typ) return Standard.Boolean;
   function get_Height(
      This : access Typ) return Float;
   function get_MiddleInset(
      This : access Typ) return Float;
   function get_Width(
      This : access Typ) return Float;
   procedure set_Filled(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Height(
      This : access Typ;
      value : Float);
   procedure set_MiddleInset(
      This : access Typ;
      value : Float);
   procedure set_Width(
      This : access Typ;
      value : Float);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_AdjustableArrowCap);
   pragma Import(MSIL,get_Filled,"get_Filled");
   pragma Import(MSIL,get_Height,"get_Height");
   pragma Import(MSIL,get_MiddleInset,"get_MiddleInset");
   pragma Import(MSIL,get_Width,"get_Width");
   pragma Import(MSIL,set_Filled,"set_Filled");
   pragma Import(MSIL,set_Height,"set_Height");
   pragma Import(MSIL,set_MiddleInset,"set_MiddleInset");
   pragma Import(MSIL,set_Width,"set_Width");
end MSSyst.Drawing.Drawing2D.AdjustableArrowCap;
pragma Import(MSIL,MSSyst.Drawing.Drawing2D.AdjustableArrowCap,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Drawing2D.AdjustableArrowCap");
