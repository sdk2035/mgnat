-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ComponentModel.Component;
with MSSyst.ComponentModel.IComponent;
limited with MSSyst.ComponentModel.IContainer;
limited with MSSyst.ComponentModel.ISite;
limited with MSSyst.Drawing.Color;
limited with MSSyst.Drawing.ContentAlignment;
limited with MSSyst.Drawing.Font;
limited with MSSyst.Drawing.Image;
limited with MSSyst.Drawing.Rectangle;
limited with MSSyst.Drawing.Size;
limited with MSSyst.EventHandler;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.AccessibleObject;
limited with MSSyst.Windows.Forms.AccessibleRole;
limited with MSSyst.Windows.Forms.AnchorStyles;
limited with MSSyst.Windows.Forms.CheckState;
limited with MSSyst.Windows.Forms.DockStyle;
limited with MSSyst.Windows.Forms.DragDropEffects;
limited with MSSyst.Windows.Forms.DragEventHandler;
limited with MSSyst.Windows.Forms.GiveFeedbackEventHandler;
with MSSyst.Windows.Forms.IDropTarget;
limited with MSSyst.Windows.Forms.ImageLayout;
limited with MSSyst.Windows.Forms.Keys;
limited with MSSyst.Windows.Forms.MergeAction;
limited with MSSyst.Windows.Forms.MouseEventHandler;
limited with MSSyst.Windows.Forms.Padding;
limited with MSSyst.Windows.Forms.PaintEventHandler;
limited with MSSyst.Windows.Forms.QueryAccessibilityHelpEventHandler;
limited with MSSyst.Windows.Forms.QueryContinueDragEventHandler;
limited with MSSyst.Windows.Forms.RightToLeft;
limited with MSSyst.Windows.Forms.TextImageRelation;
limited with MSSyst.Windows.Forms.ToolStripDropDownDirection;
with MSSyst.Windows.Forms.ToolStripDropDownItem;
limited with MSSyst.Windows.Forms.ToolStripDropDown;
with MSSyst.Windows.Forms.ToolStripItem;
limited with MSSyst.Windows.Forms.ToolStripItemAlignment;
limited with MSSyst.Windows.Forms.ToolStripItemClickedEventHandler;
limited with MSSyst.Windows.Forms.ToolStripItemCollection;
limited with MSSyst.Windows.Forms.ToolStripItemDisplayStyle;
limited with MSSyst.Windows.Forms.ToolStripItemImageScaling;
limited with MSSyst.Windows.Forms.ToolStripItemOverflow;
limited with MSSyst.Windows.Forms.ToolStripItemPlacement;
limited with MSSyst.Windows.Forms.ToolStripTextDirection;
limited with MSSyst.Windows.Forms.ToolStrip;
package MSSyst.Windows.Forms.ToolStripMenuItem is
   type Typ is new MSSyst.Windows.Forms.ToolStripDropDownItem.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.IDisposable.Typ
         and MSSyst.Windows.Forms.IDropTarget.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ToolStripMenuItem(
      This : Ref := null) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : access MSSyst.String.Typ'Class) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      image : access MSSyst.Drawing.Image.Typ'Class) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : access MSSyst.String.Typ'Class;
      image : access MSSyst.Drawing.Image.Typ'Class) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : access MSSyst.String.Typ'Class;
      image : access MSSyst.Drawing.Image.Typ'Class;
      onClick : access MSSyst.EventHandler.Typ'Class) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : access MSSyst.String.Typ'Class;
      image : access MSSyst.Drawing.Image.Typ'Class;
      onClick : access MSSyst.EventHandler.Typ'Class;
      name : access MSSyst.String.Typ'Class) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : access MSSyst.String.Typ'Class;
      image : access MSSyst.Drawing.Image.Typ'Class;
      dropDownItems : access MSSyst.Windows.Forms.ToolStripItem.Ref_arr) return Ref;
   function new_ToolStripMenuItem(
      This : Ref := null;
      text : access MSSyst.String.Typ'Class;
      image : access MSSyst.Drawing.Image.Typ'Class;
      onClick : access MSSyst.EventHandler.Typ'Class;
      shortcutKeys : MSSyst.Windows.Forms.Keys.Valuetype) return Ref;
   procedure add_CheckedChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_CheckStateChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
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
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ShortcutKeys(
      This : access Typ) return MSSyst.Windows.Forms.Keys.Valuetype;
   function get_ShowShortcutKeys(
      This : access Typ) return Standard.Boolean;
   procedure remove_CheckedChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_CheckStateChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
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
      value : access MSSyst.String.Typ'Class);
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
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripMenuItem,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripMenuItem");
