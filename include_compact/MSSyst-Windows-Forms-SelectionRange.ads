-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.DateTime.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.SelectionRange is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function new_SelectionRange(
      This : Ref := null) return Ref;
   function new_SelectionRange(
      This : Ref := null;
      lower : MSSyst.DateTime.Valuetype;
      upper : MSSyst.DateTime.Valuetype) return Ref;
   function new_SelectionRange(
      This : Ref := null;
      range_k : MSSyst.Windows.Forms.SelectionRange.Ref) return Ref;
   function get_End(
      This : access Typ) return MSSyst.DateTime.Valuetype;
   function get_Start(
      This : access Typ) return MSSyst.DateTime.Valuetype;
   procedure set_End(
      This : access Typ;
      value : MSSyst.DateTime.Valuetype);
   procedure set_Start(
      This : access Typ;
      value : MSSyst.DateTime.Valuetype);
   function ToString(
      This : access Typ) return MSSyst.String.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SelectionRange);
   pragma Import(MSIL,get_End,"get_End");
   pragma Import(MSIL,get_Start,"get_Start");
   pragma Import(MSIL,set_End,"set_End");
   pragma Import(MSIL,set_Start,"set_Start");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.SelectionRange;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.SelectionRange,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.SelectionRange");
