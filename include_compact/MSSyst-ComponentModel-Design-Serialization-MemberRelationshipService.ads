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
with type MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype is tagged;
with type MSSyst.ComponentModel.MemberDescriptor.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.ComponentModel.Design.Serialization.MemberRelationshipService is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is abstract new MSSyst.Object.Typ   with record
      null;
   end record;
   function get_Item(
      This : access Typ;
      sourceOwner : MSSyst.Object.Ref;
      sourceMember : MSSyst.ComponentModel.MemberDescriptor.Ref) return MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype;
   function get_Item(
      This : access Typ;
      source : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype) return MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype;
   procedure set_Item(
      This : access Typ;
      source : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype;
      value : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype);
   procedure set_Item(
      This : access Typ;
      sourceOwner : MSSyst.Object.Ref;
      sourceMember : MSSyst.ComponentModel.MemberDescriptor.Ref;
      value : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype);
   function SupportsRelationship(
      This : access Typ;
      source : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype;
      relationship : MSSyst.ComponentModel.Design.Serialization.MemberRelationship.Valuetype) return Standard.Boolean;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,set_Item,"set_Item");
   pragma Import(MSIL,SupportsRelationship,"SupportsRelationship");
end MSSyst.ComponentModel.Design.Serialization.MemberRelationshipService;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.Design.Serialization.MemberRelationshipService,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.Serialization.MemberRelationshipService");
