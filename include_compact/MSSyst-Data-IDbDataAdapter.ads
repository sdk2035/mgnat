-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Data.IDataAdapter.Ref is access;
with type MSSyst.Data.IDbCommand.Ref is access;
package MSSyst.Data.IDbDataAdapter is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Arr1 is array(Natural range <>) of Ref;
   type Ref_Array is access all Arr1;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ (Self : access MSSyst.Object.Typ'Class)
      is abstract new MSSyst.Object.Typ with null record;
   pragma MSIL_Interface(Typ);
   function get_DeleteCommand(
      This : access Typ) return MSSyst.Data.IDbCommand.Ref;
   function get_InsertCommand(
      This : access Typ) return MSSyst.Data.IDbCommand.Ref;
   function get_SelectCommand(
      This : access Typ) return MSSyst.Data.IDbCommand.Ref;
   function get_UpdateCommand(
      This : access Typ) return MSSyst.Data.IDbCommand.Ref;
   procedure set_DeleteCommand(
      This : access Typ;
      value : MSSyst.Data.IDbCommand.Ref);
   procedure set_InsertCommand(
      This : access Typ;
      value : MSSyst.Data.IDbCommand.Ref);
   procedure set_SelectCommand(
      This : access Typ;
      value : MSSyst.Data.IDbCommand.Ref);
   procedure set_UpdateCommand(
      This : access Typ;
      value : MSSyst.Data.IDbCommand.Ref);
private
   pragma Import(MSIL,get_DeleteCommand,"get_DeleteCommand");
   pragma Import(MSIL,get_InsertCommand,"get_InsertCommand");
   pragma Import(MSIL,get_SelectCommand,"get_SelectCommand");
   pragma Import(MSIL,get_UpdateCommand,"get_UpdateCommand");
   pragma Import(MSIL,set_DeleteCommand,"set_DeleteCommand");
   pragma Import(MSIL,set_InsertCommand,"set_InsertCommand");
   pragma Import(MSIL,set_SelectCommand,"set_SelectCommand");
   pragma Import(MSIL,set_UpdateCommand,"set_UpdateCommand");
end MSSyst.Data.IDbDataAdapter;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Data.IDbDataAdapter,
   ".ver 1:0:5000:0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[System.Data]System.Data.IDbDataAdapter");
