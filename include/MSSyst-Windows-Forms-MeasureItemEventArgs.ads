-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Graphics;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Windows.Forms.MeasureItemEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_MeasureItemEventArgs(
      This : Ref := null;
      graphics : access MSSyst.Drawing.Graphics.Typ'Class;
      index : Integer;
      itemHeight : Integer) return Ref;
   function new_MeasureItemEventArgs(
      This : Ref := null;
      graphics : access MSSyst.Drawing.Graphics.Typ'Class;
      index : Integer) return Ref;
   function get_Graphics(
      This : access Typ) return access MSSyst.Drawing.Graphics.Typ'Class;
   function get_Index(
      This : access Typ) return Integer;
   function get_ItemHeight(
      This : access Typ) return Integer;
   function get_ItemWidth(
      This : access Typ) return Integer;
   procedure set_ItemHeight(
      This : access Typ;
      value : Integer);
   procedure set_ItemWidth(
      This : access Typ;
      value : Integer);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_MeasureItemEventArgs);
   pragma Import(MSIL,get_Graphics,"get_Graphics");
   pragma Import(MSIL,get_Index,"get_Index");
   pragma Import(MSIL,get_ItemHeight,"get_ItemHeight");
   pragma Import(MSIL,get_ItemWidth,"get_ItemWidth");
   pragma Import(MSIL,set_ItemHeight,"set_ItemHeight");
   pragma Import(MSIL,set_ItemWidth,"set_ItemWidth");
end MSSyst.Windows.Forms.MeasureItemEventArgs;
pragma Import(MSIL,MSSyst.Windows.Forms.MeasureItemEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.MeasureItemEventArgs");
