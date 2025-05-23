-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.ToolStrip;
with MSSyst.ComponentModel.IComponent;
with MSSyst.ComponentModel.ISynchronizeInvoke;
with MSSyst.Windows.Forms.IWin32Window;
with MSSyst.Windows.Forms.IBindableComponent;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Windows.Forms.UICuesEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ToolStripDropDownClosedEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ToolStripDropDownClosingEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ControlEventHandler.Ref is access;
with type MSSyst.Windows.Forms.DragEventHandler.Ref is access;
with type MSSyst.Windows.Forms.GiveFeedbackEventHandler.Ref is access;
with type MSSyst.Windows.Forms.HelpEventHandler.Ref is access;
with type MSSyst.Windows.Forms.InvalidateEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ToolStripItemEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ToolStripItemClickedEventHandler.Ref is access;
with type MSSyst.Windows.Forms.KeyEventHandler.Ref is access;
with type MSSyst.Windows.Forms.KeyPressEventHandler.Ref is access;
with type MSSyst.Windows.Forms.LayoutEventHandler.Ref is access;
with type MSSyst.Windows.Forms.MouseEventHandler.Ref is access;
with type MSSyst.ComponentModel.CancelEventHandler.Ref is access;
with type MSSyst.Windows.Forms.PaintEventHandler.Ref is access;
with type MSSyst.Windows.Forms.PreviewKeyDownEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryAccessibilityHelpEventHandler.Ref is access;
with type MSSyst.Windows.Forms.QueryContinueDragEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ScrollEventHandler.Ref is access;
with type MSSyst.IAsyncResult.Ref is access;
with type MSSyst.Delegate.Ref is access;
with type MSSyst.Object.Ref_array is access;
with MSSyst.Windows.Forms.ToolStripDropDownCloseReason;
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
with type MSSyst.Drawing.Color.Valuetype is tagged;
with type MSSyst.Drawing.Image.Ref is access;
with MSSyst.Windows.Forms.ImageLayout;
with type MSSyst.Windows.Forms.BindingContext.Ref is access;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.Windows.Forms.ContextMenu.Ref is access;
with type MSSyst.Windows.Forms.ContextMenuStrip.Ref is access;
with type MSSyst.Windows.Forms.Control.ControlCollection.Ref is access;
with type MSSyst.Windows.Forms.Cursor.Ref is access;
with type MSSyst.Windows.Forms.ControlBindingsCollection.Ref is access;
with MSSyst.Windows.Forms.ToolStripDropDownDirection;
with MSSyst.Windows.Forms.DockStyle;
with type MSSyst.Windows.Forms.ScrollableControl.DockPaddingEdges.Ref is access;
with type MSSyst.Drawing.Font.Ref is access;
with MSSyst.Windows.Forms.ToolStripGripDisplayStyle;
with type MSSyst.Windows.Forms.Padding.Valuetype is tagged;
with MSSyst.Windows.Forms.ToolStripGripStyle;
with type MSSyst.Windows.Forms.HScrollProperties.Ref is access;
with type MSSyst.Windows.Forms.ImageList.Ref is access;
with MSSyst.Windows.Forms.ImeMode;
with type MSSyst.Windows.Forms.ToolStripItemCollection.Ref is access;
with type MSSyst.Windows.Forms.Layout.LayoutEngine.Ref is access;
with type MSSyst.Windows.Forms.LayoutSettings.Ref is access;
with MSSyst.Windows.Forms.ToolStripLayoutStyle;
with MSSyst.Windows.Forms.Orientation;
with type MSSyst.Windows.Forms.ToolStripOverflowButton.Ref is access;
with type MSSyst.Windows.Forms.ToolStripItem.Ref is access;
with type MSSyst.Drawing.Region.Ref is access;
with type MSSyst.Windows.Forms.ToolStripRenderer.Ref is access;
with MSSyst.Windows.Forms.ToolStripRenderMode;
with MSSyst.Windows.Forms.RightToLeft;
with type MSSyst.ComponentModel.ISite.Ref is access;
with MSSyst.Windows.Forms.ToolStripTextDirection;
with type MSSyst.Windows.Forms.VScrollProperties.Ref is access;
with type MSSyst.Windows.Forms.IWindowTarget.Ref is access;
with MSSyst.Windows.Forms.GetChildAtPointSkip;
with type MSSyst.Windows.Forms.IContainerControl.Ref is access;
with MSSyst.Windows.Forms.ArrowDirection;
with MSSyst.Windows.Forms.PreProcessControlState;
with MSSyst.Windows.Forms.Message;
with type MSSyst.Drawing.SizeF.Valuetype is tagged;
with MSSyst.Windows.Forms.BoundsSpecified;
package MSSyst.Windows.Forms.ToolStripDropDown is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.ToolStrip.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.ComponentModel.ISynchronizeInvoke.Typ
         and MSSyst.Windows.Forms.IWin32Window.Typ
         and MSSyst.Windows.Forms.IBindableComponent.Typ
   with record
      null;
   end record;
   function new_ToolStripDropDown(
      This : Ref := null) return Ref;
   procedure add_BackgroundImageChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_BackgroundImageLayoutChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_BindingContextChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_ChangeUICues(
      This : access Typ;
      value : MSSyst.Windows.Forms.UICuesEventHandler.Ref);
   procedure add_Closed(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripDropDownClosedEventHandler.Ref);
   procedure add_Closing(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripDropDownClosingEventHandler.Ref);
   procedure add_ContextMenuChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_ContextMenuStripChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_DockChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Enter(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_FontChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_ForeColorChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_GiveFeedback(
      This : access Typ;
      value : MSSyst.Windows.Forms.GiveFeedbackEventHandler.Ref);
   procedure add_HelpRequested(
      This : access Typ;
      value : MSSyst.Windows.Forms.HelpEventHandler.Ref);
   procedure add_ImeModeChanged(
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
   procedure add_Leave(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Opened(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Opening(
      This : access Typ;
      value : MSSyst.ComponentModel.CancelEventHandler.Ref);
   procedure add_RegionChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Scroll(
      This : access Typ;
      value : MSSyst.Windows.Forms.ScrollEventHandler.Ref);
   procedure add_StyleChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_TabIndexChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_TabStopChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_TextChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Validated(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Validating(
      This : access Typ;
      value : MSSyst.ComponentModel.CancelEventHandler.Ref);
   procedure Close(
      This : access Typ;
      reason : MSSyst.Windows.Forms.ToolStripDropDownCloseReason.Valuetype);
   procedure Close(
      This : access Typ);
   function get_AllowItemReorder(
      This : access Typ) return Standard.Boolean;
   function get_AllowTransparency(
      This : access Typ) return Standard.Boolean;
   function get_Anchor(
      This : access Typ) return MSSyst.Windows.Forms.AnchorStyles.Valuetype;
   function get_AutoClose(
      This : access Typ) return Standard.Boolean;
   function get_AutoSize(
      This : access Typ) return Standard.Boolean;
   function get_CanOverflow(
      This : access Typ) return Standard.Boolean;
   function get_ContextMenu(
      This : access Typ) return MSSyst.Windows.Forms.ContextMenu.Ref;
   function get_ContextMenuStrip(
      This : access Typ) return MSSyst.Windows.Forms.ContextMenuStrip.Ref;
   function get_DefaultDropDownDirection(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripDropDownDirection.Valuetype;
   function get_Dock(
      This : access Typ) return MSSyst.Windows.Forms.DockStyle.Valuetype;
   function get_DropShadowEnabled(
      This : access Typ) return Standard.Boolean;
   function get_Font(
      This : access Typ) return MSSyst.Drawing.Font.Ref;
   function get_GripDisplayStyle(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripGripDisplayStyle.Valuetype;
   function get_GripMargin(
      This : access Typ) return MSSyst.Windows.Forms.Padding.Valuetype;
   function get_GripRectangle(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_GripStyle(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripGripStyle.Valuetype;
   function get_IsAutoGenerated(
      This : access Typ) return Standard.Boolean;
   function get_Location(
      This : access Typ) return MSSyst.Drawing.Point.Valuetype;
   function get_Opacity(
      This : access Typ) return Long_Float;
   function get_OverflowButton(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripOverflowButton.Ref;
   function get_OwnerItem(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripItem.Ref;
   function get_Region(
      This : access Typ) return MSSyst.Drawing.Region.Ref;
   function get_RightToLeft(
      This : access Typ) return MSSyst.Windows.Forms.RightToLeft.Valuetype;
   function get_Stretch(
      This : access Typ) return Standard.Boolean;
   function get_TabIndex(
      This : access Typ) return Integer;
   function get_TextDirection(
      This : access Typ) return MSSyst.Windows.Forms.ToolStripTextDirection.Valuetype;
   function get_TopLevel(
      This : access Typ) return Standard.Boolean;
   function get_Visible(
      This : access Typ) return Standard.Boolean;
   procedure remove_BackgroundImageChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_BackgroundImageLayoutChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_BindingContextChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_ChangeUICues(
      This : access Typ;
      value : MSSyst.Windows.Forms.UICuesEventHandler.Ref);
   procedure remove_Closed(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripDropDownClosedEventHandler.Ref);
   procedure remove_Closing(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripDropDownClosingEventHandler.Ref);
   procedure remove_ContextMenuChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_ContextMenuStripChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_DockChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Enter(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_FontChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_ForeColorChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_GiveFeedback(
      This : access Typ;
      value : MSSyst.Windows.Forms.GiveFeedbackEventHandler.Ref);
   procedure remove_HelpRequested(
      This : access Typ;
      value : MSSyst.Windows.Forms.HelpEventHandler.Ref);
   procedure remove_ImeModeChanged(
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
   procedure remove_Leave(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Opened(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Opening(
      This : access Typ;
      value : MSSyst.ComponentModel.CancelEventHandler.Ref);
   procedure remove_RegionChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Scroll(
      This : access Typ;
      value : MSSyst.Windows.Forms.ScrollEventHandler.Ref);
   procedure remove_StyleChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_TabIndexChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_TabStopChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_TextChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Validated(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Validating(
      This : access Typ;
      value : MSSyst.ComponentModel.CancelEventHandler.Ref);
   procedure set_AllowItemReorder(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AllowTransparency(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Anchor(
      This : access Typ;
      value : MSSyst.Windows.Forms.AnchorStyles.Valuetype);
   procedure set_AutoClose(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoSize(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_CanOverflow(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ContextMenu(
      This : access Typ;
      value : MSSyst.Windows.Forms.ContextMenu.Ref);
   procedure set_ContextMenuStrip(
      This : access Typ;
      value : MSSyst.Windows.Forms.ContextMenuStrip.Ref);
   procedure set_DefaultDropDownDirection(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripDropDownDirection.Valuetype);
   procedure set_Dock(
      This : access Typ;
      value : MSSyst.Windows.Forms.DockStyle.Valuetype);
   procedure set_DropShadowEnabled(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Font(
      This : access Typ;
      value : MSSyst.Drawing.Font.Ref);
   procedure set_GripMargin(
      This : access Typ;
      value : MSSyst.Windows.Forms.Padding.Valuetype);
   procedure set_GripStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripGripStyle.Valuetype);
   procedure set_Location(
      This : access Typ;
      value : MSSyst.Drawing.Point.Valuetype);
   procedure set_Opacity(
      This : access Typ;
      value : Long_Float);
   procedure set_OwnerItem(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripItem.Ref);
   procedure set_Region(
      This : access Typ;
      value : MSSyst.Drawing.Region.Ref);
   procedure set_RightToLeft(
      This : access Typ;
      value : MSSyst.Windows.Forms.RightToLeft.Valuetype);
   procedure set_Stretch(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_TabIndex(
      This : access Typ;
      value : Integer);
   procedure set_TextDirection(
      This : access Typ;
      value : MSSyst.Windows.Forms.ToolStripTextDirection.Valuetype);
   procedure set_TopLevel(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Visible(
      This : access Typ;
      value : Standard.Boolean);
   procedure Show(
      This : access Typ;
      position : MSSyst.Drawing.Point.Valuetype;
      direction : MSSyst.Windows.Forms.ToolStripDropDownDirection.Valuetype);
   procedure Show(
      This : access Typ;
      x : Integer;
      y : Integer);
   procedure Show(
      This : access Typ;
      screenLocation : MSSyst.Drawing.Point.Valuetype);
   procedure Show(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref;
      position : MSSyst.Drawing.Point.Valuetype;
      direction : MSSyst.Windows.Forms.ToolStripDropDownDirection.Valuetype);
   procedure Show(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref;
      x : Integer;
      y : Integer);
   procedure Show(
      This : access Typ;
      control : MSSyst.Windows.Forms.Control.Ref;
      position : MSSyst.Drawing.Point.Valuetype);
   procedure Show(
      This : access Typ);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ToolStripDropDown);
   pragma Import(MSIL,add_BackgroundImageChanged,"add_BackgroundImageChanged");
   pragma Import(MSIL,add_BackgroundImageLayoutChanged,"add_BackgroundImageLayoutChanged");
   pragma Import(MSIL,add_BindingContextChanged,"add_BindingContextChanged");
   pragma Import(MSIL,add_ChangeUICues,"add_ChangeUICues");
   pragma Import(MSIL,add_Closed,"add_Closed");
   pragma Import(MSIL,add_Closing,"add_Closing");
   pragma Import(MSIL,add_ContextMenuChanged,"add_ContextMenuChanged");
   pragma Import(MSIL,add_ContextMenuStripChanged,"add_ContextMenuStripChanged");
   pragma Import(MSIL,add_DockChanged,"add_DockChanged");
   pragma Import(MSIL,add_Enter,"add_Enter");
   pragma Import(MSIL,add_FontChanged,"add_FontChanged");
   pragma Import(MSIL,add_ForeColorChanged,"add_ForeColorChanged");
   pragma Import(MSIL,add_GiveFeedback,"add_GiveFeedback");
   pragma Import(MSIL,add_HelpRequested,"add_HelpRequested");
   pragma Import(MSIL,add_ImeModeChanged,"add_ImeModeChanged");
   pragma Import(MSIL,add_KeyDown,"add_KeyDown");
   pragma Import(MSIL,add_KeyPress,"add_KeyPress");
   pragma Import(MSIL,add_KeyUp,"add_KeyUp");
   pragma Import(MSIL,add_Leave,"add_Leave");
   pragma Import(MSIL,add_Opened,"add_Opened");
   pragma Import(MSIL,add_Opening,"add_Opening");
   pragma Import(MSIL,add_RegionChanged,"add_RegionChanged");
   pragma Import(MSIL,add_Scroll,"add_Scroll");
   pragma Import(MSIL,add_StyleChanged,"add_StyleChanged");
   pragma Import(MSIL,add_TabIndexChanged,"add_TabIndexChanged");
   pragma Import(MSIL,add_TabStopChanged,"add_TabStopChanged");
   pragma Import(MSIL,add_TextChanged,"add_TextChanged");
   pragma Import(MSIL,add_Validated,"add_Validated");
   pragma Import(MSIL,add_Validating,"add_Validating");
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,get_AllowItemReorder,"get_AllowItemReorder");
   pragma Import(MSIL,get_AllowTransparency,"get_AllowTransparency");
   pragma Import(MSIL,get_Anchor,"get_Anchor");
   pragma Import(MSIL,get_AutoClose,"get_AutoClose");
   pragma Import(MSIL,get_AutoSize,"get_AutoSize");
   pragma Import(MSIL,get_CanOverflow,"get_CanOverflow");
   pragma Import(MSIL,get_ContextMenu,"get_ContextMenu");
   pragma Import(MSIL,get_ContextMenuStrip,"get_ContextMenuStrip");
   pragma Import(MSIL,get_DefaultDropDownDirection,"get_DefaultDropDownDirection");
   pragma Import(MSIL,get_Dock,"get_Dock");
   pragma Import(MSIL,get_DropShadowEnabled,"get_DropShadowEnabled");
   pragma Import(MSIL,get_Font,"get_Font");
   pragma Import(MSIL,get_GripDisplayStyle,"get_GripDisplayStyle");
   pragma Import(MSIL,get_GripMargin,"get_GripMargin");
   pragma Import(MSIL,get_GripRectangle,"get_GripRectangle");
   pragma Import(MSIL,get_GripStyle,"get_GripStyle");
   pragma Import(MSIL,get_IsAutoGenerated,"get_IsAutoGenerated");
   pragma Import(MSIL,get_Location,"get_Location");
   pragma Import(MSIL,get_Opacity,"get_Opacity");
   pragma Import(MSIL,get_OverflowButton,"get_OverflowButton");
   pragma Import(MSIL,get_OwnerItem,"get_OwnerItem");
   pragma Import(MSIL,get_Region,"get_Region");
   pragma Import(MSIL,get_RightToLeft,"get_RightToLeft");
   pragma Import(MSIL,get_Stretch,"get_Stretch");
   pragma Import(MSIL,get_TabIndex,"get_TabIndex");
   pragma Import(MSIL,get_TextDirection,"get_TextDirection");
   pragma Import(MSIL,get_TopLevel,"get_TopLevel");
   pragma Import(MSIL,get_Visible,"get_Visible");
   pragma Import(MSIL,remove_BackgroundImageChanged,"remove_BackgroundImageChanged");
   pragma Import(MSIL,remove_BackgroundImageLayoutChanged,"remove_BackgroundImageLayoutChanged");
   pragma Import(MSIL,remove_BindingContextChanged,"remove_BindingContextChanged");
   pragma Import(MSIL,remove_ChangeUICues,"remove_ChangeUICues");
   pragma Import(MSIL,remove_Closed,"remove_Closed");
   pragma Import(MSIL,remove_Closing,"remove_Closing");
   pragma Import(MSIL,remove_ContextMenuChanged,"remove_ContextMenuChanged");
   pragma Import(MSIL,remove_ContextMenuStripChanged,"remove_ContextMenuStripChanged");
   pragma Import(MSIL,remove_DockChanged,"remove_DockChanged");
   pragma Import(MSIL,remove_Enter,"remove_Enter");
   pragma Import(MSIL,remove_FontChanged,"remove_FontChanged");
   pragma Import(MSIL,remove_ForeColorChanged,"remove_ForeColorChanged");
   pragma Import(MSIL,remove_GiveFeedback,"remove_GiveFeedback");
   pragma Import(MSIL,remove_HelpRequested,"remove_HelpRequested");
   pragma Import(MSIL,remove_ImeModeChanged,"remove_ImeModeChanged");
   pragma Import(MSIL,remove_KeyDown,"remove_KeyDown");
   pragma Import(MSIL,remove_KeyPress,"remove_KeyPress");
   pragma Import(MSIL,remove_KeyUp,"remove_KeyUp");
   pragma Import(MSIL,remove_Leave,"remove_Leave");
   pragma Import(MSIL,remove_Opened,"remove_Opened");
   pragma Import(MSIL,remove_Opening,"remove_Opening");
   pragma Import(MSIL,remove_RegionChanged,"remove_RegionChanged");
   pragma Import(MSIL,remove_Scroll,"remove_Scroll");
   pragma Import(MSIL,remove_StyleChanged,"remove_StyleChanged");
   pragma Import(MSIL,remove_TabIndexChanged,"remove_TabIndexChanged");
   pragma Import(MSIL,remove_TabStopChanged,"remove_TabStopChanged");
   pragma Import(MSIL,remove_TextChanged,"remove_TextChanged");
   pragma Import(MSIL,remove_Validated,"remove_Validated");
   pragma Import(MSIL,remove_Validating,"remove_Validating");
   pragma Import(MSIL,set_AllowItemReorder,"set_AllowItemReorder");
   pragma Import(MSIL,set_AllowTransparency,"set_AllowTransparency");
   pragma Import(MSIL,set_Anchor,"set_Anchor");
   pragma Import(MSIL,set_AutoClose,"set_AutoClose");
   pragma Import(MSIL,set_AutoSize,"set_AutoSize");
   pragma Import(MSIL,set_CanOverflow,"set_CanOverflow");
   pragma Import(MSIL,set_ContextMenu,"set_ContextMenu");
   pragma Import(MSIL,set_ContextMenuStrip,"set_ContextMenuStrip");
   pragma Import(MSIL,set_DefaultDropDownDirection,"set_DefaultDropDownDirection");
   pragma Import(MSIL,set_Dock,"set_Dock");
   pragma Import(MSIL,set_DropShadowEnabled,"set_DropShadowEnabled");
   pragma Import(MSIL,set_Font,"set_Font");
   pragma Import(MSIL,set_GripMargin,"set_GripMargin");
   pragma Import(MSIL,set_GripStyle,"set_GripStyle");
   pragma Import(MSIL,set_Location,"set_Location");
   pragma Import(MSIL,set_Opacity,"set_Opacity");
   pragma Import(MSIL,set_OwnerItem,"set_OwnerItem");
   pragma Import(MSIL,set_Region,"set_Region");
   pragma Import(MSIL,set_RightToLeft,"set_RightToLeft");
   pragma Import(MSIL,set_Stretch,"set_Stretch");
   pragma Import(MSIL,set_TabIndex,"set_TabIndex");
   pragma Import(MSIL,set_TextDirection,"set_TextDirection");
   pragma Import(MSIL,set_TopLevel,"set_TopLevel");
   pragma Import(MSIL,set_Visible,"set_Visible");
   pragma Import(MSIL,Show,"Show");
end MSSyst.Windows.Forms.ToolStripDropDown;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ToolStripDropDown,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ToolStripDropDown");
