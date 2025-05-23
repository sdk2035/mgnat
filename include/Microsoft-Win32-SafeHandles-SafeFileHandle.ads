-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid;
with MSSyst.IDisposable;
with MSSyst.Runtime.ConstrainedExecution.CriticalFinalizerObject;
with MSSyst.Runtime.InteropServices.SafeHandle;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package Microsoft.Win32.SafeHandles.SafeFileHandle is
   type Typ is new Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid.Typ
         and MSSyst.IDisposable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_SafeFileHandle(
      This : Ref := null;
      preexistingHandle : MSIL_Types.native_int;
      ownsHandle : Standard.Boolean) return Ref;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_SafeFileHandle);
end Microsoft.Win32.SafeHandles.SafeFileHandle;
pragma Import(MSIL,Microsoft.Win32.SafeHandles.SafeFileHandle,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]Microsoft.Win32.SafeHandles.SafeFileHandle");
