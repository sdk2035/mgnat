-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Runtime.Serialization.ISerializable;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.ApplicationIdentity is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Runtime.Serialization.ISerializable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ApplicationIdentity(
      This : Ref := null;
      applicationIdentityFullName : access MSSyst.String.Typ'Class) return Ref;
   function get_CodeBase(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_FullName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function ToString(
      This : access Typ) return access MSSyst.String.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ApplicationIdentity);
   pragma Import(MSIL,get_CodeBase,"get_CodeBase");
   pragma Import(MSIL,get_FullName,"get_FullName");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.ApplicationIdentity;
pragma Import(MSIL,MSSyst.ApplicationIdentity,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.ApplicationIdentity");
