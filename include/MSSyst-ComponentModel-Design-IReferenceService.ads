-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.IComponent;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.ComponentModel.Design.IReferenceService is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function GetComponent(
      This : access Typ;
      reference : access MSSyst.Object.Typ'Class) return access MSSyst.ComponentModel.IComponent.Typ'Class is abstract;
   function GetName(
      This : access Typ;
      reference : access MSSyst.Object.Typ'Class) return access MSSyst.String.Typ'Class is abstract;
   function GetReference(
      This : access Typ;
      name : access MSSyst.String.Typ'Class) return access MSSyst.Object.Typ'Class is abstract;
   function GetReferences(
      This : access Typ;
      baseType : access MSSyst.Type_k.Typ'Class) return access MSSyst.Object.Ref_array is abstract;
   function GetReferences(
      This : access Typ) return access MSSyst.Object.Ref_array is abstract;
private
   pragma Import(MSIL,GetComponent,"GetComponent");
   pragma Import(MSIL,GetName,"GetName");
   pragma Import(MSIL,GetReference,"GetReference");
   pragma Import(MSIL,GetReferences,"GetReferences");
end MSSyst.ComponentModel.Design.IReferenceService;
pragma Import(MSIL,MSSyst.ComponentModel.Design.IReferenceService,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.IReferenceService");
