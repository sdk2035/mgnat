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
limited with MSSyst.Windows.Forms.AutoCompleteMode;
limited with MSSyst.Windows.Forms.AutoCompleteSource;
limited with MSSyst.Windows.Forms.AutoCompleteStringCollection;
limited with MSSyst.Windows.Forms.BindingContext;
limited with MSSyst.Windows.Forms.BorderStyle;
limited with MSSyst.Windows.Forms.BoundsSpecified;
limited with MSSyst.Windows.Forms.CharacterCasing;
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
limited with MSSyst.Windows.Forms.Form;
limited with MSSyst.Windows.Forms.GetChildAtPointSkip;
limited with MSSyst.Windows.Forms.GiveFeedbackEventHandler;
limited with MSSyst.Windows.Forms.HelpEventHandler;
limited with MSSyst.Windows.Forms.HorizontalAlignment;
with MSSyst.Windows.Forms.IBindableComponent;
limited with MSSyst.Windows.Forms.IContainerControl;
with MSSyst.Windows.Forms.IDropTarget;
with MSSyst.Windows.Forms.IWin32Window;
limited with MSSyst.Windows.Forms.IWindowTarget;
limited with MSSyst.Windows.Forms.ImageLayout;
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
limited with MSSyst.Windows.Forms.ScrollBars;
with MSSyst.Windows.Forms.TextBoxBase;
limited with MSSyst.Windows.Forms.UICuesEventHandler;
package MSSyst.Windows.Forms.TextBox is
   type Typ is new MSSyst.Windows.Forms.TextBoxBase.Typ
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
   function new_TextBox(
      This : Ref := null) return Ref;
   procedure add_TextAlignChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   function get_AcceptsReturn(
      This : access Typ) return Standard.Boolean;
   function get_AutoCompleteCustomSource(
      This : access Typ) return access MSSyst.Windows.Forms.AutoCompleteStringCollection.Typ'Class;
   function get_AutoCompleteMode(
      This : access Typ) return MSSyst.Windows.Forms.AutoCompleteMode.Valuetype;
   function get_AutoCompleteSource(
      This : access Typ) return MSSyst.Windows.Forms.AutoCompleteSource.Valuetype;
   function get_CharacterCasing(
      This : access Typ) return MSSyst.Windows.Forms.CharacterCasing.Valuetype;
   function get_Multiline(
      This : access Typ) return Standard.Boolean;
   function get_PasswordChar(
      This : access Typ) return Wide_Character;
   function get_ScrollBars(
      This : access Typ) return MSSyst.Windows.Forms.ScrollBars.Valuetype;
   function get_Text(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_TextAlign(
      This : access Typ) return MSSyst.Windows.Forms.HorizontalAlignment.Valuetype;
   function get_UseSystemPasswordChar(
      This : access Typ) return Standard.Boolean;
   procedure Paste(
      This : access Typ;
      text : access MSSyst.String.Typ'Class);
   procedure remove_TextAlignChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure set_AcceptsReturn(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoCompleteCustomSource(
      This : access Typ;
      value : access MSSyst.Windows.Forms.AutoCompleteStringCollection.Typ'Class);
   procedure set_AutoCompleteMode(
      This : access Typ;
      value : MSSyst.Windows.Forms.AutoCompleteMode.Valuetype);
   procedure set_AutoCompleteSource(
      This : access Typ;
      value : MSSyst.Windows.Forms.AutoCompleteSource.Valuetype);
   procedure set_CharacterCasing(
      This : access Typ;
      value : MSSyst.Windows.Forms.CharacterCasing.Valuetype);
   procedure set_Multiline(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_PasswordChar(
      This : access Typ;
      value : Wide_Character);
   procedure set_ScrollBars(
      This : access Typ;
      value : MSSyst.Windows.Forms.ScrollBars.Valuetype);
   procedure set_Text(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_TextAlign(
      This : access Typ;
      value : MSSyst.Windows.Forms.HorizontalAlignment.Valuetype);
   procedure set_UseSystemPasswordChar(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_TextBox);
   pragma Import(MSIL,add_TextAlignChanged,"add_TextAlignChanged");
   pragma Import(MSIL,get_AcceptsReturn,"get_AcceptsReturn");
   pragma Import(MSIL,get_AutoCompleteCustomSource,"get_AutoCompleteCustomSource");
   pragma Import(MSIL,get_AutoCompleteMode,"get_AutoCompleteMode");
   pragma Import(MSIL,get_AutoCompleteSource,"get_AutoCompleteSource");
   pragma Import(MSIL,get_CharacterCasing,"get_CharacterCasing");
   pragma Import(MSIL,get_Multiline,"get_Multiline");
   pragma Import(MSIL,get_PasswordChar,"get_PasswordChar");
   pragma Import(MSIL,get_ScrollBars,"get_ScrollBars");
   pragma Import(MSIL,get_Text,"get_Text");
   pragma Import(MSIL,get_TextAlign,"get_TextAlign");
   pragma Import(MSIL,get_UseSystemPasswordChar,"get_UseSystemPasswordChar");
   pragma Import(MSIL,Paste,"Paste");
   pragma Import(MSIL,remove_TextAlignChanged,"remove_TextAlignChanged");
   pragma Import(MSIL,set_AcceptsReturn,"set_AcceptsReturn");
   pragma Import(MSIL,set_AutoCompleteCustomSource,"set_AutoCompleteCustomSource");
   pragma Import(MSIL,set_AutoCompleteMode,"set_AutoCompleteMode");
   pragma Import(MSIL,set_AutoCompleteSource,"set_AutoCompleteSource");
   pragma Import(MSIL,set_CharacterCasing,"set_CharacterCasing");
   pragma Import(MSIL,set_Multiline,"set_Multiline");
   pragma Import(MSIL,set_PasswordChar,"set_PasswordChar");
   pragma Import(MSIL,set_ScrollBars,"set_ScrollBars");
   pragma Import(MSIL,set_Text,"set_Text");
   pragma Import(MSIL,set_TextAlign,"set_TextAlign");
   pragma Import(MSIL,set_UseSystemPasswordChar,"set_UseSystemPasswordChar");
end MSSyst.Windows.Forms.TextBox;
pragma Import(MSIL,MSSyst.Windows.Forms.TextBox,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.TextBox");
