-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Windows.Forms.NativeMethods.STATSTG;
with MSSyst.Windows.Forms.UnsafeNativeMethods;
package MSSyst.Windows.Forms.UnsafeNativeMethods.IStream is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function Clone(
      This : access Typ) return access MSSyst.Windows.Forms.UnsafeNativeMethods.IStream.Typ'Class is abstract;
   procedure Commit(
      This : access Typ;
      grfCommitFlags : Integer) is abstract;
   function CopyTo(
      This : access Typ;
      pstm : access MSSyst.Windows.Forms.UnsafeNativeMethods.IStream.Typ'Class;
      cb : Long_Long_Integer;
      pcbRead : MSIL_Types.Int64_Arr) return Long_Long_Integer is abstract;
   procedure LockRegion(
      This : access Typ;
      libOffset : Long_Long_Integer;
      cb : Long_Long_Integer;
      dwLockType : Integer) is abstract;
   function Read(
      This : access Typ;
      buf : MSIL_Types.native_int;
      len : Integer) return Integer is abstract;
   procedure Revert(
      This : access Typ) is abstract;
   function Seek(
      This : access Typ;
      dlibMove : Long_Long_Integer;
      dwOrigin : Integer) return Long_Long_Integer is abstract;
   procedure SetSize(
      This : access Typ;
      libNewSize : Long_Long_Integer) is abstract;
   procedure Stat(
      This : access Typ;
      pStatstg : access MSSyst.Windows.Forms.NativeMethods.STATSTG.Typ'Class;
      grfStatFlag : Integer) is abstract;
   procedure UnlockRegion(
      This : access Typ;
      libOffset : Long_Long_Integer;
      cb : Long_Long_Integer;
      dwLockType : Integer) is abstract;
   function Write(
      This : access Typ;
      buf : MSIL_Types.native_int;
      len : Integer) return Integer is abstract;
private
   pragma Import(MSIL,Clone,"Clone");
   pragma Import(MSIL,Commit,"Commit");
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,LockRegion,"LockRegion");
   pragma Import(MSIL,Read,"Read");
   pragma Import(MSIL,Revert,"Revert");
   pragma Import(MSIL,Seek,"Seek");
   pragma Import(MSIL,SetSize,"SetSize");
   pragma Import(MSIL,Stat,"Stat");
   pragma Import(MSIL,UnlockRegion,"UnlockRegion");
   pragma Import(MSIL,Write,"Write");
end MSSyst.Windows.Forms.UnsafeNativeMethods.IStream;
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.IStream,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/IStream");
