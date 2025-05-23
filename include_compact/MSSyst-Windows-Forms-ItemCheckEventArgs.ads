-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.EventArgs;
with type MSSyst.Object.Ref is access;
with MSSyst.Windows.Forms.CheckState;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.ItemCheckEventArgs is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   function new_ItemCheckEventArgs(
      This : Ref := null;
      index : Integer;
      newCheckValue : MSSyst.Windows.Forms.CheckState.Valuetype;
      currentValue : MSSyst.Windows.Forms.CheckState.Valuetype) return Ref;
   function get_CurrentValue(
      This : access Typ) return MSSyst.Windows.Forms.CheckState.Valuetype;
   function get_Index(
      This : access Typ) return Integer;
   function get_NewValue(
      This : access Typ) return MSSyst.Windows.Forms.CheckState.Valuetype;
   procedure set_NewValue(
      This : access Typ;
      value : MSSyst.Windows.Forms.CheckState.Valuetype);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ItemCheckEventArgs);
   pragma Import(MSIL,get_CurrentValue,"get_CurrentValue");
   pragma Import(MSIL,get_Index,"get_Index");
   pragma Import(MSIL,get_NewValue,"get_NewValue");
   pragma Import(MSIL,set_NewValue,"set_NewValue");
end MSSyst.Windows.Forms.ItemCheckEventArgs;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.ItemCheckEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.ItemCheckEventArgs");
