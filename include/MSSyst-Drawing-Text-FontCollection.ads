-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Drawing.FontFamily;
with MSSyst.IDisposable;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Drawing.Text.FontCollection is
   type Typ is abstract new MSSyst.Object.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure Dispose(
      This : access Typ);
   function get_Families(
      This : access Typ) return access MSSyst.Drawing.FontFamily.Ref_arr;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,Dispose,"Dispose");
   pragma Import(MSIL,get_Families,"get_Families");
end MSSyst.Drawing.Text.FontCollection;
pragma Import(MSIL,MSSyst.Drawing.Text.FontCollection,
   ".ver 2:0:0:0 .publickeytoken=( b0 3f 5f 7f 11 d5 0a 3a )",
   "[System.Drawing]System.Drawing.Text.FontCollection");
