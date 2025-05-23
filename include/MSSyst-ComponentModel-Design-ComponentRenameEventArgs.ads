-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.ComponentModel.Design.ComponentRenameEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ComponentRenameEventArgs(
      This : Ref := null;
      component : access MSSyst.Object.Typ'Class;
      oldName : access MSSyst.String.Typ'Class;
      newName : access MSSyst.String.Typ'Class) return Ref;
   function get_Component(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function get_NewName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_OldName(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ComponentRenameEventArgs);
   pragma Import(MSIL,get_Component,"get_Component");
   pragma Import(MSIL,get_NewName,"get_NewName");
   pragma Import(MSIL,get_OldName,"get_OldName");
end MSSyst.ComponentModel.Design.ComponentRenameEventArgs;
pragma Import(MSIL,MSSyst.ComponentModel.Design.ComponentRenameEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.ComponentRenameEventArgs");
