-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.EventArgs;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package Microsoft.Win32.TimerElapsedEventArgs is
   type Typ is new MSSyst.EventArgs.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_TimerElapsedEventArgs(
      This : Ref := null;
      timerId : MSIL_Types.native_int) return Ref;
   function get_TimerId(
      This : access Typ) return MSIL_Types.native_int;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_TimerElapsedEventArgs);
   pragma Import(MSIL,get_TimerId,"get_TimerId");
end Microsoft.Win32.TimerElapsedEventArgs;
pragma Import(MSIL,Microsoft.Win32.TimerElapsedEventArgs,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]Microsoft.Win32.TimerElapsedEventArgs");
