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
with MSSyst.ComponentModel.ISynchronizeInvoke;
limited with MSSyst.Delegate;
limited with MSSyst.Drawing.Bitmap;
limited with MSSyst.Drawing.Color;
limited with MSSyst.Drawing.ContentAlignment;
limited with MSSyst.Drawing.Font;
limited with MSSyst.Drawing.Graphics;
limited with MSSyst.Drawing.Image;
limited with MSSyst.Drawing.Point;
limited with MSSyst.Drawing.Rectangle;
limited with MSSyst.Drawing.Region;
limited with MSSyst.Drawing.SizeF;
limited with MSSyst.Drawing.Size;
limited with MSSyst.EventHandler;
limited with MSSyst.IAsyncResult;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.AccessibleObject;
limited with MSSyst.Windows.Forms.AccessibleRole;
limited with MSSyst.Windows.Forms.AnchorStyles;
limited with MSSyst.Windows.Forms.Appearance;
limited with MSSyst.Windows.Forms.BindingContext;
limited with MSSyst.Windows.Forms.BoundsSpecified;
with MSSyst.Windows.Forms.ButtonBase;
limited with MSSyst.Windows.Forms.CheckState;
limited with MSSyst.Windows.Forms.ContextMenuStrip;
limited with MSSyst.Windows.Forms.ContextMenu;
with MSSyst.Windows.Forms.Control;
limited with MSSyst.Windows.Forms.Control.ControlCollection;
limited with MSSyst.Windows.Forms.ControlBindingsCollection;
limited with MSSyst.Windows.Forms.ControlEventHandler;
limited with MSSyst.Windows.Forms.Cursor;
limited with MSSyst.Windows.Forms.DockStyle;
limited with MSSyst.Windows.Forms.DragDropEffects;
limited with MSSyst.Windows.Forms.DragEventHandler;
limited with MSSyst.Windows.Forms.FlatButtonAppearance;
limited with MSSyst.Windows.Forms.FlatStyle;
limited with MSSyst.Windows.Forms.Form;
limited with MSSyst.Windows.Forms.GetChildAtPointSkip;
limited with MSSyst.Windows.Forms.GiveFeedbackEventHandler;
limited with MSSyst.Windows.Forms.HelpEventHandler;
with MSSyst.Windows.Forms.IBindableComponent;
limited with MSSyst.Windows.Forms.IContainerControl;
with MSSyst.Windows.Forms.IDropTarget;
with MSSyst.Windows.Forms.IWin32Window;
limited with MSSyst.Windows.Forms.IWindowTarget;
limited with MSSyst.Windows.Forms.ImageLayout;
limited with MSSyst.Windows.Forms.ImageList;
limited with MSSyst.Windows.Forms.ImeMode;
limited with MSSyst.Windows.Forms.InvalidateEventHandler;
limited with MSSyst.Windows.Forms.KeyEventHandler;
limited with MSSyst.Windows.Forms.KeyPressEventHandler;
limited with MSSyst.Windows.Forms.Layout.LayoutEngine;
limited with MSSyst.Windows.Forms.LayoutEventHandler;
with MSSyst.Windows.Forms.Message;
limited with MSSyst.Windows.Forms.MouseEventHandler;
limited with MSSyst.Windows.Forms.Padding;
limited with MSSyst.Windows.Forms.PaintEventHandler;
limited with MSSyst.Windows.Forms.PreProcessControlState;
limited with MSSyst.Windows.Forms.PreviewKeyDownEventHandler;
limited with MSSyst.Windows.Forms.QueryAccessibilityHelpEventHandler;
limited with MSSyst.Windows.Forms.QueryContinueDragEventHandler;
limited with MSSyst.Windows.Forms.RightToLeft;
limited with MSSyst.Windows.Forms.TextImageRelation;
limited with MSSyst.Windows.Forms.UICuesEventHandler;
package MSSyst.Windows.Forms.CheckBox is
   type Typ is new MSSyst.Windows.Forms.ButtonBase.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.IDisposable.Typ
         and MSSyst.Windows.Forms.IDropTarget.Typ
         and MSSyst.ComponentModel.ISynchronizeInvoke.Typ
         and MSSyst.Windows.Forms.IWin32Window.Typ
         and MSSyst.Windows.Forms.IBindableComponent.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_CheckBox(
      This : Ref := null) return Ref;
   procedure add_AppearanceChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_CheckedChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_CheckStateChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_DoubleClick(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_MouseDoubleClick(
      This : access Typ;
      value : access MSSyst.Windows.Forms.MouseEventHandler.Typ'Class);
   function get_Appearance(
      This : access Typ) return MSSyst.Windows.Forms.Appearance.Valuetype;
   function get_AutoCheck(
      This : access Typ) return Standard.Boolean;
   function get_CheckAlign(
      This : access Typ) return MSSyst.Drawing.ContentAlignment.Valuetype;
   function get_Checked(
      This : access Typ) return Standard.Boolean;
   function get_CheckState(
      This : access Typ) return MSSyst.Windows.Forms.CheckState.Valuetype;
   function get_TextAlign(
      This : access Typ) return MSSyst.Drawing.ContentAlignment.Valuetype;
   function get_ThreeState(
      This : access Typ) return Standard.Boolean;
   procedure remove_AppearanceChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_CheckedChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_CheckStateChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_DoubleClick(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_MouseDoubleClick(
      This : access Typ;
      value : access MSSyst.Windows.Forms.MouseEventHandler.Typ'Class);
   procedure set_Appearance(
      This : access Typ;
      value : MSSyst.Windows.Forms.Appearance.Valuetype);
   procedure set_AutoCheck(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_CheckAlign(
      This : access Typ;
      value : MSSyst.Drawing.ContentAlignment.Valuetype);
   procedure set_Checked(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_CheckState(
      This : access Typ;
      value : MSSyst.Windows.Forms.CheckState.Valuetype);
   procedure set_TextAlign(
      This : access Typ;
      value : MSSyst.Drawing.ContentAlignment.Valuetype);
   procedure set_ThreeState(
      This : access Typ;
      value : Standard.Boolean);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_CheckBox);
   pragma Import(MSIL,add_AppearanceChanged,"add_AppearanceChanged");
   pragma Import(MSIL,add_CheckedChanged,"add_CheckedChanged");
   pragma Import(MSIL,add_CheckStateChanged,"add_CheckStateChanged");
   pragma Import(MSIL,add_DoubleClick,"add_DoubleClick");
   pragma Import(MSIL,add_MouseDoubleClick,"add_MouseDoubleClick");
   pragma Import(MSIL,get_Appearance,"get_Appearance");
   pragma Import(MSIL,get_AutoCheck,"get_AutoCheck");
   pragma Import(MSIL,get_CheckAlign,"get_CheckAlign");
   pragma Import(MSIL,get_Checked,"get_Checked");
   pragma Import(MSIL,get_CheckState,"get_CheckState");
   pragma Import(MSIL,get_TextAlign,"get_TextAlign");
   pragma Import(MSIL,get_ThreeState,"get_ThreeState");
   pragma Import(MSIL,remove_AppearanceChanged,"remove_AppearanceChanged");
   pragma Import(MSIL,remove_CheckedChanged,"remove_CheckedChanged");
   pragma Import(MSIL,remove_CheckStateChanged,"remove_CheckStateChanged");
   pragma Import(MSIL,remove_DoubleClick,"remove_DoubleClick");
   pragma Import(MSIL,remove_MouseDoubleClick,"remove_MouseDoubleClick");
   pragma Import(MSIL,set_Appearance,"set_Appearance");
   pragma Import(MSIL,set_AutoCheck,"set_AutoCheck");
   pragma Import(MSIL,set_CheckAlign,"set_CheckAlign");
   pragma Import(MSIL,set_Checked,"set_Checked");
   pragma Import(MSIL,set_CheckState,"set_CheckState");
   pragma Import(MSIL,set_TextAlign,"set_TextAlign");
   pragma Import(MSIL,set_ThreeState,"set_ThreeState");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.CheckBox;
pragma Import(MSIL,MSSyst.Windows.Forms.CheckBox,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.CheckBox");
