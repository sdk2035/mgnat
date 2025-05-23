-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Windows.Forms.ContainerControl;
with MSSyst.ComponentModel.IComponent;
with MSSyst.ComponentModel.ISynchronizeInvoke;
with MSSyst.Windows.Forms.IWin32Window;
with MSSyst.Windows.Forms.IBindableComponent;
with MSSyst.Windows.Forms.IContainerControl;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Windows.Forms.UICuesEventHandler.Ref is access;
with type MSSyst.ComponentModel.CancelEventHandler.Ref is access;
with type MSSyst.Windows.Forms.ControlEventHandler.Ref is access;
with type MSSyst.Windows.Forms.DragEventHandler.Ref is access;
with type MSSyst.Windows.Forms.FormClosedEventHandler.Ref is access;
with type MSSyst.Windows.Forms.FormClosingEventHandler.Ref is access;
with type MSSyst.Windows.Forms.GiveFeedbackEventHandler.Ref is access;
with type MSSyst.Windows.Forms.HelpEventHandler.Ref is access;
with type MSSyst.Windows.Forms.InputLanguageChangedEventHandler.Ref is access;
with type MSSyst.Windows.Forms.InputLanguageChangingEventHandler.Ref is access;
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
with type MSSyst.Windows.Forms.IButtonControl.Ref is access;
with type MSSyst.Windows.Forms.AccessibleObject.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Windows.Forms.AccessibleRole;
with MSSyst.Windows.Forms.AnchorStyles;
with type MSSyst.Drawing.Size.Valuetype is tagged;
with type MSSyst.Drawing.SizeF.Valuetype is tagged;
with MSSyst.Windows.Forms.AutoScaleMode;
with type MSSyst.Drawing.Point.Valuetype is tagged;
with MSSyst.Windows.Forms.AutoSizeMode;
with MSSyst.Windows.Forms.AutoValidate;
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
with MSSyst.Windows.Forms.DialogResult;
with MSSyst.Windows.Forms.DockStyle;
with type MSSyst.Windows.Forms.ScrollableControl.DockPaddingEdges.Ref is access;
with type MSSyst.Drawing.Font.Ref is access;
with MSSyst.Windows.Forms.FormBorderStyle;
with type MSSyst.Windows.Forms.HScrollProperties.Ref is access;
with type MSSyst.Drawing.Icon.Ref is access;
with MSSyst.Windows.Forms.ImeMode;
with type MSSyst.Windows.Forms.Layout.LayoutEngine.Ref is access;
with type MSSyst.Windows.Forms.MenuStrip.Ref is access;
with type MSSyst.Windows.Forms.Padding.Valuetype is tagged;
with type MSSyst.Windows.Forms.Form.Ref_array is access;
with type MSSyst.Windows.Forms.MainMenu.Ref is access;
with type MSSyst.Drawing.Region.Ref is access;
with MSSyst.Windows.Forms.RightToLeft;
with type MSSyst.ComponentModel.ISite.Ref is access;
with MSSyst.Windows.Forms.SizeGripStyle;
with MSSyst.Windows.Forms.FormStartPosition;
with type MSSyst.Windows.Forms.VScrollProperties.Ref is access;
with MSSyst.Windows.Forms.FormWindowState;
with type MSSyst.Windows.Forms.IWindowTarget.Ref is access;
with MSSyst.Windows.Forms.GetChildAtPointSkip;
with MSSyst.Windows.Forms.MdiLayout;
with MSSyst.Windows.Forms.PreProcessControlState;
with MSSyst.Windows.Forms.Message;
with MSSyst.Windows.Forms.BoundsSpecified;
with MSSyst.Windows.Forms.ValidationConstraints;
package MSSyst.Windows.Forms.Form is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Windows.Forms.ContainerControl.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.ComponentModel.ISynchronizeInvoke.Typ
         and MSSyst.Windows.Forms.IWin32Window.Typ
         and MSSyst.Windows.Forms.IBindableComponent.Typ
         and MSSyst.Windows.Forms.IContainerControl.Typ
   with record
      null;
   end record;
   function new_Form(
      This : Ref := null) return Ref;
   procedure Activate(
      This : access Typ);
   procedure add_Activated(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_AutoSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_AutoValidateChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Closed(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Closing(
      This : access Typ;
      value : MSSyst.ComponentModel.CancelEventHandler.Ref);
   procedure add_Deactivate(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_FormClosed(
      This : access Typ;
      value : MSSyst.Windows.Forms.FormClosedEventHandler.Ref);
   procedure add_FormClosing(
      This : access Typ;
      value : MSSyst.Windows.Forms.FormClosingEventHandler.Ref);
   procedure add_HelpButtonClicked(
      This : access Typ;
      value : MSSyst.ComponentModel.CancelEventHandler.Ref);
   procedure add_InputLanguageChanged(
      This : access Typ;
      value : MSSyst.Windows.Forms.InputLanguageChangedEventHandler.Ref);
   procedure add_InputLanguageChanging(
      This : access Typ;
      value : MSSyst.Windows.Forms.InputLanguageChangingEventHandler.Ref);
   procedure add_Load(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MarginChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MaximizedBoundsChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MaximumSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MdiChildActivate(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MenuComplete(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MenuStart(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_MinimumSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_ResizeBegin(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_ResizeEnd(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_RightToLeftLayoutChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_Shown(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_TabIndexChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure add_TabStopChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure AddOwnedForm(
      This : access Typ;
      ownedForm : MSSyst.Windows.Forms.Form.Ref);
   procedure Close(
      This : access Typ);
   function get_AcceptButton(
      This : access Typ) return MSSyst.Windows.Forms.IButtonControl.Ref;
   function get_ActiveForm return MSSyst.Windows.Forms.Form.Ref;
   function get_ActiveMdiChild(
      This : access Typ) return MSSyst.Windows.Forms.Form.Ref;
   function get_AllowTransparency(
      This : access Typ) return Standard.Boolean;
   function get_AutoScale(
      This : access Typ) return Standard.Boolean;
   function get_AutoScaleBaseSize(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_AutoScroll(
      This : access Typ) return Standard.Boolean;
   function get_AutoSize(
      This : access Typ) return Standard.Boolean;
   function get_AutoSizeMode(
      This : access Typ) return MSSyst.Windows.Forms.AutoSizeMode.Valuetype;
   function get_AutoValidate(
      This : access Typ) return MSSyst.Windows.Forms.AutoValidate.Valuetype;
   function get_BackColor(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_CancelButton(
      This : access Typ) return MSSyst.Windows.Forms.IButtonControl.Ref;
   function get_ClientSize(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_ControlBox(
      This : access Typ) return Standard.Boolean;
   function get_DesktopBounds(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_DesktopLocation(
      This : access Typ) return MSSyst.Drawing.Point.Valuetype;
   function get_DialogResult(
      This : access Typ) return MSSyst.Windows.Forms.DialogResult.Valuetype;
   function get_FormBorderStyle(
      This : access Typ) return MSSyst.Windows.Forms.FormBorderStyle.Valuetype;
   function get_HelpButton(
      This : access Typ) return Standard.Boolean;
   function get_Icon(
      This : access Typ) return MSSyst.Drawing.Icon.Ref;
   function get_IsMdiChild(
      This : access Typ) return Standard.Boolean;
   function get_IsMdiContainer(
      This : access Typ) return Standard.Boolean;
   function get_IsRestrictedWindow(
      This : access Typ) return Standard.Boolean;
   function get_KeyPreview(
      This : access Typ) return Standard.Boolean;
   function get_Location(
      This : access Typ) return MSSyst.Drawing.Point.Valuetype;
   function get_MainMenuStrip(
      This : access Typ) return MSSyst.Windows.Forms.MenuStrip.Ref;
   function get_Margin(
      This : access Typ) return MSSyst.Windows.Forms.Padding.Valuetype;
   function get_MaximizeBox(
      This : access Typ) return Standard.Boolean;
   function get_MaximumSize(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_MdiChildren(
      This : access Typ) return MSSyst.Windows.Forms.Form.Ref_array;
   function get_MdiParent(
      This : access Typ) return MSSyst.Windows.Forms.Form.Ref;
   function get_Menu(
      This : access Typ) return MSSyst.Windows.Forms.MainMenu.Ref;
   function get_MergedMenu(
      This : access Typ) return MSSyst.Windows.Forms.MainMenu.Ref;
   function get_MinimizeBox(
      This : access Typ) return Standard.Boolean;
   function get_MinimumSize(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_Modal(
      This : access Typ) return Standard.Boolean;
   function get_Opacity(
      This : access Typ) return Long_Float;
   function get_OwnedForms(
      This : access Typ) return MSSyst.Windows.Forms.Form.Ref_array;
   function get_Owner(
      This : access Typ) return MSSyst.Windows.Forms.Form.Ref;
   function get_RestoreBounds(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_RightToLeftLayout(
      This : access Typ) return Standard.Boolean;
   function get_ShowIcon(
      This : access Typ) return Standard.Boolean;
   function get_ShowInTaskbar(
      This : access Typ) return Standard.Boolean;
   function get_Size(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
   function get_SizeGripStyle(
      This : access Typ) return MSSyst.Windows.Forms.SizeGripStyle.Valuetype;
   function get_StartPosition(
      This : access Typ) return MSSyst.Windows.Forms.FormStartPosition.Valuetype;
   function get_TabIndex(
      This : access Typ) return Integer;
   function get_TabStop(
      This : access Typ) return Standard.Boolean;
   function get_Text(
      This : access Typ) return MSSyst.String.Ref;
   function get_TopLevel(
      This : access Typ) return Standard.Boolean;
   function get_TopMost(
      This : access Typ) return Standard.Boolean;
   function get_TransparencyKey(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_WindowState(
      This : access Typ) return MSSyst.Windows.Forms.FormWindowState.Valuetype;
   function GetAutoScaleSize(
      font : MSSyst.Drawing.Font.Ref) return MSSyst.Drawing.SizeF.Valuetype;
   procedure LayoutMdi(
      This : access Typ;
      value : MSSyst.Windows.Forms.MdiLayout.Valuetype);
   procedure remove_Activated(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_AutoSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_AutoValidateChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Closed(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Closing(
      This : access Typ;
      value : MSSyst.ComponentModel.CancelEventHandler.Ref);
   procedure remove_Deactivate(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_FormClosed(
      This : access Typ;
      value : MSSyst.Windows.Forms.FormClosedEventHandler.Ref);
   procedure remove_FormClosing(
      This : access Typ;
      value : MSSyst.Windows.Forms.FormClosingEventHandler.Ref);
   procedure remove_HelpButtonClicked(
      This : access Typ;
      value : MSSyst.ComponentModel.CancelEventHandler.Ref);
   procedure remove_InputLanguageChanged(
      This : access Typ;
      value : MSSyst.Windows.Forms.InputLanguageChangedEventHandler.Ref);
   procedure remove_InputLanguageChanging(
      This : access Typ;
      value : MSSyst.Windows.Forms.InputLanguageChangingEventHandler.Ref);
   procedure remove_Load(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MarginChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MaximizedBoundsChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MaximumSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MdiChildActivate(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MenuComplete(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MenuStart(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_MinimumSizeChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_ResizeBegin(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_ResizeEnd(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_RightToLeftLayoutChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_Shown(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_TabIndexChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure remove_TabStopChanged(
      This : access Typ;
      value : MSSyst.EventHandler.Ref);
   procedure RemoveOwnedForm(
      This : access Typ;
      ownedForm : MSSyst.Windows.Forms.Form.Ref);
   procedure set_AcceptButton(
      This : access Typ;
      value : MSSyst.Windows.Forms.IButtonControl.Ref);
   procedure set_AllowTransparency(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoScale(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoScaleBaseSize(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_AutoScroll(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoSize(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AutoSizeMode(
      This : access Typ;
      value : MSSyst.Windows.Forms.AutoSizeMode.Valuetype);
   procedure set_AutoValidate(
      This : access Typ;
      value : MSSyst.Windows.Forms.AutoValidate.Valuetype);
   procedure set_BackColor(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_CancelButton(
      This : access Typ;
      value : MSSyst.Windows.Forms.IButtonControl.Ref);
   procedure set_ClientSize(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_ControlBox(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_DesktopBounds(
      This : access Typ;
      value : MSSyst.Drawing.Rectangle.Valuetype);
   procedure set_DesktopLocation(
      This : access Typ;
      value : MSSyst.Drawing.Point.Valuetype);
   procedure set_DialogResult(
      This : access Typ;
      value : MSSyst.Windows.Forms.DialogResult.Valuetype);
   procedure set_FormBorderStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.FormBorderStyle.Valuetype);
   procedure set_HelpButton(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Icon(
      This : access Typ;
      value : MSSyst.Drawing.Icon.Ref);
   procedure set_IsMdiContainer(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_KeyPreview(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Location(
      This : access Typ;
      value : MSSyst.Drawing.Point.Valuetype);
   procedure set_MainMenuStrip(
      This : access Typ;
      value : MSSyst.Windows.Forms.MenuStrip.Ref);
   procedure set_Margin(
      This : access Typ;
      value : MSSyst.Windows.Forms.Padding.Valuetype);
   procedure set_MaximizeBox(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_MaximumSize(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_MdiParent(
      This : access Typ;
      value : MSSyst.Windows.Forms.Form.Ref);
   procedure set_Menu(
      This : access Typ;
      value : MSSyst.Windows.Forms.MainMenu.Ref);
   procedure set_MinimizeBox(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_MinimumSize(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_Opacity(
      This : access Typ;
      value : Long_Float);
   procedure set_Owner(
      This : access Typ;
      value : MSSyst.Windows.Forms.Form.Ref);
   procedure set_RightToLeftLayout(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ShowIcon(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ShowInTaskbar(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Size(
      This : access Typ;
      value : MSSyst.Drawing.Size.Valuetype);
   procedure set_SizeGripStyle(
      This : access Typ;
      value : MSSyst.Windows.Forms.SizeGripStyle.Valuetype);
   procedure set_StartPosition(
      This : access Typ;
      value : MSSyst.Windows.Forms.FormStartPosition.Valuetype);
   procedure set_TabIndex(
      This : access Typ;
      value : Integer);
   procedure set_TabStop(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Text(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_TopLevel(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_TopMost(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_TransparencyKey(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_WindowState(
      This : access Typ;
      value : MSSyst.Windows.Forms.FormWindowState.Valuetype);
   procedure SetDesktopBounds(
      This : access Typ;
      x : Integer;
      y : Integer;
      width : Integer;
      height : Integer);
   procedure SetDesktopLocation(
      This : access Typ;
      x : Integer;
      y : Integer);
   procedure Show(
      This : access Typ;
      owner : MSSyst.Windows.Forms.IWin32Window.Ref);
   function ShowDialog(
      This : access Typ) return MSSyst.Windows.Forms.DialogResult.Valuetype;
   function ShowDialog(
      This : access Typ;
      owner : MSSyst.Windows.Forms.IWin32Window.Ref) return MSSyst.Windows.Forms.DialogResult.Valuetype;
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
   function ValidateChildren(
      This : access Typ) return Standard.Boolean;
   function ValidateChildren(
      This : access Typ;
      validationConstraints : MSSyst.Windows.Forms.ValidationConstraints.Valuetype) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_Form);
   pragma Import(MSIL,Activate,"Activate");
   pragma Import(MSIL,add_Activated,"add_Activated");
   pragma Import(MSIL,add_AutoSizeChanged,"add_AutoSizeChanged");
   pragma Import(MSIL,add_AutoValidateChanged,"add_AutoValidateChanged");
   pragma Import(MSIL,add_Closed,"add_Closed");
   pragma Import(MSIL,add_Closing,"add_Closing");
   pragma Import(MSIL,add_Deactivate,"add_Deactivate");
   pragma Import(MSIL,add_FormClosed,"add_FormClosed");
   pragma Import(MSIL,add_FormClosing,"add_FormClosing");
   pragma Import(MSIL,add_HelpButtonClicked,"add_HelpButtonClicked");
   pragma Import(MSIL,add_InputLanguageChanged,"add_InputLanguageChanged");
   pragma Import(MSIL,add_InputLanguageChanging,"add_InputLanguageChanging");
   pragma Import(MSIL,add_Load,"add_Load");
   pragma Import(MSIL,add_MarginChanged,"add_MarginChanged");
   pragma Import(MSIL,add_MaximizedBoundsChanged,"add_MaximizedBoundsChanged");
   pragma Import(MSIL,add_MaximumSizeChanged,"add_MaximumSizeChanged");
   pragma Import(MSIL,add_MdiChildActivate,"add_MdiChildActivate");
   pragma Import(MSIL,add_MenuComplete,"add_MenuComplete");
   pragma Import(MSIL,add_MenuStart,"add_MenuStart");
   pragma Import(MSIL,add_MinimumSizeChanged,"add_MinimumSizeChanged");
   pragma Import(MSIL,add_ResizeBegin,"add_ResizeBegin");
   pragma Import(MSIL,add_ResizeEnd,"add_ResizeEnd");
   pragma Import(MSIL,add_RightToLeftLayoutChanged,"add_RightToLeftLayoutChanged");
   pragma Import(MSIL,add_Shown,"add_Shown");
   pragma Import(MSIL,add_TabIndexChanged,"add_TabIndexChanged");
   pragma Import(MSIL,add_TabStopChanged,"add_TabStopChanged");
   pragma Import(MSIL,AddOwnedForm,"AddOwnedForm");
   pragma Import(MSIL,Close,"Close");
   pragma Import(MSIL,get_AcceptButton,"get_AcceptButton");
   pragma Import(MSIL,get_ActiveForm,"get_ActiveForm");
   pragma Import(MSIL,get_ActiveMdiChild,"get_ActiveMdiChild");
   pragma Import(MSIL,get_AllowTransparency,"get_AllowTransparency");
   pragma Import(MSIL,get_AutoScale,"get_AutoScale");
   pragma Import(MSIL,get_AutoScaleBaseSize,"get_AutoScaleBaseSize");
   pragma Import(MSIL,get_AutoScroll,"get_AutoScroll");
   pragma Import(MSIL,get_AutoSize,"get_AutoSize");
   pragma Import(MSIL,get_AutoSizeMode,"get_AutoSizeMode");
   pragma Import(MSIL,get_AutoValidate,"get_AutoValidate");
   pragma Import(MSIL,get_BackColor,"get_BackColor");
   pragma Import(MSIL,get_CancelButton,"get_CancelButton");
   pragma Import(MSIL,get_ClientSize,"get_ClientSize");
   pragma Import(MSIL,get_ControlBox,"get_ControlBox");
   pragma Import(MSIL,get_DesktopBounds,"get_DesktopBounds");
   pragma Import(MSIL,get_DesktopLocation,"get_DesktopLocation");
   pragma Import(MSIL,get_DialogResult,"get_DialogResult");
   pragma Import(MSIL,get_FormBorderStyle,"get_FormBorderStyle");
   pragma Import(MSIL,get_HelpButton,"get_HelpButton");
   pragma Import(MSIL,get_Icon,"get_Icon");
   pragma Import(MSIL,get_IsMdiChild,"get_IsMdiChild");
   pragma Import(MSIL,get_IsMdiContainer,"get_IsMdiContainer");
   pragma Import(MSIL,get_IsRestrictedWindow,"get_IsRestrictedWindow");
   pragma Import(MSIL,get_KeyPreview,"get_KeyPreview");
   pragma Import(MSIL,get_Location,"get_Location");
   pragma Import(MSIL,get_MainMenuStrip,"get_MainMenuStrip");
   pragma Import(MSIL,get_Margin,"get_Margin");
   pragma Import(MSIL,get_MaximizeBox,"get_MaximizeBox");
   pragma Import(MSIL,get_MaximumSize,"get_MaximumSize");
   pragma Import(MSIL,get_MdiChildren,"get_MdiChildren");
   pragma Import(MSIL,get_MdiParent,"get_MdiParent");
   pragma Import(MSIL,get_Menu,"get_Menu");
   pragma Import(MSIL,get_MergedMenu,"get_MergedMenu");
   pragma Import(MSIL,get_MinimizeBox,"get_MinimizeBox");
   pragma Import(MSIL,get_MinimumSize,"get_MinimumSize");
   pragma Import(MSIL,get_Modal,"get_Modal");
   pragma Import(MSIL,get_Opacity,"get_Opacity");
   pragma Import(MSIL,get_OwnedForms,"get_OwnedForms");
   pragma Import(MSIL,get_Owner,"get_Owner");
   pragma Import(MSIL,get_RestoreBounds,"get_RestoreBounds");
   pragma Import(MSIL,get_RightToLeftLayout,"get_RightToLeftLayout");
   pragma Import(MSIL,get_ShowIcon,"get_ShowIcon");
   pragma Import(MSIL,get_ShowInTaskbar,"get_ShowInTaskbar");
   pragma Import(MSIL,get_Size,"get_Size");
   pragma Import(MSIL,get_SizeGripStyle,"get_SizeGripStyle");
   pragma Import(MSIL,get_StartPosition,"get_StartPosition");
   pragma Import(MSIL,get_TabIndex,"get_TabIndex");
   pragma Import(MSIL,get_TabStop,"get_TabStop");
   pragma Import(MSIL,get_Text,"get_Text");
   pragma Import(MSIL,get_TopLevel,"get_TopLevel");
   pragma Import(MSIL,get_TopMost,"get_TopMost");
   pragma Import(MSIL,get_TransparencyKey,"get_TransparencyKey");
   pragma Import(MSIL,get_WindowState,"get_WindowState");
   pragma Import(MSIL,GetAutoScaleSize,"GetAutoScaleSize");
   pragma Import(MSIL,LayoutMdi,"LayoutMdi");
   pragma Import(MSIL,remove_Activated,"remove_Activated");
   pragma Import(MSIL,remove_AutoSizeChanged,"remove_AutoSizeChanged");
   pragma Import(MSIL,remove_AutoValidateChanged,"remove_AutoValidateChanged");
   pragma Import(MSIL,remove_Closed,"remove_Closed");
   pragma Import(MSIL,remove_Closing,"remove_Closing");
   pragma Import(MSIL,remove_Deactivate,"remove_Deactivate");
   pragma Import(MSIL,remove_FormClosed,"remove_FormClosed");
   pragma Import(MSIL,remove_FormClosing,"remove_FormClosing");
   pragma Import(MSIL,remove_HelpButtonClicked,"remove_HelpButtonClicked");
   pragma Import(MSIL,remove_InputLanguageChanged,"remove_InputLanguageChanged");
   pragma Import(MSIL,remove_InputLanguageChanging,"remove_InputLanguageChanging");
   pragma Import(MSIL,remove_Load,"remove_Load");
   pragma Import(MSIL,remove_MarginChanged,"remove_MarginChanged");
   pragma Import(MSIL,remove_MaximizedBoundsChanged,"remove_MaximizedBoundsChanged");
   pragma Import(MSIL,remove_MaximumSizeChanged,"remove_MaximumSizeChanged");
   pragma Import(MSIL,remove_MdiChildActivate,"remove_MdiChildActivate");
   pragma Import(MSIL,remove_MenuComplete,"remove_MenuComplete");
   pragma Import(MSIL,remove_MenuStart,"remove_MenuStart");
   pragma Import(MSIL,remove_MinimumSizeChanged,"remove_MinimumSizeChanged");
   pragma Import(MSIL,remove_ResizeBegin,"remove_ResizeBegin");
   pragma Import(MSIL,remove_ResizeEnd,"remove_ResizeEnd");
   pragma Import(MSIL,remove_RightToLeftLayoutChanged,"remove_RightToLeftLayoutChanged");
   pragma Import(MSIL,remove_Shown,"remove_Shown");
   pragma Import(MSIL,remove_TabIndexChanged,"remove_TabIndexChanged");
   pragma Import(MSIL,remove_TabStopChanged,"remove_TabStopChanged");
   pragma Import(MSIL,RemoveOwnedForm,"RemoveOwnedForm");
   pragma Import(MSIL,set_AcceptButton,"set_AcceptButton");
   pragma Import(MSIL,set_AllowTransparency,"set_AllowTransparency");
   pragma Import(MSIL,set_AutoScale,"set_AutoScale");
   pragma Import(MSIL,set_AutoScaleBaseSize,"set_AutoScaleBaseSize");
   pragma Import(MSIL,set_AutoScroll,"set_AutoScroll");
   pragma Import(MSIL,set_AutoSize,"set_AutoSize");
   pragma Import(MSIL,set_AutoSizeMode,"set_AutoSizeMode");
   pragma Import(MSIL,set_AutoValidate,"set_AutoValidate");
   pragma Import(MSIL,set_BackColor,"set_BackColor");
   pragma Import(MSIL,set_CancelButton,"set_CancelButton");
   pragma Import(MSIL,set_ClientSize,"set_ClientSize");
   pragma Import(MSIL,set_ControlBox,"set_ControlBox");
   pragma Import(MSIL,set_DesktopBounds,"set_DesktopBounds");
   pragma Import(MSIL,set_DesktopLocation,"set_DesktopLocation");
   pragma Import(MSIL,set_DialogResult,"set_DialogResult");
   pragma Import(MSIL,set_FormBorderStyle,"set_FormBorderStyle");
   pragma Import(MSIL,set_HelpButton,"set_HelpButton");
   pragma Import(MSIL,set_Icon,"set_Icon");
   pragma Import(MSIL,set_IsMdiContainer,"set_IsMdiContainer");
   pragma Import(MSIL,set_KeyPreview,"set_KeyPreview");
   pragma Import(MSIL,set_Location,"set_Location");
   pragma Import(MSIL,set_MainMenuStrip,"set_MainMenuStrip");
   pragma Import(MSIL,set_Margin,"set_Margin");
   pragma Import(MSIL,set_MaximizeBox,"set_MaximizeBox");
   pragma Import(MSIL,set_MaximumSize,"set_MaximumSize");
   pragma Import(MSIL,set_MdiParent,"set_MdiParent");
   pragma Import(MSIL,set_Menu,"set_Menu");
   pragma Import(MSIL,set_MinimizeBox,"set_MinimizeBox");
   pragma Import(MSIL,set_MinimumSize,"set_MinimumSize");
   pragma Import(MSIL,set_Opacity,"set_Opacity");
   pragma Import(MSIL,set_Owner,"set_Owner");
   pragma Import(MSIL,set_RightToLeftLayout,"set_RightToLeftLayout");
   pragma Import(MSIL,set_ShowIcon,"set_ShowIcon");
   pragma Import(MSIL,set_ShowInTaskbar,"set_ShowInTaskbar");
   pragma Import(MSIL,set_Size,"set_Size");
   pragma Import(MSIL,set_SizeGripStyle,"set_SizeGripStyle");
   pragma Import(MSIL,set_StartPosition,"set_StartPosition");
   pragma Import(MSIL,set_TabIndex,"set_TabIndex");
   pragma Import(MSIL,set_TabStop,"set_TabStop");
   pragma Import(MSIL,set_Text,"set_Text");
   pragma Import(MSIL,set_TopLevel,"set_TopLevel");
   pragma Import(MSIL,set_TopMost,"set_TopMost");
   pragma Import(MSIL,set_TransparencyKey,"set_TransparencyKey");
   pragma Import(MSIL,set_WindowState,"set_WindowState");
   pragma Import(MSIL,SetDesktopBounds,"SetDesktopBounds");
   pragma Import(MSIL,SetDesktopLocation,"SetDesktopLocation");
   pragma Import(MSIL,Show,"Show");
   pragma Import(MSIL,ShowDialog,"ShowDialog");
   pragma Import(MSIL,ToString,"ToString");
   pragma Import(MSIL,ValidateChildren,"ValidateChildren");
end MSSyst.Windows.Forms.Form;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.Form,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.Form");
