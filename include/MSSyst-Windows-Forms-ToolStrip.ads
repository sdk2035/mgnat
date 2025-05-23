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
limited with MSSyst.Windows.Forms.ArrowDirection;
limited with MSSyst.Windows.Forms.BindingContext;
limited with MSSyst.Windows.Forms.BoundsSpecified;
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
limited with MSSyst.Windows.Forms.HScrollProperties;
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
limited with MSSyst.Windows.Forms.LayoutSettings;
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
limited with MSSyst.Windows.Forms.ToolStripDropDownDirection;
limited with MSSyst.Windows.Forms.ToolStripGripDisplayStyle;
limited with MSSyst.Windows.Forms.ToolStripGripStyle;
limited with MSSyst.Windows.Forms.ToolStripItemClickedEventHandler;
limited with MSSyst.Windows.Forms.ToolStripItemCollection;
limited with MSSyst.Windows.Forms.ToolStripItemEventHandler;
limited with MSSyst.Windows.Forms.ToolStripItem;
limited with MSSyst.Windows.Forms.ToolStripLayoutStyle;
limited with MSSyst.Windows.Forms.ToolStripOverflowButton;
limited with MSSyst.Windows.Forms.ToolStripRenderMode;
limited with MSSyst.Windows.Forms.ToolStripRenderer;
limited with MSSyst.Windows.Forms.ToolStripTextDirection;
limited with MSSyst.Windows.Forms.UICuesEventHandler;
limited with MSSyst.Windows.Forms.VScrollProperties;
package MSSyst.Windows.Forms.ToolStrip is
   type Typ is new MSSyst.Windows.Forms.ScrollableControl.Typ
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
   function new_ToolStrip(
      This : Ref := null) return Ref;
   function new_ToolStrip(
      This : Ref := null;
      items : access MSSyst.Windows.Forms.ToolStripItem.Ref_arr) return Ref;
   procedure add_AutoSizeChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_BeginDrag(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_CausesValidationChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_ControlAdded(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ControlEventHandler.Typ'Class);
   procedure add_ControlRemoved(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ControlEventHandler.Typ'Class);
   procedure add_CursorChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_EndDrag(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_ForeColorChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_ItemAdded(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ToolStripItemEventHandler.Typ'Class);
   procedure add_ItemClicked(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ToolStripItemClickedEventHandler.Typ'Class);
   procedure add_ItemRemoved(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ToolStripItemEventHandler.Typ'Class);
   procedure add_LayoutCompleted(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_LayoutStyleChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_PaintGrip(
      This : access Typ;
      value : access MSSyst.Windows.Forms.PaintEventHandler.Typ'Class);
   procedure add_RendererChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   function get_AllowDrop(
      This : access Typ) return Standard.Boolean;
   function get_AllowItemReorder(
      This : access Typ) return Standard.Boolean;
   function get_AllowMerge(
      This : access Typ) return Standard.Boolean;
   function get_Anchor(
      This : access Typ) return MSSyst.Windows.Forms.AnchorStyles.Valuetype;
   function get_AutoScroll(
      This : access Typ) return Standard.Boolean;
   function get_AutoScrollMargin(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_AutoScrollMinSize(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_AutoScrollPosition(
      This : access Typ) return MSSyst.Drawing.Point.Valuetype;
   function get_AutoSize(
      This : access Typ) return Standard.Boolean;
   function get_BackColor(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_BindingContext(
      This : access Typ) return access MSSyst.Windows.Forms.BindingContext.Typ'Class;
   function get_CanOverflow(
      This : access Typ) return Standard.Boolean;
   function get_CausesValidation(
      This : access Typ) return Standard.Boolean;
   function get_Controls(
      This : access Typ) return access MSSyst.Windows.Forms.Control.ControlCollection.Typ'Class;
   function get_Cursor(
      This : access Typ) return access MSSyst.Windows.Forms.Cursor.Typ'Class;
   function get_DefaultDropDownDirection(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripDropDownDirection.Valuetype;
   function get_DisplayRectangle(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_Dock(
      This : access Typ) return MSSyst.Windows.Forms.DockStyle.Valuetype;
   function get_Font(
      This : access Typ) return access MSSyst.Drawing.Font.Typ'Class;
   function get_ForeColor(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_GripDisplayStyle(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripGripDisplayStyle.Valuetype;
   function get_GripMargin(
      This : access Typ) return MSSyst.Windows.Forms.Padding.Valuetype;
   function get_GripRectangle(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_GripStyle(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripGripStyle.Valuetype;
   function get_HasChildren(
      This : access Typ) return Standard.Boolean;
   function get_HorizontalScroll(
      This : access Typ) return access MSSyst.Windows.Forms.HScrollProperties.Typ'Class;
   function get_ImageList(
      This : access Typ) return access MSSyst.Windows.Forms.ImageList.Typ'Class;
   function get_ImageScalingSize(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_IsCurrentlyDragging(
      This : access Typ) return Standard.Boolean;
   function get_IsDropDown(
      This : access Typ) return Standard.Boolean;
   function get_Items(
      This : access Typ) return access MSSyst.Windows.Forms.ToolStripItemCollection.Typ'Class;
   function get_LayoutEngine(
      This : access Typ) return access MSSyst.Windows.Forms.Layout.LayoutEngine.Typ'Class;
   function get_LayoutSettings(
      This : access Typ) return access MSSyst.Windows.Forms.LayoutSettings.Typ'Class;
   function get_LayoutStyle(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripLayoutStyle.Valuetype;
   function get_Orientation(
      This : access Typ) return MSSyst.Windows.Forms.Orientation.Valuetype;
   function get_OverflowButton(
      This : access Typ) return access MSSyst.Windows.Forms.ToolStripOverflowButton.Typ'Class;
   function get_Renderer(
      This : access Typ) return access MSSyst.Windows.Forms.ToolStripRenderer.Typ'Class;
   function get_RenderMode(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripRenderMode.Valuetype;
   function get_ShowItemToolTips(
      This : access Typ) return Standard.Boolean;
   function get_Stretch(
      This : access Typ) return Standard.Boolean;
   function get_TabStop(
      This : access Typ) return Standard.Boolean;
   function get_TextDirection(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripTextDirection.Valuetype;
   function get_VerticalScroll(
      This : access Typ) return access MSSyst.Windows.Forms.VScrollProperties.Typ'Class;
   function GetChildAtPoint(
      This : access Typ;
      pt : MSSyst.Drawing.Point.Valuetype;
      skipValue : MSSyst.Windows.Forms.GetChildAtPointSkip.Valuetype) return access MSSyst.Windows.Forms.Control.Typ'Class;
   function GetChildAtPoint(
      This : access Typ;
      point : MSSyst.Drawing.Point.Valuetype) return access MSSyst.Windows.Forms.Control.Typ'Class;
   function GetItemAt(
      This : access Typ;
      point : MSSyst.Drawing.Point.Valuetype) return access MSSyst.Windows.Forms.ToolStripItem.Typ'Class;
   function GetItemAt(
      This : access Typ;
      x : Integer;
      y : Integer) return access MSSyst.Windows.Forms.ToolStripItem.Typ'Class;
   function GetNextItem(
      This : access Typ;
      start : access MSSyst.Windows.Forms.ToolStripItem.Typ'Class;
      direction : MSSyst.Windows.Forms.ArrowDirection.Valuetype) return access MSSyst.Windows.Forms.ToolStripItem.Typ'Class;
   procedure remove_AutoSizeChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_BeginDrag(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_CausesValidationChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_ControlAdded(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ControlEventHandler.Typ'Class);
   procedure remove_ControlRemoved(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ControlEventHandler.Typ'Class);
   procedure remove_CursorChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_EndDrag(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_ForeColorChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_ItemAdded(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ToolStripItemEventHandler.Typ'Class);
   procedure remove_ItemClicked(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ToolStripItemClickedEventHandler.Typ'Class);
   procedure remove_ItemRemoved(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ToolStripItemEventHandler.Typ'Class);
   procedure remove_LayoutCompleted(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_LayoutStyleChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_PaintGrip(
      This : access Typ;
      value : access MSSyst.Windows.Forms.PaintEventHandler.Typ'Class);
   procedure remove_RendererChanged(
      This : access Typ;
      value : access MSSyst.EventHandler.Typ'Class);
   procedure ResetMinimumSize(
      This : access Typ);
   procedure set_AllowDrop(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AllowItemReorder(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AllowMerge(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Anchor(
      This : access Typ;
      value : MSSyst.Windows.Forms.AnchorStyles.Valuetype);
   procedure set_AutoScroll(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoScrollMargin(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_AutoScrollMinSize(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_AutoScrollPosition(
      This : access Typ;
      value : MSSyst.Drawing.Point.Valuetype);
   procedure set_AutoSize(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_BackColor(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_BindingContext(
      This : access Typ;
      value : access MSSyst.Windows.Forms.BindingContext.Typ'Class);
   procedure set_CanOverflow(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_CausesValidation(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Cursor(
      This : access Typ;
      value : access MSSyst.Windows.Forms.Cursor.Typ'Class);
   procedure set_DefaultDropDownDirection(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripDropDownDirection.Valuetype);
   procedure set_Dock(
      This : access Typ;
      value : MSSyst.Windows.Forms.DockStyle.Valuetype);
   procedure set_Font(
      This : access Typ;
      value : access MSSyst.Drawing.Font.Typ'Class);
   procedure set_ForeColor(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_GripMargin(
      This : access Typ;
      value : MSSyst.Windows.Forms.Padding.Valuetype);
   procedure set_GripStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripGripStyle.Valuetype);
   procedure set_ImageList(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ImageList.Typ'Class);
   procedure set_ImageScalingSize(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_LayoutSettings(
      This : access Typ;
      value : access MSSyst.Windows.Forms.LayoutSettings.Typ'Class);
   procedure set_LayoutStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripLayoutStyle.Valuetype);
   procedure set_Renderer(
      This : access Typ;
      value : access MSSyst.Windows.Forms.ToolStripRenderer.Typ'Class);
   procedure set_RenderMode(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripRenderMode.Valuetype);
   procedure set_ShowItemToolTips(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Stretch(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_TabStop(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_TextDirection(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripTextDirection.Valuetype);
   procedure SetAutoScrollMargin(
      This : access Typ;
      x : Integer;
      y : Integer);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolStrip);
   pragma Import(MSIL,add_AutoSizeChanged,"add_AutoSizeChanged");
   pragma Import(MSIL,add_BeginDrag,"add_BeginDrag");
   pragma Import(MSIL,add_CausesValidationChanged,"add_CausesValidationChanged");
   pragma Import(MSIL,add_ControlAdded,"add_ControlAdded");
   pragma Import(MSIL,add_ControlRemoved,"add_ControlRemoved");
   pragma Import(MSIL,add_CursorChanged,"add_CursorChanged");
   pragma Import(MSIL,add_EndDrag,"add_EndDrag");
   pragma Import(MSIL,add_ForeColorChanged,"add_ForeColorChanged");
   pragma Import(MSIL,add_ItemAdded,"add_ItemAdded");
   pragma Import(MSIL,add_ItemClicked,"add_ItemClicked");
   pragma Import(MSIL,add_ItemRemoved,"add_ItemRemoved");
   pragma Import(MSIL,add_LayoutCompleted,"add_LayoutCompleted");
   pragma Import(MSIL,add_LayoutStyleChanged,"add_LayoutStyleChanged");
   pragma Import(MSIL,add_PaintGrip,"add_PaintGrip");
   pragma Import(MSIL,add_RendererChanged,"add_RendererChanged");
   pragma Import(MSIL,get_AllowDrop,"get_AllowDrop");
   pragma Import(MSIL,get_AllowItemReorder,"get_AllowItemReorder");
   pragma Import(MSIL,get_AllowMerge,"get_AllowMerge");
   pragma Import(MSIL,get_Anchor,"get_Anchor");
   pragma Import(MSIL,get_AutoScroll,"get_AutoScroll");
   pragma Import(MSIL,get_AutoScrollMargin,"get_AutoScrollMargin");
   pragma Import(MSIL,get_AutoScrollMinSize,"get_AutoScrollMinSize");
   pragma Import(MSIL,get_AutoScrollPosition,"get_AutoScrollPosition");
   pragma Import(MSIL,get_AutoSize,"get_AutoSize");
   pragma Import(MSIL,get_BackColor,"get_BackColor");
   pragma Import(MSIL,get_BindingContext,"get_BindingContext");
   pragma Import(MSIL,get_CanOverflow,"get_CanOverflow");
   pragma Import(MSIL,get_CausesValidation,"get_CausesValidation");
   pragma Import(MSIL,get_Controls,"get_Controls");
   pragma Import(MSIL,get_Cursor,"get_Cursor");
   pragma Import(MSIL,get_DefaultDropDownDirection,"get_DefaultDropDownDirection");
   pragma Import(MSIL,get_DisplayRectangle,"get_DisplayRectangle");
   pragma Import(MSIL,get_Dock,"get_Dock");
   pragma Import(MSIL,get_Font,"get_Font");
   pragma Import(MSIL,get_ForeColor,"get_ForeColor");
   pragma Import(MSIL,get_GripDisplayStyle,"get_GripDisplayStyle");
   pragma Import(MSIL,get_GripMargin,"get_GripMargin");
   pragma Import(MSIL,get_GripRectangle,"get_GripRectangle");
   pragma Import(MSIL,get_GripStyle,"get_GripStyle");
   pragma Import(MSIL,get_HasChildren,"get_HasChildren");
   pragma Import(MSIL,get_HorizontalScroll,"get_HorizontalScroll");
   pragma Import(MSIL,get_ImageList,"get_ImageList");
   pragma Import(MSIL,get_ImageScalingSize,"get_ImageScalingSize");
   pragma Import(MSIL,get_IsCurrentlyDragging,"get_IsCurrentlyDragging");
   pragma Import(MSIL,get_IsDropDown,"get_IsDropDown");
   pragma Import(MSIL,get_Items,"get_Items");
   pragma Import(MSIL,get_LayoutEngine,"get_LayoutEngine");
   pragma Import(MSIL,get_LayoutSettings,"get_LayoutSettings");
   pragma Import(MSIL,get_LayoutStyle,"get_LayoutStyle");
   pragma Import(MSIL,get_Orientation,"get_Orientation");
   pragma Import(MSIL,get_OverflowButton,"get_OverflowButton");
   pragma Import(MSIL,get_Renderer,"get_Renderer");
   pragma Import(MSIL,get_RenderMode,"get_RenderMode");
   pragma Import(MSIL,get_ShowItemToolTips,"get_ShowItemToolTips");
   pragma Import(MSIL,get_Stretch,"get_Stretch");
   pragma Import(MSIL,get_TabStop,"get_TabStop");
   pragma Import(MSIL,get_TextDirection,"get_TextDirection");
   pragma Import(MSIL,get_VerticalScroll,"get_VerticalScroll");
   pragma Import(MSIL,GetChildAtPoint,"GetChildAtPoint");
   pragma Import(MSIL,GetItemAt,"GetItemAt");
   pragma Import(MSIL,GetNextItem,"GetNextItem");
   pragma Import(MSIL,remove_AutoSizeChanged,"remove_AutoSizeChanged");
   pragma Import(MSIL,remove_BeginDrag,"remove_BeginDrag");
   pragma Import(MSIL,remove_CausesValidationChanged,"remove_CausesValidationChanged");
   pragma Import(MSIL,remove_ControlAdded,"remove_ControlAdded");
   pragma Import(MSIL,remove_ControlRemoved,"remove_ControlRemoved");
   pragma Import(MSIL,remove_CursorChanged,"remove_CursorChanged");
   pragma Import(MSIL,remove_EndDrag,"remove_EndDrag");
   pragma Import(MSIL,remove_ForeColorChanged,"remove_ForeColorChanged");
   pragma Import(MSIL,remove_ItemAdded,"remove_ItemAdded");
   pragma Import(MSIL,remove_ItemClicked,"remove_ItemClicked");
   pragma Import(MSIL,remove_ItemRemoved,"remove_ItemRemoved");
   pragma Import(MSIL,remove_LayoutCompleted,"remove_LayoutCompleted");
   pragma Import(MSIL,remove_LayoutStyleChanged,"remove_LayoutStyleChanged");
   pragma Import(MSIL,remove_PaintGrip,"remove_PaintGrip");
   pragma Import(MSIL,remove_RendererChanged,"remove_RendererChanged");
   pragma Import(MSIL,ResetMinimumSize,"ResetMinimumSize");
   pragma Import(MSIL,set_AllowDrop,"set_AllowDrop");
   pragma Import(MSIL,set_AllowItemReorder,"set_AllowItemReorder");
   pragma Import(MSIL,set_AllowMerge,"set_AllowMerge");
   pragma Import(MSIL,set_Anchor,"set_Anchor");
   pragma Import(MSIL,set_AutoScroll,"set_AutoScroll");
   pragma Import(MSIL,set_AutoScrollMargin,"set_AutoScrollMargin");
   pragma Import(MSIL,set_AutoScrollMinSize,"set_AutoScrollMinSize");
   pragma Import(MSIL,set_AutoScrollPosition,"set_AutoScrollPosition");
   pragma Import(MSIL,set_AutoSize,"set_AutoSize");
   pragma Import(MSIL,set_BackColor,"set_BackColor");
   pragma Import(MSIL,set_BindingContext,"set_BindingContext");
   pragma Import(MSIL,set_CanOverflow,"set_CanOverflow");
   pragma Import(MSIL,set_CausesValidation,"set_CausesValidation");
   pragma Import(MSIL,set_Cursor,"set_Cursor");
   pragma Import(MSIL,set_DefaultDropDownDirection,"set_DefaultDropDownDirection");
   pragma Import(MSIL,set_Dock,"set_Dock");
   pragma Import(MSIL,set_Font,"set_Font");
   pragma Import(MSIL,set_ForeColor,"set_ForeColor");
   pragma Import(MSIL,set_GripMargin,"set_GripMargin");
   pragma Import(MSIL,set_GripStyle,"set_GripStyle");
   pragma Import(MSIL,set_ImageList,"set_ImageList");
   pragma Import(MSIL,set_ImageScalingSize,"set_ImageScalingSize");
   pragma Import(MSIL,set_LayoutSettings,"set_LayoutSettings");
   pragma Import(MSIL,set_LayoutStyle,"set_LayoutStyle");
   pragma Import(MSIL,set_Renderer,"set_Renderer");
   pragma Import(MSIL,set_RenderMode,"set_RenderMode");
   pragma Import(MSIL,set_ShowItemToolTips,"set_ShowItemToolTips");
   pragma Import(MSIL,set_Stretch,"set_Stretch");
   pragma Import(MSIL,set_TabStop,"set_TabStop");
   pragma Import(MSIL,set_TextDirection,"set_TextDirection");
   pragma Import(MSIL,SetAutoScrollMargin,"SetAutoScrollMargin");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.ToolStrip;
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStrip,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStrip");
