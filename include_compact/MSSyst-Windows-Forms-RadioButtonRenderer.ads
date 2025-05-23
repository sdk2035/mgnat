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
with type MSSyst.Windows.Forms.Control.Ref is access;
with type MSSyst.Drawing.Point.Valuetype is tagged;
with type MSSyst.String.Ref is access;
with type MSSyst.Drawing.Font.Ref is access;
with MSSyst.Windows.Forms.VisualStyles.RadioButtonState;
with MSSyst.Windows.Forms.TextFormatFlags;
with type MSSyst.Drawing.Image.Ref is access;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Windows.Forms.RadioButtonRenderer is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   procedure DrawParentBackground(
      g : MSSyst.Drawing.Graphics.Ref;
      bounds : MSSyst.Drawing.Rectangle.Valuetype;
      childControl : MSSyst.Windows.Forms.Control.Ref);
   procedure DrawRadioButton(
      g : MSSyst.Drawing.Graphics.Ref;
      glyphLocation : MSSyst.Drawing.Point.Valuetype;
      textBounds : MSSyst.Drawing.Rectangle.Valuetype;
      radioButtonText : MSSyst.String.Ref;
      font : MSSyst.Drawing.Font.Ref;
      focused : Standard.Boolean;
      state : MSSyst.Windows.Forms.VisualStyles.RadioButtonState.Valuetype);
   procedure DrawRadioButton(
      g : MSSyst.Drawing.Graphics.Ref;
      glyphLocation : MSSyst.Drawing.Point.Valuetype;
      textBounds : MSSyst.Drawing.Rectangle.Valuetype;
      radioButtonText : MSSyst.String.Ref;
      font : MSSyst.Drawing.Font.Ref;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype;
      focused : Standard.Boolean;
      state : MSSyst.Windows.Forms.VisualStyles.RadioButtonState.Valuetype);
   procedure DrawRadioButton(
      g : MSSyst.Drawing.Graphics.Ref;
      glyphLocation : MSSyst.Drawing.Point.Valuetype;
      textBounds : MSSyst.Drawing.Rectangle.Valuetype;
      radioButtonText : MSSyst.String.Ref;
      font : MSSyst.Drawing.Font.Ref;
      flags : MSSyst.Windows.Forms.TextFormatFlags.Valuetype;
      image : MSSyst.Drawing.Image.Ref;
      imageBounds : MSSyst.Drawing.Rectangle.Valuetype;
      focused : Standard.Boolean;
      state : MSSyst.Windows.Forms.VisualStyles.RadioButtonState.Valuetype);
   procedure DrawRadioButton(
      g : MSSyst.Drawing.Graphics.Ref;
      glyphLocation : MSSyst.Drawing.Point.Valuetype;
      textBounds : MSSyst.Drawing.Rectangle.Valuetype;
      radioButtonText : MSSyst.String.Ref;
      font : MSSyst.Drawing.Font.Ref;
      image : MSSyst.Drawing.Image.Ref;
      imageBounds : MSSyst.Drawing.Rectangle.Valuetype;
      focused : Standard.Boolean;
      state : MSSyst.Windows.Forms.VisualStyles.RadioButtonState.Valuetype);
   procedure DrawRadioButton(
      g : MSSyst.Drawing.Graphics.Ref;
      glyphLocation : MSSyst.Drawing.Point.Valuetype;
      state : MSSyst.Windows.Forms.VisualStyles.RadioButtonState.Valuetype);
   function get_RenderMatchingApplicationState return Standard.Boolean;
   function GetGlyphSize(
      g : MSSyst.Drawing.Graphics.Ref;
      state : MSSyst.Windows.Forms.VisualStyles.RadioButtonState.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   function IsBackgroundPartiallyTransparent(
      state : MSSyst.Windows.Forms.VisualStyles.RadioButtonState.Valuetype) return Standard.Boolean;
   procedure set_RenderMatchingApplicationState(
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,DrawParentBackground,"DrawParentBackground");
   pragma Import(MSIL,DrawRadioButton,"DrawRadioButton");
   pragma Import(MSIL,get_RenderMatchingApplicationState,"get_RenderMatchingApplicationState");
   pragma Import(MSIL,GetGlyphSize,"GetGlyphSize");
   pragma Import(MSIL,IsBackgroundPartiallyTransparent,"IsBackgroundPartiallyTransparent");
   pragma Import(MSIL,set_RenderMatchingApplicationState,"set_RenderMatchingApplicationState");
end MSSyst.Windows.Forms.RadioButtonRenderer;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.RadioButtonRenderer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.RadioButtonRenderer");
