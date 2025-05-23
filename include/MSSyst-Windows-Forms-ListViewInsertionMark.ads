-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Color;
limited with MSSyst.Drawing.Point;
limited with MSSyst.Drawing.Rectangle;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Windows.Forms.ListViewInsertionMark is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_AppearsAfterItem(
      This : access Typ) return Standard.Boolean;
   function get_Bounds(
      This : access Typ) return MSSyst.Drawing.Rectangle.Valuetype;
   function get_Color(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_Index(
      This : access Typ) return Integer;
   function NearestIndex(
      This : access Typ;
      pt : MSSyst.Drawing.Point.Valuetype) return Integer;
   procedure set_AppearsAfterItem(
      This : access Typ;
      value : Standard.Boolean);
   procedure set_Color(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_Index(
      This : access Typ;
      value : Integer);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_AppearsAfterItem,"get_AppearsAfterItem");
   pragma Import(MSIL,get_Bounds,"get_Bounds");
   pragma Import(MSIL,get_Color,"get_Color");
   pragma Import(MSIL,get_Index,"get_Index");
   pragma Import(MSIL,NearestIndex,"NearestIndex");
   pragma Import(MSIL,set_AppearsAfterItem,"set_AppearsAfterItem");
   pragma Import(MSIL,set_Color,"set_Color");
   pragma Import(MSIL,set_Index,"set_Index");
end MSSyst.Windows.Forms.ListViewInsertionMark;
pragma Import(MSIL,MSSyst.Windows.Forms.ListViewInsertionMark,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ListViewInsertionMark");
