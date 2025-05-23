-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Runtime.Serialization.ObjectIDGenerator is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ObjectIDGenerator(
      This : Ref := null) return Ref;
   function GetId(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class;
      firstTime : MSIL_Types.Bool_addrof) return Long_Long_Integer;
   function HasId(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class;
      firstTime : MSIL_Types.Bool_addrof) return Long_Long_Integer;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ObjectIDGenerator);
   pragma Import(MSIL,GetId,"GetId");
   pragma Import(MSIL,HasId,"HasId");
end MSSyst.Runtime.Serialization.ObjectIDGenerator;
pragma Import(MSIL,MSSyst.Runtime.Serialization.ObjectIDGenerator,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.Serialization.ObjectIDGenerator");
