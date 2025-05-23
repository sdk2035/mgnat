-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Graphics;
limited with MSSyst.Drawing.Rectangle;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Windows.Forms.ProgressBarRenderer is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure DrawHorizontalBar(
      g : access MSSyst.Drawing.Graphics.Typ'Class;
      bounds : MSSyst.Drawing.Rectangle.Valuetype);
   procedure DrawHorizontalChunks(
      g : access MSSyst.Drawing.Graphics.Typ'Class;
      bounds : MSSyst.Drawing.Rectangle.Valuetype);
   procedure DrawVerticalBar(
      g : access MSSyst.Drawing.Graphics.Typ'Class;
      bounds : MSSyst.Drawing.Rectangle.Valuetype);
   procedure DrawVerticalChunks(
      g : access MSSyst.Drawing.Graphics.Typ'Class;
      bounds : MSSyst.Drawing.Rectangle.Valuetype);
   function get_ChunkSpaceThickness return Integer;
   function get_ChunkThickness return Integer;
   function get_IsSupported return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,DrawHorizontalBar,"DrawHorizontalBar");
   pragma Import(MSIL,DrawHorizontalChunks,"DrawHorizontalChunks");
   pragma Import(MSIL,DrawVerticalBar,"DrawVerticalBar");
   pragma Import(MSIL,DrawVerticalChunks,"DrawVerticalChunks");
   pragma Import(MSIL,get_ChunkSpaceThickness,"get_ChunkSpaceThickness");
   pragma Import(MSIL,get_ChunkThickness,"get_ChunkThickness");
   pragma Import(MSIL,get_IsSupported,"get_IsSupported");
end MSSyst.Windows.Forms.ProgressBarRenderer;
pragma Import(MSIL,MSSyst.Windows.Forms.ProgressBarRenderer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ProgressBarRenderer");
