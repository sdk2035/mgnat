-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Runtime.ConstrainedExecution.CriticalFinalizerObject;
limited with MSSyst.String;
with MSSyst.Threading.LockCookie;
limited with MSSyst.TimeSpan;
limited with MSSyst.Type_k;
package MSSyst.Threading.ReaderWriterLock is
   type Typ is new MSSyst.Runtime.ConstrainedExecution.CriticalFinalizerObject.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function new_ReaderWriterLock(
      This : Ref := null) return Ref;
   procedure AcquireReaderLock(
      This : access Typ;
      timeout : MSSyst.TimeSpan.Valuetype);
   procedure AcquireReaderLock(
      This : access Typ;
      millisecondsTimeout : Integer);
   procedure AcquireWriterLock(
      This : access Typ;
      timeout : MSSyst.TimeSpan.Valuetype);
   procedure AcquireWriterLock(
      This : access Typ;
      millisecondsTimeout : Integer);
   function AnyWritersSince(
      This : access Typ;
      seqNum : Integer) return Standard.Boolean;
   procedure DowngradeFromWriterLock(
      This : access Typ;
      lockCookie : access MSSyst.Threading.LockCookie.Valuetype);
   function get_IsReaderLockHeld(
      This : access Typ) return Standard.Boolean;
   function get_IsWriterLockHeld(
      This : access Typ) return Standard.Boolean;
   function get_WriterSeqNum(
      This : access Typ) return Integer;
   function ReleaseLock(
      This : access Typ) return MSSyst.Threading.LockCookie.Valuetype;
   procedure ReleaseReaderLock(
      This : access Typ);
   procedure ReleaseWriterLock(
      This : access Typ);
   procedure RestoreLock(
      This : access Typ;
      lockCookie : access MSSyst.Threading.LockCookie.Valuetype);
   function UpgradeToWriterLock(
      This : access Typ;
      millisecondsTimeout : Integer) return MSSyst.Threading.LockCookie.Valuetype;
   function UpgradeToWriterLock(
      This : access Typ;
      timeout : MSSyst.TimeSpan.Valuetype) return MSSyst.Threading.LockCookie.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ReaderWriterLock);
   pragma Import(MSIL,AcquireReaderLock,"AcquireReaderLock");
   pragma Import(MSIL,AcquireWriterLock,"AcquireWriterLock");
   pragma Import(MSIL,AnyWritersSince,"AnyWritersSince");
   pragma Import(MSIL,DowngradeFromWriterLock,"DowngradeFromWriterLock");
   pragma Import(MSIL,get_IsReaderLockHeld,"get_IsReaderLockHeld");
   pragma Import(MSIL,get_IsWriterLockHeld,"get_IsWriterLockHeld");
   pragma Import(MSIL,get_WriterSeqNum,"get_WriterSeqNum");
   pragma Import(MSIL,ReleaseLock,"ReleaseLock");
   pragma Import(MSIL,ReleaseReaderLock,"ReleaseReaderLock");
   pragma Import(MSIL,ReleaseWriterLock,"ReleaseWriterLock");
   pragma Import(MSIL,RestoreLock,"RestoreLock");
   pragma Import(MSIL,UpgradeToWriterLock,"UpgradeToWriterLock");
end MSSyst.Threading.ReaderWriterLock;
pragma Import(MSIL,MSSyst.Threading.ReaderWriterLock,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Threading.ReaderWriterLock");
