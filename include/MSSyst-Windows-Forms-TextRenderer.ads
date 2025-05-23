-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Color;
limited with MSSyst.Drawing.Font;
limited with MSSyst.Drawing.IDeviceContext;
limited with MSSyst.Drawing.Point;
limited with MSSyst.Drawing.Rectangle;
limited with MSSyst.Drawing.Size;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.TextFormatFlags;
package MSSyst.Windows.Forms.TextRenderer is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure DrawText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      foreColor : MSSyst.Drawing.Color.Valuetype;
      backColor : MSSyst.Drawing.Color.Valuetype);
   procedure DrawText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      foreColor : MSSyst.Drawing.Color.Valuetype);
   procedure DrawText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      foreColor : MSSyst.Drawing.Color.Valuetype;
      backColor : MSSyst.Drawing.Color.Valuetype;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype);
   procedure DrawText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      foreColor : MSSyst.Drawing.Color.Valuetype;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype);
   procedure DrawText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      pt : MSSyst.Drawing.Point.Valuetype;
      foreColor : MSSyst.Drawing.Color.Valuetype;
      backColor : MSSyst.Drawing.Color.Valuetype);
   procedure DrawText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      pt : MSSyst.Drawing.Point.Valuetype;
      foreColor : MSSyst.Drawing.Color.Valuetype);
   procedure DrawText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      pt : MSSyst.Drawing.Point.Valuetype;
      foreColor : MSSyst.Drawing.Color.Valuetype;
      backColor : MSSyst.Drawing.Color.Valuetype;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype);
   procedure DrawText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      pt : MSSyst.Drawing.Point.Valuetype;
      foreColor : MSSyst.Drawing.Color.Valuetype;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype);
   function MeasureText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      proposedSize : MSSyst.Drawing.Size.Valuetype;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function MeasureText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      proposedSize : MSSyst.Drawing.Size.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function MeasureText(
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class) return MSSyst.Drawing.Size.Valuetype;
   function MeasureText(
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      proposedSize : MSSyst.Drawing.Size.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function MeasureText(
      dc : access MSSyst.Drawing.IDeviceContext.Typ'Class;
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class) return MSSyst.Drawing.Size.Valuetype;
   function MeasureText(
      text : access MSSyst.String.Typ'Class;
      font : access MSSyst.Drawing.Font.Typ'Class;
      proposedSize : MSSyst.Drawing.Size.Valuetype;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype) return MSSyst.Drawing.Size.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,DrawText,"DrawText");
   pragma Import(MSIL,MeasureText,"MeasureText");
end MSSyst.Windows.Forms.TextRenderer;
pragma Import(MSIL,MSSyst.Windows.Forms.TextRenderer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.TextRenderer");
