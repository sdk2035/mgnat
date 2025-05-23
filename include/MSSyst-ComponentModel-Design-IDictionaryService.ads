-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
package MSSyst.ComponentModel.Design.IDictionaryService is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function GetKey(
      This : access Typ;
      value : access MSSyst.Object.Typ'Class) return access MSSyst.Object.Typ'Class is abstract;
   function GetValue(
      This : access Typ;
      key : access MSSyst.Object.Typ'Class) return access MSSyst.Object.Typ'Class is abstract;
   procedure SetValue(
      This : access Typ;
      key : access MSSyst.Object.Typ'Class;
      value : access MSSyst.Object.Typ'Class) is abstract;
private
   pragma Import(MSIL,GetKey,"GetKey");
   pragma Import(MSIL,GetValue,"GetValue");
   pragma Import(MSIL,SetValue,"SetValue");
end MSSyst.ComponentModel.Design.IDictionaryService;
pragma Import(MSIL,MSSyst.ComponentModel.Design.IDictionaryService,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.IDictionaryService");
