-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.Panel;
with MSSyst.ComponentModel.IComponent;
with MSSyst.ComponentModel.ISynchronizeInvoke;
with MSSyst.Windows.Forms.IWin32Window;
with MSSyst.Windows.Forms.IBindableComponent;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Windows.Forms.UICuesEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ControlEventHandler.Ref is access;
with type MSSyst.Windows.Forms.DragEventHandler.Ref is access;
with type MSSyst.Windows.Forms.GiveFeedbackEventHandler.Ref is access;
with type MSSyst.Windows.Forms.HelpEventHandler.Ref is access;
with type MSSyst.Windows.Forms.InvalidateEventHandler.Ref is access;
with type MSSyst.Windows.Forms.KeyEventHandler.Ref is access;
with type MSSyst.Windows.Forms.KeyPressEventHandler.Ref is access;
with type MSSyst.Windows.Forms.LayoutEventHandler.Ref is access;
with type MSSyst.Windows.Forms.MouseEventHandler.Ref is access;
with type MSSyst.Windows.Forms.PaintEventHandler.Ref is access;
with type MSSyst.Windows.Forms.PreviewKeyDownEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryAccessibilityHelpEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryContinueDragEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ScrollEventHandler.Ref is access;
with type MSSyst.ComponentModel.CancelEventHandler.Ref is access;
with type MSSyst.IAsyncResult.Ref is access;
with type MSSyst.Delegate.Ref is access;
with type MSSyst.Object.Ref_array is access;
with type MSSyst.Windows.Forms.Control.Ref is access;
with type MSSyst.Drawing.Graphics.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Windows.Forms.DragDropEffects;
with type MSSyst.Object.Ref is access;
with type MSSyst.Drawing.Bitmap.Ref is access;
with type MSSyst.Drawing.Rectangle.Valuetype is tagged;
with type MSSyst.Windows.Forms.Form.Ref is access;
with type MSSyst.Windows.Forms.AccessibleObject.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Windows.Forms.AccessibleRole;
with MSSyst.Windows.Forms.AnchorStyles;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with type MSSyst.Drawing.Point.Valuetype is tagged;
with MSSyst.Windows.Forms.AutoSizeMode;
with type MSSyst.Drawing.Color.Valuetype is tagged;
with type MSSyst.Drawing.Image.Ref is access;
with MSSyst.Windows.Forms.ImageLayout;
with type MSSyst.Windows.Forms.BindingContext.Ref is access;
with MSSyst.Windows.Forms.BorderStyle;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.Windows.Forms.ContextMenu.Ref is access;
with type MSSyst.Windows.Forms.ContextMenuStrip.Ref is access;
with type MSSyst.Windows.Forms.Control.ControlCollection.Ref is access;
with type MSSyst.Windows.Forms.Cursor.Ref is access;
with type MSSyst.Windows.Forms.ControlBindingsCollection.Ref is access;
with MSSyst.Windows.Forms.DockStyle;
with type MSSyst.Windows.Forms.ScrollableControl.DockPaddingEdges.Ref is access;
with type MSSyst.Drawing.Font.Ref is access;
with type MSSyst.Windows.Forms.HScrollProperties.Ref is access;
with type MSSyst.Drawing.Icon.Ref is access;
with MSSyst.Windows.Forms.ImeMode;
with type MSSyst.Windows.Forms.Layout.LayoutEngine.Ref is access;
with type MSSyst.Windows.Forms.Padding.Valuetype is tagged;
with type MSSyst.Drawing.Region.Ref is access;
with MSSyst.Windows.Forms.RightToLeft;
with type MSSyst.ComponentModel.ISite.Ref is access;
with type MSSyst.Windows.Forms.VScrollProperties.Ref is access;
with type MSSyst.Windows.Forms.IWindowTarget.Ref is access;
with MSSyst.Windows.Forms.GetChildAtPointSkip;
with type MSSyst.Windows.Forms.IContainerControl.Ref is access;
with MSSyst.Windows.Forms.Message;
with MSSyst.Windows.Forms.PreProcessControlState;
with type MSSyst.Drawing.SizeF.Valuetype is tagged;
with MSSyst.Windows.Forms.BoundsSpecified;
with type MSSyst.Windows.Forms.IComponentEditorPageSite.Ref is access;
package MSSyst.Windows.Forms.Design.ComponentEditorPage is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Windows.Forms.Panel.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.ComponentModel.ISynchronizeInvoke.Typ
         and MSSyst.Windows.Forms.IWin32Window.Typ
         and MSSyst.Windows.Forms.IBindableComponent.Typ
   with record
      null;
   end record;
   function new_ComponentEditorPage(
      This : Ref := null) return Ref;
   procedure Activate(
      This : access Typ);
   procedure add_AutoSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure ApplyChanges(
      This : access Typ);
   procedure Deactivate(
      This : access Typ);
   function get_AutoSize(
      This : access Typ) return Standard.Boolean;
   function get_CommitOnDeactivate(
      This : access Typ) return Standard.Boolean;
   function get_Icon(
      This : access Typ) return MSSyst.Drawing.Icon.Ref;
   function get_Title(
      This : access Typ) return MSSyst.String.Ref;
   function GetControl(
      This : access Typ) return MSSyst.Windows.Forms.Control.Ref;
   function IsPageMessage(
      This : access Typ;
      msg : MSSyst.Windows.Forms.Message.Valuetype_addrof) return Standard.Boolean;
   procedure OnApplyComplete(
      This : access Typ);
   procedure remove_AutoSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure set_AutoSize(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_CommitOnDeactivate(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Icon(
      This : access Typ;
      value : MSSyst.Drawing.Icon.Ref);
   procedure SetComponent(
      This : access Typ;
      component : MSSyst.ComponentModel.IComponent.Ref);
   procedure SetSite(
      This : access Typ;
      site : MSSyst.Windows.Forms.IComponentEditorPageSite.Ref);
   procedure ShowHelp(
      This : access Typ);
   function SupportsHelp(
      This : access Typ) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ComponentEditorPage);
   pragma Import(MSIL,Activate,"Activate");
   pragma Import(MSIL,add_AutoSizeChanged,"add_AutoSizeChanged");
   pragma Import(MSIL,ApplyChanges,"ApplyChanges");
   pragma Import(MSIL,Deactivate,"Deactivate");
   pragma Import(MSIL,get_AutoSize,"get_AutoSize");
   pragma Import(MSIL,get_CommitOnDeactivate,"get_CommitOnDeactivate");
   pragma Import(MSIL,get_Icon,"get_Icon");
   pragma Import(MSIL,get_Title,"get_Title");
   pragma Import(MSIL,GetControl,"GetControl");
   pragma Import(MSIL,IsPageMessage,"IsPageMessage");
   pragma Import(MSIL,OnApplyComplete,"OnApplyComplete");
   pragma Import(MSIL,remove_AutoSizeChanged,"remove_AutoSizeChanged");
   pragma Import(MSIL,set_AutoSize,"set_AutoSize");
   pragma Import(MSIL,set_CommitOnDeactivate,"set_CommitOnDeactivate");
   pragma Import(MSIL,set_Icon,"set_Icon");
   pragma Import(MSIL,SetComponent,"SetComponent");
   pragma Import(MSIL,SetSite,"SetSite");
   pragma Import(MSIL,ShowHelp,"ShowHelp");
   pragma Import(MSIL,SupportsHelp,"SupportsHelp");
end MSSyst.Windows.Forms.Design.ComponentEditorPage;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.Design.ComponentEditorPage,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.Design.ComponentEditorPage");
