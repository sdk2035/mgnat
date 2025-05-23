-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Drawing2D.GraphicsPath;
with MSSyst.Drawing.Drawing2D.LineCap;
limited with MSSyst.Drawing.Drawing2D.LineJoin;
with MSSyst.ICloneable;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Drawing2D.CustomLineCap is
   type Typ is new MSSyst.MarshalByRefObject.Typ
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
   function new_CustomLineCap(
      This : Ref := null;
      fillPath : access MSSyst.Drawing.Drawing2D.GraphicsPath.Typ'Class;
      strokePath : access MSSyst.Drawing.Drawing2D.GraphicsPath.Typ'Class) return Ref;
   function new_CustomLineCap(
      This : Ref := null;
      fillPath : access MSSyst.Drawing.Drawing2D.GraphicsPath.Typ'Class;
      strokePath : access MSSyst.Drawing.Drawing2D.GraphicsPath.Typ'Class;
      baseCap : MSSyst.Drawing.Drawing2D.LineCap.Valuetype) return Ref;
   function new_CustomLineCap(
      This : Ref := null;
      fillPath : access MSSyst.Drawing.Drawing2D.GraphicsPath.Typ'Class;
      strokePath : access MSSyst.Drawing.Drawing2D.GraphicsPath.Typ'Class;
      baseCap : MSSyst.Drawing.Drawing2D.LineCap.Valuetype;
      baseInset : Float) return Ref;
   function Clone(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   procedure Dispose(
      This : access Typ);
   function get_BaseCap(
      This : access Typ) return MSSyst.Drawing.Drawing2D.LineCap.Valuetype;
   function get_BaseInset(
      This : access Typ) return Float;
   function get_StrokeJoin(
      This : access Typ) return MSSyst.Drawing.Drawing2D.LineJoin.Valuetype;
   function get_WidthScale(
      This : access Typ) return Float;
   procedure GetStrokeCaps(
      This : access Typ;
      startCap : access MSSyst.Drawing.Drawing2D.LineCap.Valuetype;
      endCap : access MSSyst.Drawing.Drawing2D.LineCap.Valuetype);
   procedure set_BaseCap(
      This : access Typ;
      value : MSSyst.Drawing.Drawing2D.LineCap.Valuetype);
   procedure set_BaseInset(
      This : access Typ;
      value : Float);
   procedure set_StrokeJoin(
      This : access Typ;
      value : MSSyst.Drawing.Drawing2D.LineJoin.Valuetype);
   procedure set_WidthScale(
      This : access Typ;
      value : Float);
   procedure SetStrokeCaps(
      This : access Typ;
      startCap : MSSyst.Drawing.Drawing2D.LineCap.Valuetype;
      endCap : MSSyst.Drawing.Drawing2D.LineCap.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CustomLineCap);
   pragma Import(MSIL,Clone,"Clone");
   pragma Import(MSIL,Dispose,"Dispose");
   pragma Import(MSIL,get_BaseCap,"get_BaseCap");
   pragma Import(MSIL,get_BaseInset,"get_BaseInset");
   pragma Import(MSIL,get_StrokeJoin,"get_StrokeJoin");
   pragma Import(MSIL,get_WidthScale,"get_WidthScale");
   pragma Import(MSIL,GetStrokeCaps,"GetStrokeCaps");
   pragma Import(MSIL,set_BaseCap,"set_BaseCap");
   pragma Import(MSIL,set_BaseInset,"set_BaseInset");
   pragma Import(MSIL,set_StrokeJoin,"set_StrokeJoin");
   pragma Import(MSIL,set_WidthScale,"set_WidthScale");
   pragma Import(MSIL,SetStrokeCaps,"SetStrokeCaps");
end MSSyst.Drawing.Drawing2D.CustomLineCap;
pragma Import(MSIL,MSSyst.Drawing.Drawing2D.CustomLineCap,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Drawing2D.CustomLineCap");
