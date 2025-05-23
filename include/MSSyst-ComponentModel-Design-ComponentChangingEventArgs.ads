-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.MemberDescriptor;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.ComponentModel.Design.ComponentChangingEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ComponentChangingEventArgs(
      This : Ref := null;
      component : access MSSyst.Object.Typ'Class;
      member : access MSSyst.ComponentModel.MemberDescriptor.Typ'Class) return Ref;
   function get_Component(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function get_Member(
      This : access Typ) return access MSSyst.ComponentModel.MemberDescriptor.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ComponentChangingEventArgs);
   pragma Import(MSIL,get_Component,"get_Component");
   pragma Import(MSIL,get_Member,"get_Member");
end MSSyst.ComponentModel.Design.ComponentChangingEventArgs;
pragma Import(MSIL,MSSyst.ComponentModel.Design.ComponentChangingEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.ComponentChangingEventArgs");
