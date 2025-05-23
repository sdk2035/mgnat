-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Color;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Windows.Forms.ProfessionalColorTable is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ProfessionalColorTable(
      This : Ref := null) return Ref;
   function get_ButtonCheckedGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonCheckedGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonCheckedGradientMiddle(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonCheckedHighlight(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonCheckedHighlightBorder(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonPressedBorder(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonPressedGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonPressedGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonPressedGradientMiddle(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonPressedHighlight(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonPressedHighlightBorder(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonSelectedBorder(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonSelectedGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonSelectedGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonSelectedGradientMiddle(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonSelectedHighlight(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ButtonSelectedHighlightBorder(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_CheckBackground(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_CheckPressedBackground(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_CheckSelectedBackground(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_GripDark(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_GripLight(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ImageMarginGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ImageMarginGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ImageMarginGradientMiddle(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ImageMarginRevealedGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ImageMarginRevealedGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ImageMarginRevealedGradientMiddle(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuBorder(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuItemBorder(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuItemPressedGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuItemPressedGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuItemPressedGradientMiddle(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuItemSelected(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuItemSelectedGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuItemSelectedGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuStripGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_MenuStripGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_OverflowButtonGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_OverflowButtonGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_OverflowButtonGradientMiddle(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_RaftingContainerGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_RaftingContainerGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_SeparatorDark(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_SeparatorLight(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_StatusStripGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_StatusStripGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ToolStripBorder(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ToolStripContentPanelGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ToolStripContentPanelGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ToolStripDropDownBackground(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ToolStripGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ToolStripGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ToolStripGradientMiddle(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ToolStripPanelGradientBegin(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_ToolStripPanelGradientEnd(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_UseSystemColors(
      This : access Typ) return Standard.Boolean;
   procedure set_UseSystemColors(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ProfessionalColorTable);
   pragma Import(MSIL,get_ButtonCheckedGradientBegin,"get_ButtonCheckedGradientBegin");
   pragma Import(MSIL,get_ButtonCheckedGradientEnd,"get_ButtonCheckedGradientEnd");
   pragma Import(MSIL,get_ButtonCheckedGradientMiddle,"get_ButtonCheckedGradientMiddle");
   pragma Import(MSIL,get_ButtonCheckedHighlight,"get_ButtonCheckedHighlight");
   pragma Import(MSIL,get_ButtonCheckedHighlightBorder,"get_ButtonCheckedHighlightBorder");
   pragma Import(MSIL,get_ButtonPressedBorder,"get_ButtonPressedBorder");
   pragma Import(MSIL,get_ButtonPressedGradientBegin,"get_ButtonPressedGradientBegin");
   pragma Import(MSIL,get_ButtonPressedGradientEnd,"get_ButtonPressedGradientEnd");
   pragma Import(MSIL,get_ButtonPressedGradientMiddle,"get_ButtonPressedGradientMiddle");
   pragma Import(MSIL,get_ButtonPressedHighlight,"get_ButtonPressedHighlight");
   pragma Import(MSIL,get_ButtonPressedHighlightBorder,"get_ButtonPressedHighlightBorder");
   pragma Import(MSIL,get_ButtonSelectedBorder,"get_ButtonSelectedBorder");
   pragma Import(MSIL,get_ButtonSelectedGradientBegin,"get_ButtonSelectedGradientBegin");
   pragma Import(MSIL,get_ButtonSelectedGradientEnd,"get_ButtonSelectedGradientEnd");
   pragma Import(MSIL,get_ButtonSelectedGradientMiddle,"get_ButtonSelectedGradientMiddle");
   pragma Import(MSIL,get_ButtonSelectedHighlight,"get_ButtonSelectedHighlight");
   pragma Import(MSIL,get_ButtonSelectedHighlightBorder,"get_ButtonSelectedHighlightBorder");
   pragma Import(MSIL,get_CheckBackground,"get_CheckBackground");
   pragma Import(MSIL,get_CheckPressedBackground,"get_CheckPressedBackground");
   pragma Import(MSIL,get_CheckSelectedBackground,"get_CheckSelectedBackground");
   pragma Import(MSIL,get_GripDark,"get_GripDark");
   pragma Import(MSIL,get_GripLight,"get_GripLight");
   pragma Import(MSIL,get_ImageMarginGradientBegin,"get_ImageMarginGradientBegin");
   pragma Import(MSIL,get_ImageMarginGradientEnd,"get_ImageMarginGradientEnd");
   pragma Import(MSIL,get_ImageMarginGradientMiddle,"get_ImageMarginGradientMiddle");
   pragma Import(MSIL,get_ImageMarginRevealedGradientBegin,"get_ImageMarginRevealedGradientBegin");
   pragma Import(MSIL,get_ImageMarginRevealedGradientEnd,"get_ImageMarginRevealedGradientEnd");
   pragma Import(MSIL,get_ImageMarginRevealedGradientMiddle,"get_ImageMarginRevealedGradientMiddle");
   pragma Import(MSIL,get_MenuBorder,"get_MenuBorder");
   pragma Import(MSIL,get_MenuItemBorder,"get_MenuItemBorder");
   pragma Import(MSIL,get_MenuItemPressedGradientBegin,"get_MenuItemPressedGradientBegin");
   pragma Import(MSIL,get_MenuItemPressedGradientEnd,"get_MenuItemPressedGradientEnd");
   pragma Import(MSIL,get_MenuItemPressedGradientMiddle,"get_MenuItemPressedGradientMiddle");
   pragma Import(MSIL,get_MenuItemSelected,"get_MenuItemSelected");
   pragma Import(MSIL,get_MenuItemSelectedGradientBegin,"get_MenuItemSelectedGradientBegin");
   pragma Import(MSIL,get_MenuItemSelectedGradientEnd,"get_MenuItemSelectedGradientEnd");
   pragma Import(MSIL,get_MenuStripGradientBegin,"get_MenuStripGradientBegin");
   pragma Import(MSIL,get_MenuStripGradientEnd,"get_MenuStripGradientEnd");
   pragma Import(MSIL,get_OverflowButtonGradientBegin,"get_OverflowButtonGradientBegin");
   pragma Import(MSIL,get_OverflowButtonGradientEnd,"get_OverflowButtonGradientEnd");
   pragma Import(MSIL,get_OverflowButtonGradientMiddle,"get_OverflowButtonGradientMiddle");
   pragma Import(MSIL,get_RaftingContainerGradientBegin,"get_RaftingContainerGradientBegin");
   pragma Import(MSIL,get_RaftingContainerGradientEnd,"get_RaftingContainerGradientEnd");
   pragma Import(MSIL,get_SeparatorDark,"get_SeparatorDark");
   pragma Import(MSIL,get_SeparatorLight,"get_SeparatorLight");
   pragma Import(MSIL,get_StatusStripGradientBegin,"get_StatusStripGradientBegin");
   pragma Import(MSIL,get_StatusStripGradientEnd,"get_StatusStripGradientEnd");
   pragma Import(MSIL,get_ToolStripBorder,"get_ToolStripBorder");
   pragma Import(MSIL,get_ToolStripContentPanelGradientBegin,"get_ToolStripContentPanelGradientBegin");
   pragma Import(MSIL,get_ToolStripContentPanelGradientEnd,"get_ToolStripContentPanelGradientEnd");
   pragma Import(MSIL,get_ToolStripDropDownBackground,"get_ToolStripDropDownBackground");
   pragma Import(MSIL,get_ToolStripGradientBegin,"get_ToolStripGradientBegin");
   pragma Import(MSIL,get_ToolStripGradientEnd,"get_ToolStripGradientEnd");
   pragma Import(MSIL,get_ToolStripGradientMiddle,"get_ToolStripGradientMiddle");
   pragma Import(MSIL,get_ToolStripPanelGradientBegin,"get_ToolStripPanelGradientBegin");
   pragma Import(MSIL,get_ToolStripPanelGradientEnd,"get_ToolStripPanelGradientEnd");
   pragma Import(MSIL,get_UseSystemColors,"get_UseSystemColors");
   pragma Import(MSIL,set_UseSystemColors,"set_UseSystemColors");
end MSSyst.Windows.Forms.ProfessionalColorTable;
pragma Import(MSIL,MSSyst.Windows.Forms.ProfessionalColorTable,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ProfessionalColorTable");
