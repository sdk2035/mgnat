-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Graphics;
limited with MSSyst.Drawing.Image;
limited with MSSyst.Drawing.Rectangle;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.Windows.Forms.ToolStripItemRenderEventArgs;
limited with MSSyst.Windows.Forms.ToolStripItem;
limited with MSSyst.Windows.Forms.ToolStrip;
package MSSyst.Windows.Forms.ToolStripItemImageRenderEventArgs is
   type Typ is new MSSyst.Windows.Forms.ToolStripItemRenderEventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ToolStripItemImageRenderEventArgs(
      This : Ref := null;
      g : access MSSyst.Drawing.Graphics.Typ'Class;
      item : access MSSyst.Windows.Forms.ToolStripItem.Typ'Class;
      imageRectangle : MSSyst.Drawing.Rectangle.Valuetype) return Ref;
   function new_ToolStripItemImageRenderEventArgs(
      This : Ref := null;
      g : access MSSyst.Drawing.Graphics.Typ'Class;
      item : access MSSyst.Windows.Forms.ToolStripItem.Typ'Class;
      image : access MSSyst.Drawing.Image.Typ'Class;
      imageRectangle : MSSyst.Drawing.Rectangle.Valuetype) return Ref;
   function get_Image(
      This : access Typ) return access MSSyst.Drawing.Image.Typ'Class;
   function get_ImageRectangle(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolStripItemImageRenderEventArgs);
   pragma Import(MSIL,get_Image,"get_Image");
   pragma Import(MSIL,get_ImageRectangle,"get_ImageRectangle");
end MSSyst.Windows.Forms.ToolStripItemImageRenderEventArgs;
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripItemImageRenderEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripItemImageRenderEventArgs");
