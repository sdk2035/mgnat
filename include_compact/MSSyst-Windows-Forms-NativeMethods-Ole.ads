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
package MSSyst.Windows.Forms.NativeMethods.Ole is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   PICTYPE_UNINITIALIZED : Integer;
   pragma Import(MSIL,PICTYPE_UNINITIALIZED,"PICTYPE_UNINITIALIZED");
   PICTYPE_NONE : Integer;
   pragma Import(MSIL,PICTYPE_NONE,"PICTYPE_NONE");
   PICTYPE_BITMAP : Integer;
   pragma Import(MSIL,PICTYPE_BITMAP,"PICTYPE_BITMAP");
   PICTYPE_METAFILE : Integer;
   pragma Import(MSIL,PICTYPE_METAFILE,"PICTYPE_METAFILE");
   PICTYPE_ICON : Integer;
   pragma Import(MSIL,PICTYPE_ICON,"PICTYPE_ICON");
   PICTYPE_ENHMETAFILE : Integer;
   pragma Import(MSIL,PICTYPE_ENHMETAFILE,"PICTYPE_ENHMETAFILE");
   STATFLAG_DEFAULT : Integer;
   pragma Import(MSIL,STATFLAG_DEFAULT,"STATFLAG_DEFAULT");
   STATFLAG_NONAME : Integer;
   pragma Import(MSIL,STATFLAG_NONAME,"STATFLAG_NONAME");
   function new_Ole(
      This : Ref := null) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_Ole);
end MSSyst.Windows.Forms.NativeMethods.Ole;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.Ole,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/Ole");
