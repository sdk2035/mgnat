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
with type MSSyst.Reflection.MemberInfo.Ref is access;
with type MSSyst.Runtime.Serialization.SerializationInfo.Ref is access;
with type MSSyst.Runtime.Serialization.ISurrogateSelector.Ref is access;
with type MSSyst.Runtime.Serialization.StreamingContext.Valuetype is tagged;
package MSSyst.Runtime.Serialization.ObjectManager is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function new_ObjectManager(
      This : Ref := null;
      selector : MSSyst.Runtime.Serialization.ISurrogateSelector.Ref;
      context : MSSyst.Runtime.Serialization.StreamingContext.Valuetype) return Ref;
   procedure DoFixups(
      This : access Typ);
   function GetObject(
      This : access Typ;
      objectID : Long_Long_Integer) return MSSyst.Object.Ref;
   procedure RaiseDeserializationEvent(
      This : access Typ);
   procedure RaiseOnDeserializingEvent(
      This : access Typ;
      obj : MSSyst.Object.Ref);
   procedure RecordArrayElementFixup(
      This : access Typ;
      arrayToBeFixed : Long_Long_Integer;
      index : Integer;
      objectRequired : Long_Long_Integer);
   procedure RecordArrayElementFixup(
      This : access Typ;
      arrayToBeFixed : Long_Long_Integer;
      indices : MSIL_Types.Int32_Arr;
      objectRequired : Long_Long_Integer);
   procedure RecordDelayedFixup(
      This : access Typ;
      objectToBeFixed : Long_Long_Integer;
      memberName : MSSyst.String.Ref;
      objectRequired : Long_Long_Integer);
   procedure RecordFixup(
      This : access Typ;
      objectToBeFixed : Long_Long_Integer;
      member : MSSyst.Reflection.MemberInfo.Ref;
      objectRequired : Long_Long_Integer);
   procedure RegisterObject(
      This : access Typ;
      obj : MSSyst.Object.Ref;
      objectID : Long_Long_Integer;
      info : MSSyst.Runtime.Serialization.SerializationInfo.Ref);
   procedure RegisterObject(
      This : access Typ;
      obj : MSSyst.Object.Ref;
      objectID : Long_Long_Integer);
   procedure RegisterObject(
      This : access Typ;
      obj : MSSyst.Object.Ref;
      objectID : Long_Long_Integer;
      info : MSSyst.Runtime.Serialization.SerializationInfo.Ref;
      idOfContainingObj : Long_Long_Integer;
      member : MSSyst.Reflection.MemberInfo.Ref;
      arrayIndex : MSIL_Types.Int32_Arr);
   procedure RegisterObject(
      This : access Typ;
      obj : MSSyst.Object.Ref;
      objectID : Long_Long_Integer;
      info : MSSyst.Runtime.Serialization.SerializationInfo.Ref;
      idOfContainingObj : Long_Long_Integer;
      member : MSSyst.Reflection.MemberInfo.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ObjectManager);
   pragma Import(MSIL,DoFixups,"DoFixups");
   pragma Import(MSIL,GetObject,"GetObject");
   pragma Import(MSIL,RaiseDeserializationEvent,"RaiseDeserializationEvent");
   pragma Import(MSIL,RaiseOnDeserializingEvent,"RaiseOnDeserializingEvent");
   pragma Import(MSIL,RecordArrayElementFixup,"RecordArrayElementFixup");
   pragma Import(MSIL,RecordDelayedFixup,"RecordDelayedFixup");
   pragma Import(MSIL,RecordFixup,"RecordFixup");
   pragma Import(MSIL,RegisterObject,"RegisterObject");
end MSSyst.Runtime.Serialization.ObjectManager;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Runtime.Serialization.ObjectManager,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Runtime.Serialization.ObjectManager");
