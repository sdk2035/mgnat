-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ComponentModel.Component;
with MSSyst.ComponentModel.IComponent;
with type MSSyst.Drawing.Printing.PrintEventHandler.Ref is access;
with type MSSyst.EventHandler.Ref is access;
with type MSSyst.Drawing.Printing.PrintPageEventHandler.Ref is access;
with type MSSyst.Drawing.Printing.QueryPageSettingsEventHandler.Ref is access;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.Drawing.Printing.PageSettings.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Drawing.Printing.PrintController.Ref is access;
with type MSSyst.Drawing.Printing.PrinterSettings.Ref is access;
with type MSSyst.ComponentModel.ISite.Ref is access;
package MSSyst.Drawing.Printing.PrintDocument is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.ComponentModel.Component.Typ
         and MSSyst.ComponentModel.IComponent.Typ
   with record
      null;
   end record;
   function new_PrintDocument(
      This : Ref := null) return Ref;
   procedure add_BeginPrint(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PrintEventHandler.Ref);
   procedure add_EndPrint(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PrintEventHandler.Ref);
   procedure add_PrintPage(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PrintPageEventHandler.Ref);
   procedure add_QueryPageSettings(
      This : access Typ;
      value : MSSyst.Drawing.Printing.QueryPageSettingsEventHandler.Ref);
   function get_DefaultPageSettings(
      This : access Typ) return MSSyst.Drawing.Printing.PageSettings.Ref;
   function get_DocumentName(
      This : access Typ) return MSSyst.String.Ref;
   function get_OriginAtMargins(
      This : access Typ) return Standard.Boolean;
   function get_PrintController(
      This : access Typ) return MSSyst.Drawing.Printing.PrintController.Ref;
   function get_PrinterSettings(
      This : access Typ) return MSSyst.Drawing.Printing.PrinterSettings.Ref;
   procedure Print(
      This : access Typ);
   procedure remove_BeginPrint(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PrintEventHandler.Ref);
   procedure remove_EndPrint(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PrintEventHandler.Ref);
   procedure remove_PrintPage(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PrintPageEventHandler.Ref);
   procedure remove_QueryPageSettings(
      This : access Typ;
      value : MSSyst.Drawing.Printing.QueryPageSettingsEventHandler.Ref);
   procedure set_DefaultPageSettings(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PageSettings.Ref);
   procedure set_DocumentName(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_OriginAtMargins(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_PrintController(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PrintController.Ref);
   procedure set_PrinterSettings(
      This : access Typ;
      value : MSSyst.Drawing.Printing.PrinterSettings.Ref);
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_PrintDocument);
   pragma Import(MSIL,add_BeginPrint,"add_BeginPrint");
   pragma Import(MSIL,add_EndPrint,"add_EndPrint");
   pragma Import(MSIL,add_PrintPage,"add_PrintPage");
   pragma Import(MSIL,add_QueryPageSettings,"add_QueryPageSettings");
   pragma Import(MSIL,get_DefaultPageSettings,"get_DefaultPageSettings");
   pragma Import(MSIL,get_DocumentName,"get_DocumentName");
   pragma Import(MSIL,get_OriginAtMargins,"get_OriginAtMargins");
   pragma Import(MSIL,get_PrintController,"get_PrintController");
   pragma Import(MSIL,get_PrinterSettings,"get_PrinterSettings");
   pragma Import(MSIL,Print,"Print");
   pragma Import(MSIL,remove_BeginPrint,"remove_BeginPrint");
   pragma Import(MSIL,remove_EndPrint,"remove_EndPrint");
   pragma Import(MSIL,remove_PrintPage,"remove_PrintPage");
   pragma Import(MSIL,remove_QueryPageSettings,"remove_QueryPageSettings");
   pragma Import(MSIL,set_DefaultPageSettings,"set_DefaultPageSettings");
   pragma Import(MSIL,set_DocumentName,"set_DocumentName");
   pragma Import(MSIL,set_OriginAtMargins,"set_OriginAtMargins");
   pragma Import(MSIL,set_PrintController,"set_PrintController");
   pragma Import(MSIL,set_PrinterSettings,"set_PrinterSettings");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Drawing.Printing.PrintDocument;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Drawing.Printing.PrintDocument,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Printing.PrintDocument");
