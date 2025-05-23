-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.Control;
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
with type MSSyst.ComponentModel.CancelEventHandler.Ref is access;
with type MSSyst.IAsyncResult.Ref is access;
with type MSSyst.Delegate.Ref is access;
with type MSSyst.Object.Ref_array is access;
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
with type MSSyst.Drawing.Point.Valuetype is tagged;
with MSSyst.Windows.Forms.AutoSizeMode;
with type MSSyst.Drawing.Color.Valuetype is tagged;
with type MSSyst.Drawing.Image.Ref is access;
with MSSyst.Windows.Forms.ImageLayout;
with type MSSyst.Windows.Forms.BindingContext.Ref is access;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.Windows.Forms.ContextMenu.Ref is access;
with type MSSyst.Windows.Forms.ContextMenuStrip.Ref is access;
with type MSSyst.Windows.Forms.Control.ControlCollection.Ref is access;
with type MSSyst.Windows.Forms.Cursor.Ref is access;
with type MSSyst.Windows.Forms.ControlBindingsCollection.Ref is access;
with MSSyst.Windows.Forms.DockStyle;
with MSSyst.Windows.Forms.FlatStyle;
with type MSSyst.Drawing.Font.Ref is access;
with MSSyst.Windows.Forms.ImeMode;
with type MSSyst.Windows.Forms.Layout.LayoutEngine.Ref is access;
with type MSSyst.Windows.Forms.Padding.Valuetype is tagged;
with type MSSyst.Drawing.Region.Ref is access;
with MSSyst.Windows.Forms.RightToLeft;
with type MSSyst.ComponentModel.ISite.Ref is access;
with type MSSyst.Windows.Forms.IWindowTarget.Ref is access;
with MSSyst.Windows.Forms.GetChildAtPointSkip;
with type MSSyst.Windows.Forms.IContainerControl.Ref is access;
with MSSyst.Windows.Forms.PreProcessControlState;
with MSSyst.Windows.Forms.Message;
with type MSSyst.Drawing.SizeF.Valuetype is tagged;
with MSSyst.Windows.Forms.BoundsSpecified;
package MSSyst.Windows.Forms.GroupBox is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.Control.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.ComponentModel.ISynchronizeInvoke.Typ
         and MSSyst.Windows.Forms.IWin32Window.Typ
         and MSSyst.Windows.Forms.IBindableComponent.Typ
   with record
      null;
   end record;
   function new_GroupBox(
      This : Ref := null) return Ref;
   procedure add_AutoSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Click(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_DoubleClick(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_KeyDown(
      This : access Typ;
      value : MSSyst.Windows.Forms.KeyEventHandler.Ref);
   procedure add_KeyPress(
      This : access Typ;
      value : MSSyst.Windows.Forms.KeyPressEventHandler.Ref);
   procedure add_KeyUp(
      This : access Typ;
      value : MSSyst.Windows.Forms.KeyEventHandler.Ref);
   procedure add_MouseClick(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure add_MouseDoubleClick(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure add_MouseDown(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure add_MouseEnter(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MouseLeave(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MouseMove(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure add_MouseUp(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure add_TabStopChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   function get_AllowDrop(
      This : access Typ) return Standard.Boolean;
   function get_AutoSize(
      This : access Typ) return Standard.Boolean;
   function get_AutoSizeMode(
      This : access Typ) return MSSyst.Windows.Forms.AutoSizeMode.Valuetype;
   function get_DisplayRectangle(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_FlatStyle(
      This : access Typ) return MSSyst.Windows.Forms.FlatStyle.Valuetype;
   function get_TabStop(
      This : access Typ) return Standard.Boolean;
   function get_Text(
      This : access Typ) return MSSyst.String.Ref;
   function get_UseCompatibleTextRendering(
      This : access Typ) return Standard.Boolean;
   procedure remove_AutoSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Click(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_DoubleClick(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_KeyDown(
      This : access Typ;
      value : MSSyst.Windows.Forms.KeyEventHandler.Ref);
   procedure remove_KeyPress(
      This : access Typ;
      value : MSSyst.Windows.Forms.KeyPressEventHandler.Ref);
   procedure remove_KeyUp(
      This : access Typ;
      value : MSSyst.Windows.Forms.KeyEventHandler.Ref);
   procedure remove_MouseClick(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure remove_MouseDoubleClick(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure remove_MouseDown(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure remove_MouseEnter(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MouseLeave(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MouseMove(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure remove_MouseUp(
      This : access Typ;
      value : MSSyst.Windows.Forms.MouseEventHandler.Ref);
   procedure remove_TabStopChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure set_AllowDrop(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoSize(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoSizeMode(
      This : access Typ;
      value : MSSyst.Windows.Forms.AutoSizeMode.Valuetype);
   procedure set_FlatStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.FlatStyle.Valuetype);
   procedure set_TabStop(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Text(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_UseCompatibleTextRendering(
      This : access Typ;
      value : Standard.Boolean);
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_GroupBox);
   pragma Import(MSIL,add_AutoSizeChanged,"add_AutoSizeChanged");
   pragma Import(MSIL,add_Click,"add_Click");
   pragma Import(MSIL,add_DoubleClick,"add_DoubleClick");
   pragma Import(MSIL,add_KeyDown,"add_KeyDown");
   pragma Import(MSIL,add_KeyPress,"add_KeyPress");
   pragma Import(MSIL,add_KeyUp,"add_KeyUp");
   pragma Import(MSIL,add_MouseClick,"add_MouseClick");
   pragma Import(MSIL,add_MouseDoubleClick,"add_MouseDoubleClick");
   pragma Import(MSIL,add_MouseDown,"add_MouseDown");
   pragma Import(MSIL,add_MouseEnter,"add_MouseEnter");
   pragma Import(MSIL,add_MouseLeave,"add_MouseLeave");
   pragma Import(MSIL,add_MouseMove,"add_MouseMove");
   pragma Import(MSIL,add_MouseUp,"add_MouseUp");
   pragma Import(MSIL,add_TabStopChanged,"add_TabStopChanged");
   pragma Import(MSIL,get_AllowDrop,"get_AllowDrop");
   pragma Import(MSIL,get_AutoSize,"get_AutoSize");
   pragma Import(MSIL,get_AutoSizeMode,"get_AutoSizeMode");
   pragma Import(MSIL,get_DisplayRectangle,"get_DisplayRectangle");
   pragma Import(MSIL,get_FlatStyle,"get_FlatStyle");
   pragma Import(MSIL,get_TabStop,"get_TabStop");
   pragma Import(MSIL,get_Text,"get_Text");
   pragma Import(MSIL,get_UseCompatibleTextRendering,"get_UseCompatibleTextRendering");
   pragma Import(MSIL,remove_AutoSizeChanged,"remove_AutoSizeChanged");
   pragma Import(MSIL,remove_Click,"remove_Click");
   pragma Import(MSIL,remove_DoubleClick,"remove_DoubleClick");
   pragma Import(MSIL,remove_KeyDown,"remove_KeyDown");
   pragma Import(MSIL,remove_KeyPress,"remove_KeyPress");
   pragma Import(MSIL,remove_KeyUp,"remove_KeyUp");
   pragma Import(MSIL,remove_MouseClick,"remove_MouseClick");
   pragma Import(MSIL,remove_MouseDoubleClick,"remove_MouseDoubleClick");
   pragma Import(MSIL,remove_MouseDown,"remove_MouseDown");
   pragma Import(MSIL,remove_MouseEnter,"remove_MouseEnter");
   pragma Import(MSIL,remove_MouseLeave,"remove_MouseLeave");
   pragma Import(MSIL,remove_MouseMove,"remove_MouseMove");
   pragma Import(MSIL,remove_MouseUp,"remove_MouseUp");
   pragma Import(MSIL,remove_TabStopChanged,"remove_TabStopChanged");
   pragma Import(MSIL,set_AllowDrop,"set_AllowDrop");
   pragma Import(MSIL,set_AutoSize,"set_AutoSize");
   pragma Import(MSIL,set_AutoSizeMode,"set_AutoSizeMode");
   pragma Import(MSIL,set_FlatStyle,"set_FlatStyle");
   pragma Import(MSIL,set_TabStop,"set_TabStop");
   pragma Import(MSIL,set_Text,"set_Text");
   pragma Import(MSIL,set_UseCompatibleTextRendering,"set_UseCompatibleTextRendering");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.GroupBox;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.GroupBox,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.GroupBox");
