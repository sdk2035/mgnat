-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Graphics;
limited with MSSyst.Drawing.Printing.PrintDocument;
limited with MSSyst.Drawing.Printing.PrintEventArgs;
limited with MSSyst.Drawing.Printing.PrintPageEventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Printing.PrintController is
   type Typ is abstract new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_IsPreview(
      This : access Typ) return Standard.Boolean;
   procedure OnEndPage(
      This : access Typ;
      document : access MSSyst.Drawing.Printing.PrintDocument.Typ'Class;
      e : access MSSyst.Drawing.Printing.PrintPageEventArgs.Typ'Class);
   procedure OnEndPrint(
      This : access Typ;
      document : access MSSyst.Drawing.Printing.PrintDocument.Typ'Class;
      e : access MSSyst.Drawing.Printing.PrintEventArgs.Typ'Class);
   function OnStartPage(
      This : access Typ;
      document : access MSSyst.Drawing.Printing.PrintDocument.Typ'Class;
      e : access MSSyst.Drawing.Printing.PrintPageEventArgs.Typ'Class) return access MSSyst.Drawing.Graphics.Typ'Class;
   procedure OnStartPrint(
      This : access Typ;
      document : access MSSyst.Drawing.Printing.PrintDocument.Typ'Class;
      e : access MSSyst.Drawing.Printing.PrintEventArgs.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_IsPreview,"get_IsPreview");
   pragma Import(MSIL,OnEndPage,"OnEndPage");
   pragma Import(MSIL,OnEndPrint,"OnEndPrint");
   pragma Import(MSIL,OnStartPage,"OnStartPage");
   pragma Import(MSIL,OnStartPrint,"OnStartPrint");
end MSSyst.Drawing.Printing.PrintController;
pragma Import(MSIL,MSSyst.Drawing.Printing.PrintController,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Printing.PrintController");
