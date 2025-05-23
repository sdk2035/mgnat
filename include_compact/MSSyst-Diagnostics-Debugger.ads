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
with type MSSyst.String.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Diagnostics.Debugger is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   DefaultCategory : MSSyst.String.Ref;
   pragma Import(MSIL,DefaultCategory,"DefaultCategory");
   function new_Debugger(
      This : Ref := null) return Ref;
   procedure Break;
   function get_IsAttached return Standard.Boolean;
   function IsLogging return Standard.Boolean;
   function Launch return Standard.Boolean;
   procedure Log(
      level : Integer;
      category : MSSyst.String.Ref;
      message : MSSyst.String.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_Debugger);
   pragma Import(MSIL,Break,"Break");
   pragma Import(MSIL,get_IsAttached,"get_IsAttached");
   pragma Import(MSIL,IsLogging,"IsLogging");
   pragma Import(MSIL,Launch,"Launch");
   pragma Import(MSIL,Log,"Log");
end MSSyst.Diagnostics.Debugger;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Diagnostics.Debugger,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Diagnostics.Debugger");
