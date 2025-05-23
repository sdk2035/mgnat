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
limited with MSSyst.Windows.Forms.AutoScaleMode;
limited with MSSyst.Windows.Forms.AutoValidate;
limited with MSSyst.Windows.Forms.BindingContext;
limited with MSSyst.Windows.Forms.BorderStyle;
limited with MSSyst.Windows.Forms.BoundsSpecified;
with MSSyst.Windows.Forms.ContainerControl;
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
limited with MSSyst.Windows.Forms.FixedPanel;
limited with MSSyst.Windows.Forms.Form;
limited with MSSyst.Windows.Forms.GetChildAtPointSkip;
limited with MSSyst.Windows.Forms.GiveFeedbackEventHandler;
limited with MSSyst.Windows.Forms.HScrollProperties;
limited with MSSyst.Windows.Forms.HelpEventHandler;
with MSSyst.Windows.Forms.IBindableComponent;
with MSSyst.Windows.Forms.IContainerControl;
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
limited with MSSyst.Windows.Forms.Orientation;
limited with MSSyst.Windows.Forms.Padding;
limited with MSSyst.Windows.Forms.PaintEventHandler;
limited with MSSyst.Windows.Forms.PreProcessControlState;
limited with MSSyst.Windows.Forms.PreviewKeyDownEventHandler;
limited with MSSyst.Windows.Forms.QueryAccessibilityHelpEventHandler;
limited with MSSyst.Windows.Forms.QueryContinueDragEventHandler;
limited with MSSyst.Windows.Forms.RightToLeft;
limited with MSSyst.Windows.Forms.ScrollEventHandler;
with MSSyst.Windows.Forms.ScrollableControl;
limited with MSSyst.Windows.Forms.ScrollableControl.DockPaddingEdges;
limited with MSSyst.Windows.Forms.SplitterCancelEventArgs;
limited with MSSyst.Windows.Forms.SplitterCancelEventHandler;
limited with MSSyst.Windows.Forms.SplitterEventArgs;
limited with MSSyst.Windows.Forms.SplitterEventHandler;
limited with MSSyst.Windows.Forms.SplitterPanel;
limited with MSSyst.Windows.Forms.UICuesEventHandler;
limited with MSSyst.Windows.Forms.VScrollProperties;
limited with MSSyst.Windows.Forms.ValidationConstraints;
package MSSyst.Windows.Forms.SplitContainer is
   type Typ is new MSSyst.Windows.Forms.ContainerControl.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.IDisposable.Typ
         and MSSyst.Windows.Forms.IDropTarget.Typ
         and MSSyst.ComponentModel.ISynchronizeInvoke.Typ
         and MSSyst.Windows.Forms.IWin32Window.Typ
         and MSSyst.Windows.Forms.IBindableComponent.Typ
         and MSSyst.Windows.Forms.IContainerControl.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_SplitContainer(
      This : Ref := null) return Ref;
   procedure add_AutoSizeChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_BackgroundImageChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_BackgroundImageLayoutChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_ControlAdded(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ControlEventHandler.Typ'Class);
   procedure add_ControlRemoved(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ControlEventHandler.Typ'Class);
   procedure add_PaddingChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_SplitterMoved(
      This : access Typ;
      value : access MSSyst.Windows.Forms.SplitterEventHandler.Typ'Class);
   procedure add_SplitterMoving(
      This : access Typ;
      value : access MSSyst.Windows.Forms.SplitterCancelEventHandler.Typ'Class);
   procedure add_TextChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   function get_AutoScroll(
      This : access Typ) return Standard.Boolean;
   function get_AutoScrollMargin(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_AutoScrollMinSize(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_AutoScrollOffset(
      This : access Typ) return MSSyst.Drawing.Point.Valuetype;
   function get_AutoScrollPosition(
      This : access Typ) return MSSyst.Drawing.Point.Valuetype;
   function get_AutoSize(
      This : access Typ) return Standard.Boolean;
   function get_BackgroundImage(
      This : access Typ) return access MSSyst.Drawing.Image.Typ'Class;
   function get_BackgroundImageLayout(
      This : access Typ) return MSSyst.Windows.Forms.ImageLayout.Valuetype;
   function get_BindingContext(
      This : access Typ) return access MSSyst.Windows.Forms.BindingContext.Typ'Class;
   function get_BorderStyle(
      This : access Typ) return MSSyst.Windows.Forms.BorderStyle.Valuetype;
   function get_Controls(
      This : access Typ) return access MSSyst.Windows.Forms.Control.ControlCollection.Typ'Class;
   function get_Dock(
      This : access Typ) return MSSyst.Windows.Forms.DockStyle.Valuetype;
   function get_FixedPanel(
      This : access Typ) return MSSyst.Windows.Forms.FixedPanel.Valuetype;
   function get_IsSplitterFixed(
      This : access Typ) return Standard.Boolean;
   function get_Orientation(
      This : access Typ) return MSSyst.Windows.Forms.Orientation.Valuetype;
   function get_Padding(
      This : access Typ) return MSSyst.Windows.Forms.Padding.Valuetype;
   function get_Panel1(
      This : access Typ) return access MSSyst.Windows.Forms.SplitterPanel.Typ'Class;
   function get_Panel1Collapsed(
      This : access Typ) return Standard.Boolean;
   function get_Panel1MinSize(
      This : access Typ) return Integer;
   function get_Panel2(
      This : access Typ) return access MSSyst.Windows.Forms.SplitterPanel.Typ'Class;
   function get_Panel2Collapsed(
      This : access Typ) return Standard.Boolean;
   function get_Panel2MinSize(
      This : access Typ) return Integer;
   function get_SplitterDistance(
      This : access Typ) return Integer;
   function get_SplitterIncrement(
      This : access Typ) return Integer;
   function get_SplitterRectangle(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_SplitterWidth(
      This : access Typ) return Integer;
   function get_TabStop(
      This : access Typ) return Standard.Boolean;
   function get_Text(
      This : access Typ) return access MSSyst.String.Typ'Class;
   procedure OnSplitterMoved(
      This : access Typ;
      e : access MSSyst.Windows.Forms.SplitterEventArgs.Typ'Class);
   procedure OnSplitterMoving(
      This : access Typ;
      e : access MSSyst.Windows.Forms.SplitterCancelEventArgs.Typ'Class);
   procedure remove_AutoSizeChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_BackgroundImageChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_BackgroundImageLayoutChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_ControlAdded(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ControlEventHandler.Typ'Class);
   procedure remove_ControlRemoved(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ControlEventHandler.Typ'Class);
   procedure remove_PaddingChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_SplitterMoved(
      This : access Typ;
      value : access MSSyst.Windows.Forms.SplitterEventHandler.Typ'Class);
   procedure remove_SplitterMoving(
      This : access Typ;
      value : access MSSyst.Windows.Forms.SplitterCancelEventHandler.Typ'Class);
   procedure remove_TextChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure set_AutoScroll(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoScrollMargin(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_AutoScrollMinSize(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_AutoScrollOffset(
      This : access Typ;
      value : MSSyst.Drawing.Point.Valuetype);
   procedure set_AutoScrollPosition(
      This : access Typ;
      value : MSSyst.Drawing.Point.Valuetype);
   procedure set_AutoSize(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_BackgroundImage(
      This : access Typ;
      value : access MSSyst.Drawing.Image.Typ'Class);
   procedure set_BackgroundImageLayout(
      This : access Typ;
      value : MSSyst.Windows.Forms.ImageLayout.Valuetype);
   procedure set_BindingContext(
      This : access Typ;
      value : access MSSyst.Windows.Forms.BindingContext.Typ'Class);
   procedure set_BorderStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.BorderStyle.Valuetype);
   procedure set_Dock(
      This : access Typ;
      value : MSSyst.Windows.Forms.DockStyle.Valuetype);
   procedure set_FixedPanel(
      This : access Typ;
      value : MSSyst.Windows.Forms.FixedPanel.Valuetype);
   procedure set_IsSplitterFixed(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Orientation(
      This : access Typ;
      value : MSSyst.Windows.Forms.Orientation.Valuetype);
   procedure set_Padding(
      This : access Typ;
      value : MSSyst.Windows.Forms.Padding.Valuetype);
   procedure set_Panel1Collapsed(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Panel1MinSize(
      This : access Typ;
      value : Integer);
   procedure set_Panel2Collapsed(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Panel2MinSize(
      This : access Typ;
      value : Integer);
   procedure set_SplitterDistance(
      This : access Typ;
      value : Integer);
   procedure set_SplitterIncrement(
      This : access Typ;
      value : Integer);
   procedure set_SplitterWidth(
      This : access Typ;
      value : Integer);
   procedure set_TabStop(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Text(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SplitContainer);
   pragma Import(MSIL,add_AutoSizeChanged,"add_AutoSizeChanged");
   pragma Import(MSIL,add_BackgroundImageChanged,"add_BackgroundImageChanged");
   pragma Import(MSIL,add_BackgroundImageLayoutChanged,"add_BackgroundImageLayoutChanged");
   pragma Import(MSIL,add_ControlAdded,"add_ControlAdded");
   pragma Import(MSIL,add_ControlRemoved,"add_ControlRemoved");
   pragma Import(MSIL,add_PaddingChanged,"add_PaddingChanged");
   pragma Import(MSIL,add_SplitterMoved,"add_SplitterMoved");
   pragma Import(MSIL,add_SplitterMoving,"add_SplitterMoving");
   pragma Import(MSIL,add_TextChanged,"add_TextChanged");
   pragma Import(MSIL,get_AutoScroll,"get_AutoScroll");
   pragma Import(MSIL,get_AutoScrollMargin,"get_AutoScrollMargin");
   pragma Import(MSIL,get_AutoScrollMinSize,"get_AutoScrollMinSize");
   pragma Import(MSIL,get_AutoScrollOffset,"get_AutoScrollOffset");
   pragma Import(MSIL,get_AutoScrollPosition,"get_AutoScrollPosition");
   pragma Import(MSIL,get_AutoSize,"get_AutoSize");
   pragma Import(MSIL,get_BackgroundImage,"get_BackgroundImage");
   pragma Import(MSIL,get_BackgroundImageLayout,"get_BackgroundImageLayout");
   pragma Import(MSIL,get_BindingContext,"get_BindingContext");
   pragma Import(MSIL,get_BorderStyle,"get_BorderStyle");
   pragma Import(MSIL,get_Controls,"get_Controls");
   pragma Import(MSIL,get_Dock,"get_Dock");
   pragma Import(MSIL,get_FixedPanel,"get_FixedPanel");
   pragma Import(MSIL,get_IsSplitterFixed,"get_IsSplitterFixed");
   pragma Import(MSIL,get_Orientation,"get_Orientation");
   pragma Import(MSIL,get_Padding,"get_Padding");
   pragma Import(MSIL,get_Panel1,"get_Panel1");
   pragma Import(MSIL,get_Panel1Collapsed,"get_Panel1Collapsed");
   pragma Import(MSIL,get_Panel1MinSize,"get_Panel1MinSize");
   pragma Import(MSIL,get_Panel2,"get_Panel2");
   pragma Import(MSIL,get_Panel2Collapsed,"get_Panel2Collapsed");
   pragma Import(MSIL,get_Panel2MinSize,"get_Panel2MinSize");
   pragma Import(MSIL,get_SplitterDistance,"get_SplitterDistance");
   pragma Import(MSIL,get_SplitterIncrement,"get_SplitterIncrement");
   pragma Import(MSIL,get_SplitterRectangle,"get_SplitterRectangle");
   pragma Import(MSIL,get_SplitterWidth,"get_SplitterWidth");
   pragma Import(MSIL,get_TabStop,"get_TabStop");
   pragma Import(MSIL,get_Text,"get_Text");
   pragma Import(MSIL,OnSplitterMoved,"OnSplitterMoved");
   pragma Import(MSIL,OnSplitterMoving,"OnSplitterMoving");
   pragma Import(MSIL,remove_AutoSizeChanged,"remove_AutoSizeChanged");
   pragma Import(MSIL,remove_BackgroundImageChanged,"remove_BackgroundImageChanged");
   pragma Import(MSIL,remove_BackgroundImageLayoutChanged,"remove_BackgroundImageLayoutChanged");
   pragma Import(MSIL,remove_ControlAdded,"remove_ControlAdded");
   pragma Import(MSIL,remove_ControlRemoved,"remove_ControlRemoved");
   pragma Import(MSIL,remove_PaddingChanged,"remove_PaddingChanged");
   pragma Import(MSIL,remove_SplitterMoved,"remove_SplitterMoved");
   pragma Import(MSIL,remove_SplitterMoving,"remove_SplitterMoving");
   pragma Import(MSIL,remove_TextChanged,"remove_TextChanged");
   pragma Import(MSIL,set_AutoScroll,"set_AutoScroll");
   pragma Import(MSIL,set_AutoScrollMargin,"set_AutoScrollMargin");
   pragma Import(MSIL,set_AutoScrollMinSize,"set_AutoScrollMinSize");
   pragma Import(MSIL,set_AutoScrollOffset,"set_AutoScrollOffset");
   pragma Import(MSIL,set_AutoScrollPosition,"set_AutoScrollPosition");
   pragma Import(MSIL,set_AutoSize,"set_AutoSize");
   pragma Import(MSIL,set_BackgroundImage,"set_BackgroundImage");
   pragma Import(MSIL,set_BackgroundImageLayout,"set_BackgroundImageLayout");
   pragma Import(MSIL,set_BindingContext,"set_BindingContext");
   pragma Import(MSIL,set_BorderStyle,"set_BorderStyle");
   pragma Import(MSIL,set_Dock,"set_Dock");
   pragma Import(MSIL,set_FixedPanel,"set_FixedPanel");
   pragma Import(MSIL,set_IsSplitterFixed,"set_IsSplitterFixed");
   pragma Import(MSIL,set_Orientation,"set_Orientation");
   pragma Import(MSIL,set_Padding,"set_Padding");
   pragma Import(MSIL,set_Panel1Collapsed,"set_Panel1Collapsed");
   pragma Import(MSIL,set_Panel1MinSize,"set_Panel1MinSize");
   pragma Import(MSIL,set_Panel2Collapsed,"set_Panel2Collapsed");
   pragma Import(MSIL,set_Panel2MinSize,"set_Panel2MinSize");
   pragma Import(MSIL,set_SplitterDistance,"set_SplitterDistance");
   pragma Import(MSIL,set_SplitterIncrement,"set_SplitterIncrement");
   pragma Import(MSIL,set_SplitterWidth,"set_SplitterWidth");
   pragma Import(MSIL,set_TabStop,"set_TabStop");
   pragma Import(MSIL,set_Text,"set_Text");
end MSSyst.Windows.Forms.SplitContainer;
pragma Import(MSIL,MSSyst.Windows.Forms.SplitContainer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.SplitContainer");
