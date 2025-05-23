-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Threading.WaitHandle;
with type MSSyst.Runtime.Remoting.ObjRef.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Object.Ref is access;
with type Microsoft.Win32.SafeHandles.SafeWaitHandle.Ref is access;
with type MSSyst.Security.AccessControl.SemaphoreSecurity.Ref is access;
with type MSSyst.String.Ref is access;
with MSSyst.Security.AccessControl.SemaphoreRights;
with type MSSyst.TimeSpan.Valuetype is tagged;
package MSSyst.Threading.Semaphore is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Threading.WaitHandle.Typ   with record
      null;
   end record;
   function new_Semaphore(
      This : Ref := null;
      initialCount : Integer;
      maximumCount : Integer) return Ref;
   function new_Semaphore(
      This : Ref := null;
      initialCount : Integer;
      maximumCount : Integer;
      name : MSSyst.String.Ref) return Ref;
   function new_Semaphore(
      This : Ref := null;
      initialCount : Integer;
      maximumCount : Integer;
      name : MSSyst.String.Ref;
      createdNew : MSIL_Types.Bool_addrof) return Ref;
   function new_Semaphore(
      This : Ref := null;
      initialCount : Integer;
      maximumCount : Integer;
      name : MSSyst.String.Ref;
      createdNew : MSIL_Types.Bool_addrof;
      semaphoreSecurity : MSSyst.Security.AccessControl.SemaphoreSecurity.Ref) return Ref;
   function GetAccessControl(
      This : access Typ) return MSSyst.Security.AccessControl.SemaphoreSecurity.Ref;
   function OpenExisting(
      name : MSSyst.String.Ref;
      rights : MSSyst.Security.AccessControl.SemaphoreRights.Valuetype) return MSSyst.Threading.Semaphore.Ref;
   function OpenExisting(
      name : MSSyst.String.Ref) return MSSyst.Threading.Semaphore.Ref;
   function Release(
      This : access Typ;
      releaseCount : Integer) return Integer;
   function Release(
      This : access Typ) return Integer;
   procedure SetAccessControl(
      This : access Typ;
      semaphoreSecurity : MSSyst.Security.AccessControl.SemaphoreSecurity.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_Semaphore);
   pragma Import(MSIL,GetAccessControl,"GetAccessControl");
   pragma Import(MSIL,OpenExisting,"OpenExisting");
   pragma Import(MSIL,Release,"Release");
   pragma Import(MSIL,SetAccessControl,"SetAccessControl");
end MSSyst.Threading.Semaphore;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Threading.Semaphore,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Threading.Semaphore");
