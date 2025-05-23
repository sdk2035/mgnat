-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Drawing.PointF;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Drawing2D.PathData is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_PathData(
      This : Ref := null) return Ref;
   function get_Points(
      This : access Typ) return access MSSyst.Drawing.PointF.Valuetype_arr;
   function get_Types(
      This : access Typ) return MSIL_Types.unsigned_int8_Array;
   procedure set_Points(
      This : access Typ;
      value : access MSSyst.Drawing.PointF.Valuetype_arr);
   procedure set_Types(
      This : access Typ;
      value : MSIL_Types.unsigned_int8_Arr);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_PathData);
   pragma Import(MSIL,get_Points,"get_Points");
   pragma Import(MSIL,get_Types,"get_Types");
   pragma Import(MSIL,set_Points,"set_Points");
   pragma Import(MSIL,set_Types,"set_Types");
end MSSyst.Drawing.Drawing2D.PathData;
pragma Import(MSIL,MSSyst.Drawing.Drawing2D.PathData,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Drawing2D.PathData");
