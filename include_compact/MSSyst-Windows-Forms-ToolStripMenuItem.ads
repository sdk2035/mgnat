-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.ToolStripDropDownItem;
with MSSyst.ComponentModel.IComponent;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Windows.Forms.DragEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ToolStripItemClickedEventHandler.Ref is access;
with type MSSyst.Windows.Forms.GiveFeedbackEventHandler.Ref is access;
with type MSSyst.Windows.Forms.MouseEventHandler.Ref is access;
with type MSSyst.Windows.Forms.PaintEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryAccessibilityHelpEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryContinueDragEventHandler.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Windows.Forms.DragDropEffects;
with type MSSyst.Object.Ref is access;
with type MSSyst.Windows.Forms.AccessibleObject.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Windows.Forms.AccessibleRole;
with MSSyst.Windows.Forms.ToolStripItemAlignment;
with MSSyst.Windows.Forms.AnchorStyles;
with type MSSyst.Drawing.Color.Valuetype is tagged;
with type MSSyst.Drawing.Image.Ref is access;
with MSSyst.Windows.Forms.ImageLayout;
with type MSSyst.Drawing.Rectangle.Valuetype is tagged;
with MSSyst.Windows.Forms.CheckState;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with MSSyst.Windows.Forms.ToolStripItemDisplayStyle;
with MSSyst.Windows.Forms.DockStyle;
with type MSSyst.Windows.Forms.ToolStripDropDown.Ref is access;
with MSSyst.Windows.Forms.ToolStripDropDownDirection;
with type MSSyst.Windows.Forms.ToolStripItemCollection.Ref is access;
with type MSSyst.Drawing.Font.Ref is access;
with MSSyst.Drawing.ContentAlignment;
with MSSyst.Windows.Forms.ToolStripItemImageScaling;
with type MSSyst.Windows.Forms.Padding.Valuetype is tagged;
with MSSyst.Windows.Forms.MergeAction;
with MSSyst.Windows.Forms.ToolStripItemOverflow;
with type MSSyst.Windows.Forms.ToolStrip.Ref is access;
with type MSSyst.Windows.Forms.ToolStripItem.Ref is access;
with MSSyst.Windows.Forms.ToolStripItemPlacement;
with MSSyst.Windows.Forms.RightToLeft;
with MSSyst.Windows.Forms.Keys;
with type MSSyst.ComponentModel.ISite.Ref is access;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with MSSyst.Windows.Forms.ToolStripTextDirection;
with MSSyst.Windows.Forms.TextImageRelation;
with type MSSyst.Windows.Forms.ToolStripItem.Ref_array is access;
package MSSyst.Windows.Forms.ToolStripMenuItem is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.ToolStripDropDownItem.Typ
         and MSSyst.ComponentModel.IComponent.Typ
   with record
      null;
   end record;
   function new_ToolStripMenuItem(
      This : Ref := null) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : MSSyst.String.Ref) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      image : MSSyst.Drawing.Image.Ref) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : MSSyst.String.Ref;
      image : MSSyst.Drawing.Image.Ref) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : MSSyst.String.Ref;
      image : MSSyst.Drawing.Image.Ref;
      onClick : MSSyst.EventHandler.Ref) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : MSSyst.String.Ref;
      image : MSSyst.Drawing.Image.Ref;
      onClick : MSSyst.EventHandler.Ref;
      name : MSSyst.String.Ref) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : MSSyst.String.Ref;
      image : MSSyst.Drawing.Image.Ref;
      dropDownItems : MSSyst.Windows.Forms.ToolStripItem.Ref_array) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : MSSyst.String.Ref;
      image : MSSyst.Drawing.Image.Ref;
      onClick : MSSyst.EventHandler.Ref;
      shortcutKeys : MSSyst.Windows.Forms.Keys.Valuetype) return Ref;
   procedure add_CheckedChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_CheckStateChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   function get_Checked(
      This : access Typ) return Standard.Boolean;
   function get_CheckOnClick(
      This : access Typ) return Standard.Boolean;
   function get_CheckState(
      This : access Typ) return MSSyst.Windows.Forms.CheckState.Valuetype;
   function get_Enabled(
      This : access Typ) return Standard.Boolean;
   function get_IsMdiWindowListEntry(
      This : access Typ) return Standard.Boolean;
   function get_Overflow(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripItemOverflow.Valuetype;
   function get_ShortcutKeyDisplayString(
      This : access Typ) return MSSyst.String.Ref;
   function get_ShortcutKeys(
      This : access Typ) return MSSyst.Windows.Forms.Keys.Valuetype;
   function get_ShowShortcutKeys(
      This : access Typ) return Standard.Boolean;
   procedure remove_CheckedChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_CheckStateChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure set_Checked(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_CheckOnClick(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_CheckState(
      This : access Typ;
      value : MSSyst.Windows.Forms.CheckState.Valuetype);
   procedure set_Enabled(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Overflow(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripItemOverflow.Valuetype);
   procedure set_ShortcutKeyDisplayString(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_ShortcutKeys(
      This : access Typ;
      value : MSSyst.Windows.Forms.Keys.Valuetype);
   procedure set_ShowShortcutKeys(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolStripMenuItem);
   pragma Import(MSIL,add_CheckedChanged,"add_CheckedChanged");
   pragma Import(MSIL,add_CheckStateChanged,"add_CheckStateChanged");
   pragma Import(MSIL,get_Checked,"get_Checked");
   pragma Import(MSIL,get_CheckOnClick,"get_CheckOnClick");
   pragma Import(MSIL,get_CheckState,"get_CheckState");
   pragma Import(MSIL,get_Enabled,"get_Enabled");
   pragma Import(MSIL,get_IsMdiWindowListEntry,"get_IsMdiWindowListEntry");
   pragma Import(MSIL,get_Overflow,"get_Overflow");
   pragma Import(MSIL,get_ShortcutKeyDisplayString,"get_ShortcutKeyDisplayString");
   pragma Import(MSIL,get_ShortcutKeys,"get_ShortcutKeys");
   pragma Import(MSIL,get_ShowShortcutKeys,"get_ShowShortcutKeys");
   pragma Import(MSIL,remove_CheckedChanged,"remove_CheckedChanged");
   pragma Import(MSIL,remove_CheckStateChanged,"remove_CheckStateChanged");
   pragma Import(MSIL,set_Checked,"set_Checked");
   pragma Import(MSIL,set_CheckOnClick,"set_CheckOnClick");
   pragma Import(MSIL,set_CheckState,"set_CheckState");
   pragma Import(MSIL,set_Enabled,"set_Enabled");
   pragma Import(MSIL,set_Overflow,"set_Overflow");
   pragma Import(MSIL,set_ShortcutKeyDisplayString,"set_ShortcutKeyDisplayString");
   pragma Import(MSIL,set_ShortcutKeys,"set_ShortcutKeys");
   pragma Import(MSIL,set_ShowShortcutKeys,"set_ShowShortcutKeys");
end MSSyst.Windows.Forms.ToolStripMenuItem;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripMenuItem,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripMenuItem");
