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
with MSSyst.ComponentModel.IExtenderProvider;
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
with MSSyst.Windows.Forms.FlowDirection;
with type MSSyst.Drawing.Font.Ref is access;
with type MSSyst.Windows.Forms.HScrollProperties.Ref is access;
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
with MSSyst.Windows.Forms.PreProcessControlState;
with MSSyst.Windows.Forms.Message;
with type MSSyst.Drawing.SizeF.Valuetype is tagged;
with MSSyst.Windows.Forms.BoundsSpecified;
package MSSyst.Windows.Forms.FlowLayoutPanel is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.Panel.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.ComponentModel.ISynchronizeInvoke.Typ
         and MSSyst.Windows.Forms.IWin32Window.Typ
         and MSSyst.Windows.Forms.IBindableComponent.Typ
         and MSSyst.ComponentModel.IExtenderProvider.Typ
   with record
      null;
   end record;
   function new_FlowLayoutPanel(
      This : Ref := null) return Ref;
   function get_FlowDirection(
      This : access Typ) return MSSyst.Windows.Forms.FlowDirection.Valuetype;
   function get_LayoutEngine(
      This : access Typ) return MSSyst.Windows.Forms.Layout.LayoutEngine.Ref;
   function get_WrapContents(
      This : access Typ) return Standard.Boolean;
   function GetFlowBreak(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref) return Standard.Boolean;
   procedure set_FlowDirection(
      This : access Typ;
      value : MSSyst.Windows.Forms.FlowDirection.Valuetype);
   procedure set_WrapContents(
      This : access Typ;
      value : Standard.Boolean);
   procedure SetFlowBreak(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_FlowLayoutPanel);
   pragma Import(MSIL,get_FlowDirection,"get_FlowDirection");
   pragma Import(MSIL,get_LayoutEngine,"get_LayoutEngine");
   pragma Import(MSIL,get_WrapContents,"get_WrapContents");
   pragma Import(MSIL,GetFlowBreak,"GetFlowBreak");
   pragma Import(MSIL,set_FlowDirection,"set_FlowDirection");
   pragma Import(MSIL,set_WrapContents,"set_WrapContents");
   pragma Import(MSIL,SetFlowBreak,"SetFlowBreak");
end MSSyst.Windows.Forms.FlowLayoutPanel;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.FlowLayoutPanel,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.FlowLayoutPanel");
