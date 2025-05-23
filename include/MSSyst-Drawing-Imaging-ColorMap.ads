-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.Color;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Imaging.ColorMap is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ColorMap(
      This : Ref := null) return Ref;
   function get_NewColor(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   function get_OldColor(
      This : access Typ) return MSSyst.Drawing.Color.Valuetype;
   procedure set_NewColor(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
   procedure set_OldColor(
      This : access Typ;
      value : MSSyst.Drawing.Color.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ColorMap);
   pragma Import(MSIL,get_NewColor,"get_NewColor");
   pragma Import(MSIL,get_OldColor,"get_OldColor");
   pragma Import(MSIL,set_NewColor,"set_NewColor");
   pragma Import(MSIL,set_OldColor,"set_OldColor");
end MSSyst.Drawing.Imaging.ColorMap;
pragma Import(MSIL,MSSyst.Drawing.Imaging.ColorMap,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Imaging.ColorMap");
