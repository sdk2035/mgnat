-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.Drawing.Graphics.Ref is access;
with type MSSyst.Drawing.Rectangle.Valuetype is tagged;
with MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState;
with MSSyst.Windows.Forms.VisualStyles.EdgeStyle;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.TrackBarRenderer is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   procedure DrawBottomPointingThumb(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype);
   procedure DrawHorizontalThumb(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype);
   procedure DrawHorizontalTicks(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      numTicks : Integer;
      edgeStyle : MSSyst.Windows.Forms.VisualStyles.EdgeStyle.Valuetype);
   procedure DrawHorizontalTrack(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype);
   procedure DrawLeftPointingThumb(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype);
   procedure DrawRightPointingThumb(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype);
   procedure DrawTopPointingThumb(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype);
   procedure DrawVerticalThumb(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype);
   procedure DrawVerticalTicks(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      numTicks : Integer;
      edgeStyle : MSSyst.Windows.Forms.VisualStyles.EdgeStyle.Valuetype);
   procedure DrawVerticalTrack(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype);
   function get_IsSupported return Standard.Boolean;
   function GetBottomPointingThumbSize(
      g : MSSyst.Drawing.Graphics.Ref;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function GetLeftPointingThumbSize(
      g : MSSyst.Drawing.Graphics.Ref;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function GetRightPointingThumbSize(
      g : MSSyst.Drawing.Graphics.Ref;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function GetTopPointingThumbSize(
      g : MSSyst.Drawing.Graphics.Ref;
      state : MSSyst.Windows.Forms.VisualStyles.TrackBarThumbState.Valuetype) return MSSyst.Drawing.Size.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,DrawBottomPointingThumb,"DrawBottomPointingThumb");
   pragma Import(MSIL,DrawHorizontalThumb,"DrawHorizontalThumb");
   pragma Import(MSIL,DrawHorizontalTicks,"DrawHorizontalTicks");
   pragma Import(MSIL,DrawHorizontalTrack,"DrawHorizontalTrack");
   pragma Import(MSIL,DrawLeftPointingThumb,"DrawLeftPointingThumb");
   pragma Import(MSIL,DrawRightPointingThumb,"DrawRightPointingThumb");
   pragma Import(MSIL,DrawTopPointingThumb,"DrawTopPointingThumb");
   pragma Import(MSIL,DrawVerticalThumb,"DrawVerticalThumb");
   pragma Import(MSIL,DrawVerticalTicks,"DrawVerticalTicks");
   pragma Import(MSIL,DrawVerticalTrack,"DrawVerticalTrack");
   pragma Import(MSIL,get_IsSupported,"get_IsSupported");
   pragma Import(MSIL,GetBottomPointingThumbSize,"GetBottomPointingThumbSize");
   pragma Import(MSIL,GetLeftPointingThumbSize,"GetLeftPointingThumbSize");
   pragma Import(MSIL,GetRightPointingThumbSize,"GetRightPointingThumbSize");
   pragma Import(MSIL,GetTopPointingThumbSize,"GetTopPointingThumbSize");
end MSSyst.Windows.Forms.TrackBarRenderer;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.TrackBarRenderer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.TrackBarRenderer");
