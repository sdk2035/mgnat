-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.String;
with MSSyst.Text.RegularExpressions.Capture;
limited with MSSyst.Text.RegularExpressions.CaptureCollection;
limited with MSSyst.Type_k;
package MSSyst.Text.RegularExpressions.Group is
   type Typ is new MSSyst.Text.RegularExpressions.Capture.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_Captures(
      This : access Typ) return access MSSyst.Text.RegularExpressions.CaptureCollection.Typ'Class;
   function get_Success(
      This : access Typ) return Standard.Boolean;
   function Synchronized_k(
      inner : access MSSyst.Text.RegularExpressions.Group.Typ'Class) return access MSSyst.Text.RegularExpressions.Group.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_Captures,"get_Captures");
   pragma Import(MSIL,get_Success,"get_Success");
   pragma Import(MSIL,Synchronized_k,"Synchronized");
end MSSyst.Text.RegularExpressions.Group;
pragma Import(MSIL,MSSyst.Text.RegularExpressions.Group,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Text.RegularExpressions.Group");
