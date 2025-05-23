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
with type MSSyst.ComponentModel.Design.IDesignerHost.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.ComponentModel.Design.ActiveDesignerEventArgs is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   function new_ActiveDesignerEventArgs(
      This : Ref := null;
      oldDesigner : MSSyst.ComponentModel.Design.IDesignerHost.Ref;
      newDesigner : MSSyst.ComponentModel.Design.IDesignerHost.Ref) return Ref;
   function get_NewDesigner(
      This : access Typ) return MSSyst.ComponentModel.Design.IDesignerHost.Ref;
   function get_OldDesigner(
      This : access Typ) return MSSyst.ComponentModel.Design.IDesignerHost.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ActiveDesignerEventArgs);
   pragma Import(MSIL,get_NewDesigner,"get_NewDesigner");
   pragma Import(MSIL,get_OldDesigner,"get_OldDesigner");
end MSSyst.ComponentModel.Design.ActiveDesignerEventArgs;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.Design.ActiveDesignerEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.ActiveDesignerEventArgs");
