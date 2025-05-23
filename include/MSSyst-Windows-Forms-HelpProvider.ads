-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ComponentModel.Component;
with MSSyst.ComponentModel.IComponent;
limited with MSSyst.ComponentModel.IContainer;
with MSSyst.ComponentModel.IExtenderProvider;
limited with MSSyst.ComponentModel.ISite;
limited with MSSyst.EventHandler;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
limited with MSSyst.Windows.Forms.Control;
limited with MSSyst.Windows.Forms.HelpNavigator;
package MSSyst.Windows.Forms.HelpProvider is
   type Typ is new MSSyst.ComponentModel.Component.Typ
         and MSSyst.ComponentModel.IComponent.Typ
         and MSSyst.IDisposable.Typ
         and MSSyst.ComponentModel.IExtenderProvider.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_HelpProvider(
      This : Ref := null) return Ref;
   function CanExtend(
      This : access Typ;
      target : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_HelpNamespace(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_Tag(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function GetHelpKeyword(
      This : access Typ;
      ctl : access MSSyst.Windows.Forms.Control.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetHelpNavigator(
      This : access Typ;
      ctl : access MSSyst.Windows.Forms.Control.Typ'Class) return MSSyst.Windows.Forms.HelpNavigator.Valuetype;
   function GetHelpString(
      This : access Typ;
      ctl : access MSSyst.Windows.Forms.Control.Typ'Class) return access MSSyst.String.Typ'Class;
   function GetShowHelp(
      This : access Typ;
      ctl : access MSSyst.Windows.Forms.Control.Typ'Class) return Standard.Boolean;
   procedure ResetShowHelp(
      This : access Typ;
      ctl : access MSSyst.Windows.Forms.Control.Typ'Class);
   procedure set_HelpNamespace(
      This : access Typ;
      value : access MSSyst.String.Typ'Class);
   procedure set_Tag(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class);
   procedure SetHelpKeyword(
      This : access Typ;
      ctl : access MSSyst.Windows.Forms.Control.Typ'Class;
      keyword : access MSSyst.String.Typ'Class);
   procedure SetHelpNavigator(
      This : access Typ;
      ctl : access MSSyst.Windows.Forms.Control.Typ'Class;
      navigator : MSSyst.Windows.Forms.HelpNavigator.Valuetype);
   procedure SetHelpString(
      This : access Typ;
      ctl : access MSSyst.Windows.Forms.Control.Typ'Class;
      helpString : access MSSyst.String.Typ'Class);
   procedure SetShowHelp(
      This : access Typ;
      ctl : access MSSyst.Windows.Forms.Control.Typ'Class;
      value : Standard.Boolean);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_HelpProvider);
   pragma Import(MSIL,CanExtend,"CanExtend");
   pragma Import(MSIL,get_HelpNamespace,"get_HelpNamespace");
   pragma Import(MSIL,get_Tag,"get_Tag");
   pragma Import(MSIL,GetHelpKeyword,"GetHelpKeyword");
   pragma Import(MSIL,GetHelpNavigator,"GetHelpNavigator");
   pragma Import(MSIL,GetHelpString,"GetHelpString");
   pragma Import(MSIL,GetShowHelp,"GetShowHelp");
   pragma Import(MSIL,ResetShowHelp,"ResetShowHelp");
   pragma Import(MSIL,set_HelpNamespace,"set_HelpNamespace");
   pragma Import(MSIL,set_Tag,"set_Tag");
   pragma Import(MSIL,SetHelpKeyword,"SetHelpKeyword");
   pragma Import(MSIL,SetHelpNavigator,"SetHelpNavigator");
   pragma Import(MSIL,SetHelpString,"SetHelpString");
   pragma Import(MSIL,SetShowHelp,"SetShowHelp");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.HelpProvider;
pragma Import(MSIL,MSSyst.Windows.Forms.HelpProvider,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.HelpProvider");
