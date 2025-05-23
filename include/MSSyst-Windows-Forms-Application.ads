-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with Microsoft.Win32.RegistryKey;
limited with MSSyst.ComponentModel.CancelEventArgs;
limited with MSSyst.EventArgs;
limited with MSSyst.EventHandler;
limited with MSSyst.Exception_k;
limited with MSSyst.Globalization.CultureInfo;
limited with MSSyst.String;
limited with MSSyst.Threading.ApartmentState;
limited with MSSyst.Threading.ThreadExceptionEventHandler;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.Application.MessageLoopCallback;
limited with MSSyst.Windows.Forms.ApplicationContext;
limited with MSSyst.Windows.Forms.FormCollection;
limited with MSSyst.Windows.Forms.Form;
limited with MSSyst.Windows.Forms.IMessageFilter;
limited with MSSyst.Windows.Forms.InputLanguage;
with MSSyst.Windows.Forms.Message;
limited with MSSyst.Windows.Forms.PowerState;
limited with MSSyst.Windows.Forms.UnhandledExceptionMode;
limited with MSSyst.Windows.Forms.VisualStyles.VisualStyleState;
package MSSyst.Windows.Forms.Application is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure add_ApplicationExit(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_EnterThreadModal(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_Idle(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_LeaveThreadModal(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure add_ThreadException(
      value : access MSSyst.Threading.ThreadExceptionEventHandler.Typ'Class);
   procedure add_ThreadExit(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure AddMessageFilter(
      value : access MSSyst.Windows.Forms.IMessageFilter.Typ'Class);
   procedure DoEvents;
   procedure EnableVisualStyles;
   procedure Exit_k(
      e : access MSSyst.ComponentModel.CancelEventArgs.Typ'Class);
   procedure Exit_k;
   procedure ExitThread;
   function FilterMessage(
      message : access MSSyst.Windows.Forms.Message.Valuetype) return Standard.Boolean;
   function get_AllowQuit return Standard.Boolean;
   function get_CommonAppDataPath return access MSSyst.String.Typ'Class;
   function get_CommonAppDataRegistry return access Microsoft.Win32.RegistryKey.Typ'Class;
   function get_CompanyName return access MSSyst.String.Typ'Class;
   function get_CurrentCulture return access MSSyst.Globalization.CultureInfo.Typ'Class;
   function get_CurrentInputLanguage return access MSSyst.Windows.Forms.InputLanguage.Typ'Class;
   function get_ExecutablePath return access MSSyst.String.Typ'Class;
   function get_LocalUserAppDataPath return access MSSyst.String.Typ'Class;
   function get_MessageLoop return Standard.Boolean;
   function get_OpenForms return access MSSyst.Windows.Forms.FormCollection.Typ'Class;
   function get_ProductName return access MSSyst.String.Typ'Class;
   function get_ProductVersion return access MSSyst.String.Typ'Class;
   function get_RenderWithVisualStyles return Standard.Boolean;
   function get_SafeTopLevelCaptionFormat return access MSSyst.String.Typ'Class;
   function get_StartupPath return access MSSyst.String.Typ'Class;
   function get_UserAppDataPath return access MSSyst.String.Typ'Class;
   function get_UserAppDataRegistry return access Microsoft.Win32.RegistryKey.Typ'Class;
   function get_UseWaitCursor return Standard.Boolean;
   function get_VisualStyleState return MSSyst.Windows.Forms.VisualStyles.VisualStyleState.Valuetype;
   function OleRequired return MSSyst.Threading.ApartmentState.Valuetype;
   procedure OnThreadException(
      t : access MSSyst.Exception_k.Typ'Class);
   procedure RaiseIdle(
      e : access MSSyst.EventArgs.Typ'Class);
   procedure RegisterMessageLoop(
      callback : access MSSyst.Windows.Forms.Application.MessageLoopCallback.Typ'Class);
   procedure remove_ApplicationExit(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_EnterThreadModal(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_Idle(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_LeaveThreadModal(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure remove_ThreadException(
      value : access MSSyst.Threading.ThreadExceptionEventHandler.Typ'Class);
   procedure remove_ThreadExit(
      value : access MSSyst.EventHandler.Typ'Class);
   procedure RemoveMessageFilter(
      value : access MSSyst.Windows.Forms.IMessageFilter.Typ'Class);
   procedure Restart;
   procedure Run;
   procedure Run(
      mainForm : access MSSyst.Windows.Forms.Form.Typ'Class);
   procedure Run(
      context : access MSSyst.Windows.Forms.ApplicationContext.Typ'Class);
   procedure set_CurrentCulture(
      value : access MSSyst.Globalization.CultureInfo.Typ'Class);
   procedure set_CurrentInputLanguage(
      value : access MSSyst.Windows.Forms.InputLanguage.Typ'Class);
   procedure set_SafeTopLevelCaptionFormat(
      value : access MSSyst.String.Typ'Class);
   procedure set_UseWaitCursor(
      value : Standard.Boolean);
   procedure set_VisualStyleState(
      value : MSSyst.Windows.Forms.VisualStyles.VisualStyleState.Valuetype);
   procedure SetCompatibleTextRenderingDefault(
      defaultValue : Standard.Boolean);
   function SetSuspendState(
      state : MSSyst.Windows.Forms.PowerState.Valuetype;
      force : Standard.Boolean;
      disableWakeEvent : Standard.Boolean) return Standard.Boolean;
   procedure SetUnhandledExceptionMode(
      mode : MSSyst.Windows.Forms.UnhandledExceptionMode.Valuetype;
      threadScope : Standard.Boolean);
   procedure SetUnhandledExceptionMode(
      mode : MSSyst.Windows.Forms.UnhandledExceptionMode.Valuetype);
   procedure UnregisterMessageLoop;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,add_ApplicationExit,"add_ApplicationExit");
   pragma Import(MSIL,add_EnterThreadModal,"add_EnterThreadModal");
   pragma Import(MSIL,add_Idle,"add_Idle");
   pragma Import(MSIL,add_LeaveThreadModal,"add_LeaveThreadModal");
   pragma Import(MSIL,add_ThreadException,"add_ThreadException");
   pragma Import(MSIL,add_ThreadExit,"add_ThreadExit");
   pragma Import(MSIL,AddMessageFilter,"AddMessageFilter");
   pragma Import(MSIL,DoEvents,"DoEvents");
   pragma Import(MSIL,EnableVisualStyles,"EnableVisualStyles");
   pragma Import(MSIL,Exit_k,"Exit");
   pragma Import(MSIL,ExitThread,"ExitThread");
   pragma Import(MSIL,FilterMessage,"FilterMessage");
   pragma Import(MSIL,get_AllowQuit,"get_AllowQuit");
   pragma Import(MSIL,get_CommonAppDataPath,"get_CommonAppDataPath");
   pragma Import(MSIL,get_CommonAppDataRegistry,"get_CommonAppDataRegistry");
   pragma Import(MSIL,get_CompanyName,"get_CompanyName");
   pragma Import(MSIL,get_CurrentCulture,"get_CurrentCulture");
   pragma Import(MSIL,get_CurrentInputLanguage,"get_CurrentInputLanguage");
   pragma Import(MSIL,get_ExecutablePath,"get_ExecutablePath");
   pragma Import(MSIL,get_LocalUserAppDataPath,"get_LocalUserAppDataPath");
   pragma Import(MSIL,get_MessageLoop,"get_MessageLoop");
   pragma Import(MSIL,get_OpenForms,"get_OpenForms");
   pragma Import(MSIL,get_ProductName,"get_ProductName");
   pragma Import(MSIL,get_ProductVersion,"get_ProductVersion");
   pragma Import(MSIL,get_RenderWithVisualStyles,"get_RenderWithVisualStyles");
   pragma Import(MSIL,get_SafeTopLevelCaptionFormat,"get_SafeTopLevelCaptionFormat");
   pragma Import(MSIL,get_StartupPath,"get_StartupPath");
   pragma Import(MSIL,get_UserAppDataPath,"get_UserAppDataPath");
   pragma Import(MSIL,get_UserAppDataRegistry,"get_UserAppDataRegistry");
   pragma Import(MSIL,get_UseWaitCursor,"get_UseWaitCursor");
   pragma Import(MSIL,get_VisualStyleState,"get_VisualStyleState");
   pragma Import(MSIL,OleRequired,"OleRequired");
   pragma Import(MSIL,OnThreadException,"OnThreadException");
   pragma Import(MSIL,RaiseIdle,"RaiseIdle");
   pragma Import(MSIL,RegisterMessageLoop,"RegisterMessageLoop");
   pragma Import(MSIL,remove_ApplicationExit,"remove_ApplicationExit");
   pragma Import(MSIL,remove_EnterThreadModal,"remove_EnterThreadModal");
   pragma Import(MSIL,remove_Idle,"remove_Idle");
   pragma Import(MSIL,remove_LeaveThreadModal,"remove_LeaveThreadModal");
   pragma Import(MSIL,remove_ThreadException,"remove_ThreadException");
   pragma Import(MSIL,remove_ThreadExit,"remove_ThreadExit");
   pragma Import(MSIL,RemoveMessageFilter,"RemoveMessageFilter");
   pragma Import(MSIL,Restart,"Restart");
   pragma Import(MSIL,Run,"Run");
   pragma Import(MSIL,set_CurrentCulture,"set_CurrentCulture");
   pragma Import(MSIL,set_CurrentInputLanguage,"set_CurrentInputLanguage");
   pragma Import(MSIL,set_SafeTopLevelCaptionFormat,"set_SafeTopLevelCaptionFormat");
   pragma Import(MSIL,set_UseWaitCursor,"set_UseWaitCursor");
   pragma Import(MSIL,set_VisualStyleState,"set_VisualStyleState");
   pragma Import(MSIL,SetCompatibleTextRenderingDefault,"SetCompatibleTextRenderingDefault");
   pragma Import(MSIL,SetSuspendState,"SetSuspendState");
   pragma Import(MSIL,SetUnhandledExceptionMode,"SetUnhandledExceptionMode");
   pragma Import(MSIL,UnregisterMessageLoop,"UnregisterMessageLoop");
end MSSyst.Windows.Forms.Application;
pragma Import(MSIL,MSSyst.Windows.Forms.Application,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.Application");
