-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Diagnostics.SymbolStore.SymAddressKind;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Diagnostics.SymbolStore.ISymbolVariable is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function get_AddressField1(
      This : access Typ) return Integer is abstract;
   function get_AddressField2(
      This : access Typ) return Integer is abstract;
   function get_AddressField3(
      This : access Typ) return Integer is abstract;
   function get_AddressKind(
      This : access Typ) return MSSyst.Diagnostics.SymbolStore.SymAddressKind.Valuetype is abstract;
   function get_Attributes(
      This : access Typ) return MSSyst.Object.Ref is abstract;
   function get_EndOffset(
      This : access Typ) return Integer is abstract;
   function get_Name(
      This : access Typ) return MSSyst.String.Ref is abstract;
   function get_StartOffset(
      This : access Typ) return Integer is abstract;
   function GetSignature(
      This : access Typ) return MSIL_Types.unsigned_int8_Array is abstract;
private
   pragma Import(MSIL,get_AddressField1,"get_AddressField1");
   pragma Import(MSIL,get_AddressField2,"get_AddressField2");
   pragma Import(MSIL,get_AddressField3,"get_AddressField3");
   pragma Import(MSIL,get_AddressKind,"get_AddressKind");
   pragma Import(MSIL,get_Attributes,"get_Attributes");
   pragma Import(MSIL,get_EndOffset,"get_EndOffset");
   pragma Import(MSIL,get_Name,"get_Name");
   pragma Import(MSIL,get_StartOffset,"get_StartOffset");
   pragma Import(MSIL,GetSignature,"GetSignature");
end MSSyst.Diagnostics.SymbolStore.ISymbolVariable;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Diagnostics.SymbolStore.ISymbolVariable,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Diagnostics.SymbolStore.ISymbolVariable");
