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
with MSSyst.Runtime.InteropServices.uEventBuilder;
with type MSSyst.Reflection.Emit.MethodBuilder.Ref is access;
with type MSSyst.Reflection.Emit.EventToken.Valuetype is tagged;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Reflection.Emit.CustomAttributeBuilder.Ref is access;
with type MSSyst.Reflection.ConstructorInfo.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Reflection.Emit.EventBuilder is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Runtime.InteropServices.uEventBuilder.Typ
   with record
      null;
   end record;
   procedure AddOtherMethod(
      This : access Typ;
      mdBuilder : MSSyst.Reflection.Emit.MethodBuilder.Ref);
   function GetEventToken(
      This : access Typ) return MSSyst.Reflection.Emit.EventToken.Valuetype;
   procedure SetAddOnMethod(
      This : access Typ;
      mdBuilder : MSSyst.Reflection.Emit.MethodBuilder.Ref);
   procedure SetCustomAttribute(
      This : access Typ;
      customBuilder : MSSyst.Reflection.Emit.CustomAttributeBuilder.Ref);
   procedure SetCustomAttribute(
      This : access Typ;
      con : MSSyst.Reflection.ConstructorInfo.Ref;
      binaryAttribute : MSIL_Types.unsigned_int8_Arr);
   procedure SetRaiseMethod(
      This : access Typ;
      mdBuilder : MSSyst.Reflection.Emit.MethodBuilder.Ref);
   procedure SetRemoveOnMethod(
      This : access Typ;
      mdBuilder : MSSyst.Reflection.Emit.MethodBuilder.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,AddOtherMethod,"AddOtherMethod");
   pragma Import(MSIL,GetEventToken,"GetEventToken");
   pragma Import(MSIL,SetAddOnMethod,"SetAddOnMethod");
   pragma Import(MSIL,SetCustomAttribute,"SetCustomAttribute");
   pragma Import(MSIL,SetRaiseMethod,"SetRaiseMethod");
   pragma Import(MSIL,SetRemoveOnMethod,"SetRemoveOnMethod");
end MSSyst.Reflection.Emit.EventBuilder;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Reflection.Emit.EventBuilder,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Reflection.Emit.EventBuilder");
