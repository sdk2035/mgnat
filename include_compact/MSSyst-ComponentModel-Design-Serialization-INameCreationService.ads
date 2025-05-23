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
with type MSSyst.ComponentModel.IContainer.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.ComponentModel.Design.Serialization.INameCreationService is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function CreateName(
      This : access Typ;
      container : MSSyst.ComponentModel.IContainer.Ref;
      dataType : MSSyst.Type_k.Ref) return MSSyst.String.Ref is abstract;
   function IsValidName(
      This : access Typ;
      name : MSSyst.String.Ref) return Standard.Boolean is abstract;
   procedure ValidateName(
      This : access Typ;
      name : MSSyst.String.Ref) is abstract;
private
   pragma Import(MSIL,CreateName,"CreateName");
   pragma Import(MSIL,IsValidName,"IsValidName");
   pragma Import(MSIL,ValidateName,"ValidateName");
end MSSyst.ComponentModel.Design.Serialization.INameCreationService;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.Design.Serialization.INameCreationService,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.Serialization.INameCreationService");
