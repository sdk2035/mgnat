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
with MSSyst.Windows.Forms.VisualStyles.VisualStyleElement;
with MSSyst.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;
package MSSyst.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock.Time is
   type Typ is abstract new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_Normal return access MSSyst.Windows.Forms.VisualStyles.VisualStyleElement.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_Normal,"get_Normal");
end MSSyst.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock.Time;
pragma Import(MSIL,MSSyst.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock.Time,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.VisualStyles.VisualStyleElement/TaskbarClock/Time");
