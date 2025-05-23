-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.CancelEventHandler;
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
limited with MSSyst.Windows.Forms.Control;
limited with MSSyst.Windows.Forms.DockStyle;
limited with MSSyst.Windows.Forms.DragDropEffects;
limited with MSSyst.Windows.Forms.DragEventHandler;
limited with MSSyst.Windows.Forms.GiveFeedbackEventHandler;
with MSSyst.Windows.Forms.IDropTarget;
limited with MSSyst.Windows.Forms.ImageLayout;
limited with MSSyst.Windows.Forms.KeyEventHandler;
limited with MSSyst.Windows.Forms.KeyPressEventHandler;
limited with MSSyst.Windows.Forms.MergeAction;
limited with MSSyst.Windows.Forms.MouseEventHandler;
limited with MSSyst.Windows.Forms.Padding;
limited with MSSyst.Windows.Forms.PaintEventHandler;
limited with MSSyst.Windows.Forms.QueryAccessibilityHelpEventHandler;
limited with MSSyst.Windows.Forms.QueryContinueDragEventHandler;
limited with MSSyst.Windows.Forms.RightToLeft;
limited with MSSyst.Windows.Forms.TextImageRelation;
with MSSyst.Windows.Forms.ToolStripItem;
limited with MSSyst.Windows.Forms.ToolStripItemAlignment;
limited with MSSyst.Windows.Forms.ToolStripItemDisplayStyle;
limited with MSSyst.Windows.Forms.ToolStripItemImageScaling;
limited with MSSyst.Windows.Forms.ToolStripItemOverflow;
limited with MSSyst.Windows.Forms.ToolStripItemPlacement;
limited with MSSyst.Windows.Forms.ToolStripTextDirection;
limited with MSSyst.Windows.Forms.ToolStrip;
package MSSyst.Windows.Forms.ToolStripControlHost is
   type Typ is new MSSyst.Windows.Forms.ToolStripItem.Typ
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
   function new_ToolStripControlHost(
      This : Ref := null;
      c : access MSSyst.Windows.Forms.Control.Typ'Class) return Ref;
   function new_ToolStripControlHost(
      This : Ref := null;
      c : access MSSyst.Windows.Forms.Control.Typ'Class;
      name : access MSSyst.String.Typ'Class) return Ref;
   procedure add_DisplayStyleChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_Enter(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_GotFocus(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_KeyDown(
      This : access Typ;
      value : access MSSyst.Windows.Forms.KeyEventHandler.Typ'Class);
   procedure add_KeyPress(
      This : access Typ;
      value : access MSSyst.Windows.Forms.KeyPressEventHandler.Typ'Class);
   procedure add_KeyUp(
      This : access Typ;
      value : access MSSyst.Windows.Forms.KeyEventHandler.Typ'Class);
   procedure add_Leave(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_LostFocus(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_Validated(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_Validating(
      This : access Typ;
      value : access MSSyst.ComponentModel.CancelEventHandler.Typ'Class);
   procedure Focus(
      This : access Typ);
   function get_BackColor(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_BackgroundImage(
      This : access Typ) return access MSSyst.Drawing.Image.Typ'Class;
   function get_BackgroundImageLayout(
      This : access Typ) return MSSyst.Windows.Forms.ImageLayout.Valuetype;
   function get_CanSelect(
      This : access Typ) return Standard.Boolean;
   function get_CausesValidation(
      This : access Typ) return Standard.Boolean;
   function get_Control(
      This : access Typ) return access MSSyst.Windows.Forms.Control.Typ'Class;
   function get_ControlAlign(
      This : access Typ) return MSSyst.Drawing.ContentAlignment.Valuetype;
   function get_DisplayStyle(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripItemDisplayStyle.Valuetype;
   function get_DoubleClickEnabled(
      This : access Typ) return Standard.Boolean;
   function get_Enabled(
      This : access Typ) return Standard.Boolean;
   function get_Focused(
      This : access Typ) return Standard.Boolean;
   function get_Font(
      This : access Typ) return access MSSyst.Drawing.Font.Typ'Class;
   function get_ForeColor(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_Image(
      This : access Typ) return access MSSyst.Drawing.Image.Typ'Class;
   function get_ImageAlign(
      This : access Typ) return MSSyst.Drawing.ContentAlignment.Valuetype;
   function get_ImageScaling(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripItemImageScaling.Valuetype;
   function get_ImageTransparentColor(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_RightToLeft(
      This : access Typ) return MSSyst.Windows.Forms.RightToLeft.Valuetype;
   function get_RightToLeftAutoMirrorImage(
      This : access Typ) return Standard.Boolean;
   function get_Selected(
      This : access Typ) return Standard.Boolean;
   function get_Site(
      This : access Typ) return access MSSyst.ComponentModel.ISite.Typ'Class;
   function get_Size(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_Text(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_TextAlign(
      This : access Typ) return MSSyst.Drawing.ContentAlignment.Valuetype;
   function get_TextDirection(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripTextDirection.Valuetype;
   function get_TextImageRelation(
      This : access Typ) return MSSyst.Windows.Forms.TextImageRelation.Valuetype;
   function GetPreferredSize(
      This : access Typ;
      constrainingSize : MSSyst.Drawing.Size.Valuetype) return MSSyst.Drawing.Size.Valuetype;
   procedure remove_DisplayStyleChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_Enter(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_GotFocus(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_KeyDown(
      This : access Typ;
      value : access MSSyst.Windows.Forms.KeyEventHandler.Typ'Class);
   procedure remove_KeyPress(
      This : access Typ;
      value : access MSSyst.Windows.Forms.KeyPressEventHandler.Typ'Class);
   procedure remove_KeyUp(
      This : access Typ;
      value : access MSSyst.Windows.Forms.KeyEventHandler.Typ'Class);
   procedure remove_Leave(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_LostFocus(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_Validated(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_Validating(
      This : access Typ;
      value : access MSSyst.ComponentModel.CancelEventHandler.Typ'Class);
   procedure ResetBackColor(
      This : access Typ);
   procedure ResetForeColor(
      This : access Typ);
   procedure set_BackColor(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_BackgroundImage(
      This : access Typ;
      value : access MSSyst.Drawing.Image.Typ'Class);
   procedure set_BackgroundImageLayout(
      This : access Typ;
      value : MSSyst.Windows.Forms.ImageLayout.Valuetype);
   procedure set_CausesValidation(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ControlAlign(
      This : access Typ;
      value : MSSyst.Drawing.ContentAlignment.Valuetype);
   procedure set_DisplayStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripItemDisplayStyle.Valuetype);
   procedure set_DoubleClickEnabled(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Enabled(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Font(
      This : access Typ;
      value : access MSSyst.Drawing.Font.Typ'Class);
   procedure set_ForeColor(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_Image(
      This : access Typ;
      value : access MSSyst.Drawing.Image.Typ'Class);
   procedure set_ImageAlign(
      This : access Typ;
      value : MSSyst.Drawing.ContentAlignment.Valuetype);
   procedure set_ImageScaling(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripItemImageScaling.Valuetype);
   procedure set_ImageTransparentColor(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_RightToLeft(
      This : access Typ;
      value : MSSyst.Windows.Forms.RightToLeft.Valuetype);
   procedure set_RightToLeftAutoMirrorImage(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Site(
      This : access Typ;
      value : access MSSyst.ComponentModel.ISite.Typ'Class);
   procedure set_Size(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_Text(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_TextAlign(
      This : access Typ;
      value : MSSyst.Drawing.ContentAlignment.Valuetype);
   procedure set_TextDirection(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripTextDirection.Valuetype);
   procedure set_TextImageRelation(
      This : access Typ;
      value : MSSyst.Windows.Forms.TextImageRelation.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolStripControlHost);
   pragma Import(MSIL,add_DisplayStyleChanged,"add_DisplayStyleChanged");
   pragma Import(MSIL,add_Enter,"add_Enter");
   pragma Import(MSIL,add_GotFocus,"add_GotFocus");
   pragma Import(MSIL,add_KeyDown,"add_KeyDown");
   pragma Import(MSIL,add_KeyPress,"add_KeyPress");
   pragma Import(MSIL,add_KeyUp,"add_KeyUp");
   pragma Import(MSIL,add_Leave,"add_Leave");
   pragma Import(MSIL,add_LostFocus,"add_LostFocus");
   pragma Import(MSIL,add_Validated,"add_Validated");
   pragma Import(MSIL,add_Validating,"add_Validating");
   pragma Import(MSIL,Focus,"Focus");
   pragma Import(MSIL,get_BackColor,"get_BackColor");
   pragma Import(MSIL,get_BackgroundImage,"get_BackgroundImage");
   pragma Import(MSIL,get_BackgroundImageLayout,"get_BackgroundImageLayout");
   pragma Import(MSIL,get_CanSelect,"get_CanSelect");
   pragma Import(MSIL,get_CausesValidation,"get_CausesValidation");
   pragma Import(MSIL,get_Control,"get_Control");
   pragma Import(MSIL,get_ControlAlign,"get_ControlAlign");
   pragma Import(MSIL,get_DisplayStyle,"get_DisplayStyle");
   pragma Import(MSIL,get_DoubleClickEnabled,"get_DoubleClickEnabled");
   pragma Import(MSIL,get_Enabled,"get_Enabled");
   pragma Import(MSIL,get_Focused,"get_Focused");
   pragma Import(MSIL,get_Font,"get_Font");
   pragma Import(MSIL,get_ForeColor,"get_ForeColor");
   pragma Import(MSIL,get_Image,"get_Image");
   pragma Import(MSIL,get_ImageAlign,"get_ImageAlign");
   pragma Import(MSIL,get_ImageScaling,"get_ImageScaling");
   pragma Import(MSIL,get_ImageTransparentColor,"get_ImageTransparentColor");
   pragma Import(MSIL,get_RightToLeft,"get_RightToLeft");
   pragma Import(MSIL,get_RightToLeftAutoMirrorImage,"get_RightToLeftAutoMirrorImage");
   pragma Import(MSIL,get_Selected,"get_Selected");
   pragma Import(MSIL,get_Site,"get_Site");
   pragma Import(MSIL,get_Size,"get_Size");
   pragma Import(MSIL,get_Text,"get_Text");
   pragma Import(MSIL,get_TextAlign,"get_TextAlign");
   pragma Import(MSIL,get_TextDirection,"get_TextDirection");
   pragma Import(MSIL,get_TextImageRelation,"get_TextImageRelation");
   pragma Import(MSIL,GetPreferredSize,"GetPreferredSize");
   pragma Import(MSIL,remove_DisplayStyleChanged,"remove_DisplayStyleChanged");
   pragma Import(MSIL,remove_Enter,"remove_Enter");
   pragma Import(MSIL,remove_GotFocus,"remove_GotFocus");
   pragma Import(MSIL,remove_KeyDown,"remove_KeyDown");
   pragma Import(MSIL,remove_KeyPress,"remove_KeyPress");
   pragma Import(MSIL,remove_KeyUp,"remove_KeyUp");
   pragma Import(MSIL,remove_Leave,"remove_Leave");
   pragma Import(MSIL,remove_LostFocus,"remove_LostFocus");
   pragma Import(MSIL,remove_Validated,"remove_Validated");
   pragma Import(MSIL,remove_Validating,"remove_Validating");
   pragma Import(MSIL,ResetBackColor,"ResetBackColor");
   pragma Import(MSIL,ResetForeColor,"ResetForeColor");
   pragma Import(MSIL,set_BackColor,"set_BackColor");
   pragma Import(MSIL,set_BackgroundImage,"set_BackgroundImage");
   pragma Import(MSIL,set_BackgroundImageLayout,"set_BackgroundImageLayout");
   pragma Import(MSIL,set_CausesValidation,"set_CausesValidation");
   pragma Import(MSIL,set_ControlAlign,"set_ControlAlign");
   pragma Import(MSIL,set_DisplayStyle,"set_DisplayStyle");
   pragma Import(MSIL,set_DoubleClickEnabled,"set_DoubleClickEnabled");
   pragma Import(MSIL,set_Enabled,"set_Enabled");
   pragma Import(MSIL,set_Font,"set_Font");
   pragma Import(MSIL,set_ForeColor,"set_ForeColor");
   pragma Import(MSIL,set_Image,"set_Image");
   pragma Import(MSIL,set_ImageAlign,"set_ImageAlign");
   pragma Import(MSIL,set_ImageScaling,"set_ImageScaling");
   pragma Import(MSIL,set_ImageTransparentColor,"set_ImageTransparentColor");
   pragma Import(MSIL,set_RightToLeft,"set_RightToLeft");
   pragma Import(MSIL,set_RightToLeftAutoMirrorImage,"set_RightToLeftAutoMirrorImage");
   pragma Import(MSIL,set_Site,"set_Site");
   pragma Import(MSIL,set_Size,"set_Size");
   pragma Import(MSIL,set_Text,"set_Text");
   pragma Import(MSIL,set_TextAlign,"set_TextAlign");
   pragma Import(MSIL,set_TextDirection,"set_TextDirection");
   pragma Import(MSIL,set_TextImageRelation,"set_TextImageRelation");
end MSSyst.Windows.Forms.ToolStripControlHost;
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripControlHost,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripControlHost");
