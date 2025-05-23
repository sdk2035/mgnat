-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.String.Ref is access;
package MSSyst.Data.IColumnMapping is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Arr1 is array(Natural range <>) of Ref;
   type Ref_Array is access all Arr1;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ (Self : access MSSyst.Object.Typ'Class)
      is abstract new MSSyst.Object.Typ with null record;
   pragma MSIL_Interface(Typ);
   function get_DataSetColumn(
      This : access Typ) return MSSyst.String.Ref;
   function get_SourceColumn(
      This : access Typ) return MSSyst.String.Ref;
   procedure set_DataSetColumn(
      This : access Typ;
      value : MSSyst.String.Ref);
   procedure set_SourceColumn(
      This : access Typ;
      value : MSSyst.String.Ref);
private
   pragma Import(MSIL,get_DataSetColumn,"get_DataSetColumn");
   pragma Import(MSIL,get_SourceColumn,"get_SourceColumn");
   pragma Import(MSIL,set_DataSetColumn,"set_DataSetColumn");
   pragma Import(MSIL,set_SourceColumn,"set_SourceColumn");
end MSSyst.Data.IColumnMapping;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Data.IColumnMapping,
   ".ver 1:0:5000:0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[System.Data]System.Data.IColumnMapping");
