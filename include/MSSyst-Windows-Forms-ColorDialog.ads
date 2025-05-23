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
limited with MSSyst.ComponentModel.ISite;
limited with MSSyst.Drawing.Color;
limited with MSSyst.EventHandler;
with MSSyst.IDisposable;
with MSSyst.MarshalByRefObject;
limited with MSSyst.Runtime.Remoting.ObjRef;
limited with MSSyst.String;
limited with MSSyst.Type_k;
with MSSyst.Windows.Forms.CommonDialog;
limited with MSSyst.Windows.Forms.DialogResult;
limited with MSSyst.Windows.Forms.IWin32Window;
package MSSyst.Windows.Forms.ColorDialog is
   type Typ is new MSSyst.Windows.Forms.CommonDialog.Typ
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
   function new_ColorDialog(
      This : Ref := null) return Ref;
   function get_AllowFullOpen(
      This : access Typ) return Standard.Boolean;
   function get_AnyColor(
      This : access Typ) return Standard.Boolean;
   function get_Color(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_CustomColors(
      This : access Typ) return MSIL_Types.Int32_Array;
   function get_FullOpen(
      This : access Typ) return Standard.Boolean;
   function get_ShowHelp(
      This : access Typ) return Standard.Boolean;
   function get_SolidColorOnly(
      This : access Typ) return Standard.Boolean;
   procedure Reset(
      This : access Typ);
   procedure set_AllowFullOpen(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_AnyColor(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Color(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_CustomColors(
      This : access Typ;
      value : MSIL_Types.Int32_Arr);
   procedure set_FullOpen(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_ShowHelp(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_SolidColorOnly(
      This : access Typ;
      value : Standard.Boolean);
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ColorDialog);
   pragma Import(MSIL,get_AllowFullOpen,"get_AllowFullOpen");
   pragma Import(MSIL,get_AnyColor,"get_AnyColor");
   pragma Import(MSIL,get_Color,"get_Color");
   pragma Import(MSIL,get_CustomColors,"get_CustomColors");
   pragma Import(MSIL,get_FullOpen,"get_FullOpen");
   pragma Import(MSIL,get_ShowHelp,"get_ShowHelp");
   pragma Import(MSIL,get_SolidColorOnly,"get_SolidColorOnly");
   pragma Import(MSIL,Reset,"Reset");
   pragma Import(MSIL,set_AllowFullOpen,"set_AllowFullOpen");
   pragma Import(MSIL,set_AnyColor,"set_AnyColor");
   pragma Import(MSIL,set_Color,"set_Color");
   pragma Import(MSIL,set_CustomColors,"set_CustomColors");
   pragma Import(MSIL,set_FullOpen,"set_FullOpen");
   pragma Import(MSIL,set_ShowHelp,"set_ShowHelp");
   pragma Import(MSIL,set_SolidColorOnly,"set_SolidColorOnly");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.ColorDialog;
pragma Import(MSIL,MSSyst.Windows.Forms.ColorDialog,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ColorDialog");
