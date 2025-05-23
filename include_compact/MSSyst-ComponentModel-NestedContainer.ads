-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ComponentModel.Container;
with MSSyst.ComponentModel.IContainer;
with MSSyst.ComponentModel.INestedContainer;
with type MSSyst.ComponentModel.IComponent.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Object.Ref is access;
with type MSSyst.ComponentModel.ComponentCollection.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.ComponentModel.NestedContainer is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.ComponentModel.Container.Typ
         and MSSyst.ComponentModel.IContainer.Typ
         and MSSyst.ComponentModel.INestedContainer.Typ
   with record
      null;
   end record;
   function new_NestedContainer(
      This : Ref := null;
      owner : MSSyst.ComponentModel.IComponent.Ref) return Ref;
   function get_Owner(
      This : access Typ) return MSSyst.ComponentModel.IComponent.Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_NestedContainer);
   pragma Import(MSIL,get_Owner,"get_Owner");
end MSSyst.ComponentModel.NestedContainer;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.NestedContainer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.NestedContainer");
