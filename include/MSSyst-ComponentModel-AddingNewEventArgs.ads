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
package MSSyst.ComponentModel.AddingNewEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_AddingNewEventArgs(
      This : Ref := null) return Ref;
   function new_AddingNewEventArgs(
      This : Ref := null;
      newObject : access MSSyst.Object.Typ'Class) return Ref;
   function get_NewObject(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   procedure set_NewObject(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_AddingNewEventArgs);
   pragma Import(MSIL,get_NewObject,"get_NewObject");
   pragma Import(MSIL,set_NewObject,"set_NewObject");
end MSSyst.ComponentModel.AddingNewEventArgs;
pragma Import(MSIL,MSSyst.ComponentModel.AddingNewEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.AddingNewEventArgs");
