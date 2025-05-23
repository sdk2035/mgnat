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
with type MSSyst.Drawing.Size.Valuetype is tagged;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.Internal.IntNativeMethods.SIZE is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      cx : Integer;
      pragma Import(MSIL,cx,"cx");
      cy : Integer;
      pragma Import(MSIL,cy,"cy");
   end record;
   function new_SIZE(
      This : Ref := null) return Ref;
   function new_SIZE(
      This : Ref := null;
      cx : Integer;
      cy : Integer) return Ref;
   function ToSize(
      This : access Typ) return MSSyst.Drawing.Size.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SIZE);
   pragma Import(MSIL,ToSize,"ToSize");
end MSSyst.Windows.Forms.Internal.IntNativeMethods.SIZE;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.Internal.IntNativeMethods.SIZE,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.Internal.IntNativeMethods/SIZE");
