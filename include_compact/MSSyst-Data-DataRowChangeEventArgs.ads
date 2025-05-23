-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref is access;
with MSSyst.Data.DataRowAction;
with type MSSyst.Data.DataRow.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.EventArgs;
package MSSyst.Data.DataRowChangeEventArgs is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Arr1 is array(Natural range <>) of Ref;
   type Ref_Array is access all Arr1;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.EventArgs.Typ with record
      null;
   end record;
   function new_DataRowChangeEventArgs(
      This : Ref := null;
      row : MSSyst.Data.DataRow.Ref;
      action : MSSyst.Data.DataRowAction.Valuetype) return Ref;
   function get_Action(
      This : access Typ) return MSSyst.Data.DataRowAction.Valuetype;
   function get_Row(
      This : access Typ) return MSSyst.Data.DataRow.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_DataRowChangeEventArgs);
   pragma Import(MSIL,get_Action,"get_Action");
   pragma Import(MSIL,get_Row,"get_Row");
end MSSyst.Data.DataRowChangeEventArgs;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Data.DataRowChangeEventArgs,
   ".ver 1:0:5000:0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[System.Data]System.Data.DataRowChangeEventArgs");
