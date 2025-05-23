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
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Runtime.Serialization.StreamingContext.Valuetype is tagged;
package MSSyst.Runtime.Serialization.SerializationObjectManager is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function new_SerializationObjectManager(
      This : Ref := null;
      context : MSSyst.Runtime.Serialization.StreamingContext.Valuetype) return Ref;
   procedure RaiseOnSerializedEvent(
      This : access Typ);
   procedure RegisterObject(
      This : access Typ;
      obj : MSSyst.Object.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SerializationObjectManager);
   pragma Import(MSIL,RaiseOnSerializedEvent,"RaiseOnSerializedEvent");
   pragma Import(MSIL,RegisterObject,"RegisterObject");
end MSSyst.Runtime.Serialization.SerializationObjectManager;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.Serialization.SerializationObjectManager,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.Serialization.SerializationObjectManager");
