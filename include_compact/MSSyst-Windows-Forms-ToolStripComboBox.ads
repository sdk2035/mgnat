-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.ToolStripControlHost;
with MSSyst.ComponentModel.IComponent;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Windows.Forms.DragEventHandler.Ref is access;
with type MSSyst.Windows.Forms.GiveFeedbackEventHandler.Ref is access;
with type MSSyst.Windows.Forms.KeyEventHandler.Ref is access;
with type MSSyst.Windows.Forms.KeyPressEventHandler.Ref is access;
with type MSSyst.Windows.Forms.MouseEventHandler.Ref is access;
with type MSSyst.Windows.Forms.PaintEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryAccessibilityHelpEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryContinueDragEventHandler.Ref is access;
with type MSSyst.ComponentModel.CancelEventHandler.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Windows.Forms.DragDropEffects;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Windows.Forms.AccessibleObject.Ref is access;
with MSSyst.Windows.Forms.AccessibleRole;
with MSSyst.Windows.Forms.ToolStripItemAlignment;
with MSSyst.Windows.Forms.AnchorStyles;
with type MSSyst.Windows.Forms.AutoCompleteStringCollection.Ref is access;
with MSSyst.Windows.Forms.AutoCompleteMode;
with MSSyst.Windows.Forms.AutoCompleteSource;
with type MSSyst.Drawing.Color.Valuetype is tagged;
with type MSSyst.Drawing.Image.Ref is access;
with MSSyst.Windows.Forms.ImageLayout;
with type MSSyst.Drawing.Rectangle.Valuetype is tagged;
with type MSSyst.Windows.Forms.ComboBox.Ref is access;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.Windows.Forms.Control.Ref is access;
with MSSyst.Drawing.ContentAlignment;
with MSSyst.Windows.Forms.ToolStripItemDisplayStyle;
with MSSyst.Windows.Forms.DockStyle;
with MSSyst.Windows.Forms.ComboBoxStyle;
with MSSyst.Windows.Forms.FlatStyle;
with type MSSyst.Drawing.Font.Ref is access;
with MSSyst.Windows.Forms.ToolStripItemImageScaling;
with type MSSyst.Windows.Forms.ComboBox.ObjectCollection.Ref is access;
with type MSSyst.Windows.Forms.Padding.Valuetype is tagged;
with MSSyst.Windows.Forms.MergeAction;
with MSSyst.Windows.Forms.ToolStripItemOverflow;
with type MSSyst.Windows.Forms.ToolStrip.Ref is access;
with type MSSyst.Windows.Forms.ToolStripItem.Ref is access;
with MSSyst.Windows.Forms.ToolStripItemPlacement;
with MSSyst.Windows.Forms.RightToLeft;
with type MSSyst.ComponentModel.ISite.Ref is access;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with MSSyst.Windows.Forms.ToolStripTextDirection;
with MSSyst.Windows.Forms.TextImageRelation;
package MSSyst.Windows.Forms.ToolStripComboBox is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.ToolStripControlHost.Typ
         and MSSyst.ComponentModel.IComponent.Typ
   with record
      null;
   end record;
   function new_ToolStripComboBox(
      This : Ref := null) return Ref;
   function new_ToolStripComboBox(
      This : Ref := null;
      name : MSSyst.String.Ref) return Ref;
   function new_ToolStripComboBox(
      This : Ref := null;
      c : MSSyst.Windows.Forms.Control.Ref) return Ref;
   procedure add_DoubleClick(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_DropDown(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_DropDownClosed(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_DropDownStyleChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_SelectedIndexChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_TextUpdate(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure BeginUpdate(
      This : access Typ);
   procedure EndUpdate(
      This : access Typ);
   function FindString(
      This : access Typ;
      s : MSSyst.String.Ref) return Integer;
   function FindString(
      This : access Typ;
      s : MSSyst.String.Ref;
      startIndex : Integer) return Integer;
   function FindStringExact(
      This : access Typ;
      s : MSSyst.String.Ref;
      startIndex : Integer) return Integer;
   function FindStringExact(
      This : access Typ;
      s : MSSyst.String.Ref) return Integer;
   function get_AutoCompleteCustomSource(
      This : access Typ) return MSSyst.Windows.Forms.AutoCompleteStringCollection.Ref;
   function get_AutoCompleteMode(
      This : access Typ) return MSSyst.Windows.Forms.AutoCompleteMode.Valuetype;
   function get_AutoCompleteSource(
      This : access Typ) return MSSyst.Windows.Forms.AutoCompleteSource.Valuetype;
   function get_BackgroundImage(
      This : access Typ) return MSSyst.Drawing.Image.Ref;
   function get_BackgroundImageLayout(
      This : access Typ) return MSSyst.Windows.Forms.ImageLayout.Valuetype;
   function get_ComboBox(
      This : access Typ) return MSSyst.Windows.Forms.ComboBox.Ref;
   function get_DropDownHeight(
      This : access Typ) return Integer;
   function get_DropDownStyle(
      This : access Typ) return MSSyst.Windows.Forms.ComboBoxStyle.Valuetype;
   function get_DropDownWidth(
      This : access Typ) return Integer;
   function get_DroppedDown(
      This : access Typ) return Standard.Boolean;
   function get_FlatStyle(
      This : access Typ) return MSSyst.Windows.Forms.FlatStyle.Valuetype;
   function get_IntegralHeight(
      This : access Typ) return Standard.Boolean;
   function get_Items(
      This : access Typ) return MSSyst.Windows.Forms.ComboBox.ObjectCollection.Ref;
   function get_MaxDropDownItems(
      This : access Typ) return Integer;
   function get_MaxLength(
      This : access Typ) return Integer;
   function get_SelectedIndex(
      This : access Typ) return Integer;
   function get_SelectedItem(
      This : access Typ) return MSSyst.Object.Ref;
   function get_SelectedText(
      This : access Typ) return MSSyst.String.Ref;
   function get_SelectionLength(
      This : access Typ) return Integer;
   function get_SelectionStart(
      This : access Typ) return Integer;
   function get_Sorted(
      This : access Typ) return Standard.Boolean;
   function GetItemHeight(
      This : access Typ;
      index : Integer) return Integer;
   function GetPreferredSize(
      This : access Typ;
      constrainingSize : MSSyst.Drawing.Size.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   procedure remove_DoubleClick(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_DropDown(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_DropDownClosed(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_DropDownStyleChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_SelectedIndexChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_TextUpdate(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure Select_k(
      This : access Typ;
      start : Integer;
      length : Integer);
   procedure SelectAll(
      This : access Typ);
   procedure set_AutoCompleteCustomSource(
      This : access Typ;
      value : MSSyst.Windows.Forms.AutoCompleteStringCollection.Ref);
   procedure set_AutoCompleteMode(
      This : access Typ;
      value : MSSyst.Windows.Forms.AutoCompleteMode.Valuetype);
   procedure set_AutoCompleteSource(
      This : access Typ;
      value : MSSyst.Windows.Forms.AutoCompleteSource.Valuetype);
   procedure set_BackgroundImage(
      This : access Typ;
      value : MSSyst.Drawing.Image.Ref);
   procedure set_BackgroundImageLayout(
      This : access Typ;
      value : MSSyst.Windows.Forms.ImageLayout.Valuetype);
   procedure set_DropDownHeight(
      This : access Typ;
      value : Integer);
   procedure set_DropDownStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.ComboBoxStyle.Valuetype);
   procedure set_DropDownWidth(
      This : access Typ;
      value : Integer);
   procedure set_DroppedDown(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_FlatStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.FlatStyle.Valuetype);
   procedure set_IntegralHeight(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_MaxDropDownItems(
      This : access Typ;
      value : Integer);
   procedure set_MaxLength(
      This : access Typ;
      value : Integer);
   procedure set_SelectedIndex(
      This : access Typ;
      value : Integer);
   procedure set_SelectedItem(
      This : access Typ;
      value : MSSyst.Object.Ref);
   procedure set_SelectedText(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_SelectionLength(
      This : access Typ;
      value : Integer);
   procedure set_SelectionStart(
      This : access Typ;
      value : Integer);
   procedure set_Sorted(
      This : access Typ;
      value : Standard.Boolean);
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolStripComboBox);
   pragma Import(MSIL,add_DoubleClick,"add_DoubleClick");
   pragma Import(MSIL,add_DropDown,"add_DropDown");
   pragma Import(MSIL,add_DropDownClosed,"add_DropDownClosed");
   pragma Import(MSIL,add_DropDownStyleChanged,"add_DropDownStyleChanged");
   pragma Import(MSIL,add_SelectedIndexChanged,"add_SelectedIndexChanged");
   pragma Import(MSIL,add_TextUpdate,"add_TextUpdate");
   pragma Import(MSIL,BeginUpdate,"BeginUpdate");
   pragma Import(MSIL,EndUpdate,"EndUpdate");
   pragma Import(MSIL,FindString,"FindString");
   pragma Import(MSIL,FindStringExact,"FindStringExact");
   pragma Import(MSIL,get_AutoCompleteCustomSource,"get_AutoCompleteCustomSource");
   pragma Import(MSIL,get_AutoCompleteMode,"get_AutoCompleteMode");
   pragma Import(MSIL,get_AutoCompleteSource,"get_AutoCompleteSource");
   pragma Import(MSIL,get_BackgroundImage,"get_BackgroundImage");
   pragma Import(MSIL,get_BackgroundImageLayout,"get_BackgroundImageLayout");
   pragma Import(MSIL,get_ComboBox,"get_ComboBox");
   pragma Import(MSIL,get_DropDownHeight,"get_DropDownHeight");
   pragma Import(MSIL,get_DropDownStyle,"get_DropDownStyle");
   pragma Import(MSIL,get_DropDownWidth,"get_DropDownWidth");
   pragma Import(MSIL,get_DroppedDown,"get_DroppedDown");
   pragma Import(MSIL,get_FlatStyle,"get_FlatStyle");
   pragma Import(MSIL,get_IntegralHeight,"get_IntegralHeight");
   pragma Import(MSIL,get_Items,"get_Items");
   pragma Import(MSIL,get_MaxDropDownItems,"get_MaxDropDownItems");
   pragma Import(MSIL,get_MaxLength,"get_MaxLength");
   pragma Import(MSIL,get_SelectedIndex,"get_SelectedIndex");
   pragma Import(MSIL,get_SelectedItem,"get_SelectedItem");
   pragma Import(MSIL,get_SelectedText,"get_SelectedText");
   pragma Import(MSIL,get_SelectionLength,"get_SelectionLength");
   pragma Import(MSIL,get_SelectionStart,"get_SelectionStart");
   pragma Import(MSIL,get_Sorted,"get_Sorted");
   pragma Import(MSIL,GetItemHeight,"GetItemHeight");
   pragma Import(MSIL,GetPreferredSize,"GetPreferredSize");
   pragma Import(MSIL,remove_DoubleClick,"remove_DoubleClick");
   pragma Import(MSIL,remove_DropDown,"remove_DropDown");
   pragma Import(MSIL,remove_DropDownClosed,"remove_DropDownClosed");
   pragma Import(MSIL,remove_DropDownStyleChanged,"remove_DropDownStyleChanged");
   pragma Import(MSIL,remove_SelectedIndexChanged,"remove_SelectedIndexChanged");
   pragma Import(MSIL,remove_TextUpdate,"remove_TextUpdate");
   pragma Import(MSIL,Select_k,"Select");
   pragma Import(MSIL,SelectAll,"SelectAll");
   pragma Import(MSIL,set_AutoCompleteCustomSource,"set_AutoCompleteCustomSource");
   pragma Import(MSIL,set_AutoCompleteMode,"set_AutoCompleteMode");
   pragma Import(MSIL,set_AutoCompleteSource,"set_AutoCompleteSource");
   pragma Import(MSIL,set_BackgroundImage,"set_BackgroundImage");
   pragma Import(MSIL,set_BackgroundImageLayout,"set_BackgroundImageLayout");
   pragma Import(MSIL,set_DropDownHeight,"set_DropDownHeight");
   pragma Import(MSIL,set_DropDownStyle,"set_DropDownStyle");
   pragma Import(MSIL,set_DropDownWidth,"set_DropDownWidth");
   pragma Import(MSIL,set_DroppedDown,"set_DroppedDown");
   pragma Import(MSIL,set_FlatStyle,"set_FlatStyle");
   pragma Import(MSIL,set_IntegralHeight,"set_IntegralHeight");
   pragma Import(MSIL,set_MaxDropDownItems,"set_MaxDropDownItems");
   pragma Import(MSIL,set_MaxLength,"set_MaxLength");
   pragma Import(MSIL,set_SelectedIndex,"set_SelectedIndex");
   pragma Import(MSIL,set_SelectedItem,"set_SelectedItem");
   pragma Import(MSIL,set_SelectedText,"set_SelectedText");
   pragma Import(MSIL,set_SelectionLength,"set_SelectionLength");
   pragma Import(MSIL,set_SelectionStart,"set_SelectionStart");
   pragma Import(MSIL,set_Sorted,"set_Sorted");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.ToolStripComboBox;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripComboBox,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripComboBox");
