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
limited with MSSyst.EventHandler;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.Windows.Forms.CommonDialog;
limited with MSSyst.Windows.Forms.DialogResult;
limited with MSSyst.Windows.Forms.IWin32Window;
package MSSyst.Windows.Forms.FileDialog is
   type Typ is abstract new MSSyst.Windows.Forms.CommonDialog.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure add_FileOk(
      This : access Typ;
      value : access MSSyst.ComponentModel.CancelEventHandler.Typ'Class);
   function get_AddExtension(
      This : access Typ) return Standard.Boolean;
   function get_CheckFileExists(
      This : access Typ) return Standard.Boolean;
   function get_CheckPathExists(
      This : access Typ) return Standard.Boolean;
   function get_DefaultExt(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_DereferenceLinks(
      This : access Typ) return Standard.Boolean;
   function get_FileName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_FileNames(
      This : access Typ) return access MSSyst.String.Ref_arr;
   function get_Filter(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_FilterIndex(
      This : access Typ) return Integer;
   function get_InitialDirectory(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_RestoreDirectory(
      This : access Typ) return Standard.Boolean;
   function get_ShowHelp(
      This : access Typ) return Standard.Boolean;
   function get_SupportMultiDottedExtensions(
      This : access Typ) return Standard.Boolean;
   function get_Title(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ValidateNames(
      This : access Typ) return Standard.Boolean;
   procedure remove_FileOk(
      This : access Typ;
      value : access MSSyst.ComponentModel.CancelEventHandler.Typ'Class);
   procedure Reset(
      This : access Typ);
   procedure set_AddExtension(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_CheckFileExists(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_CheckPathExists(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_DefaultExt(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_DereferenceLinks(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_FileName(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_Filter(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_FilterIndex(
      This : access Typ;
      value : Integer);
   procedure set_InitialDirectory(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_RestoreDirectory(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ShowHelp(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_SupportMultiDottedExtensions(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Title(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_ValidateNames(
      This : access Typ;
      value : Standard.Boolean);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,add_FileOk,"add_FileOk");
   pragma Import(MSIL,get_AddExtension,"get_AddExtension");
   pragma Import(MSIL,get_CheckFileExists,"get_CheckFileExists");
   pragma Import(MSIL,get_CheckPathExists,"get_CheckPathExists");
   pragma Import(MSIL,get_DefaultExt,"get_DefaultExt");
   pragma Import(MSIL,get_DereferenceLinks,"get_DereferenceLinks");
   pragma Import(MSIL,get_FileName,"get_FileName");
   pragma Import(MSIL,get_FileNames,"get_FileNames");
   pragma Import(MSIL,get_Filter,"get_Filter");
   pragma Import(MSIL,get_FilterIndex,"get_FilterIndex");
   pragma Import(MSIL,get_InitialDirectory,"get_InitialDirectory");
   pragma Import(MSIL,get_RestoreDirectory,"get_RestoreDirectory");
   pragma Import(MSIL,get_ShowHelp,"get_ShowHelp");
   pragma Import(MSIL,get_SupportMultiDottedExtensions,"get_SupportMultiDottedExtensions");
   pragma Import(MSIL,get_Title,"get_Title");
   pragma Import(MSIL,get_ValidateNames,"get_ValidateNames");
   pragma Import(MSIL,remove_FileOk,"remove_FileOk");
   pragma Import(MSIL,Reset,"Reset");
   pragma Import(MSIL,set_AddExtension,"set_AddExtension");
   pragma Import(MSIL,set_CheckFileExists,"set_CheckFileExists");
   pragma Import(MSIL,set_CheckPathExists,"set_CheckPathExists");
   pragma Import(MSIL,set_DefaultExt,"set_DefaultExt");
   pragma Import(MSIL,set_DereferenceLinks,"set_DereferenceLinks");
   pragma Import(MSIL,set_FileName,"set_FileName");
   pragma Import(MSIL,set_Filter,"set_Filter");
   pragma Import(MSIL,set_FilterIndex,"set_FilterIndex");
   pragma Import(MSIL,set_InitialDirectory,"set_InitialDirectory");
   pragma Import(MSIL,set_RestoreDirectory,"set_RestoreDirectory");
   pragma Import(MSIL,set_ShowHelp,"set_ShowHelp");
   pragma Import(MSIL,set_SupportMultiDottedExtensions,"set_SupportMultiDottedExtensions");
   pragma Import(MSIL,set_Title,"set_Title");
   pragma Import(MSIL,set_ValidateNames,"set_ValidateNames");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.FileDialog;
pragma Import(MSIL,MSSyst.Windows.Forms.FileDialog,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.FileDialog");
