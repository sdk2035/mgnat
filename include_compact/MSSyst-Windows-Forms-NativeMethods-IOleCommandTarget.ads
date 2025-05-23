-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Guid;
with type MSSyst.Object.Ref_array is access;
with type MSSyst.Windows.Forms.NativeMethods.OLECMD.Ref is access;
package MSSyst.Windows.Forms.NativeMethods.IOleCommandTarget is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is interface;
   function Exec(
      This : access Typ;
      pguidCmdGroup : MSSyst.Guid.Valuetype_addrof;
      nCmdID : Integer;
      nCmdexecopt : Integer;
      pvaIn : MSSyst.Object.Ref_array;
      pvaOut : Integer) return Integer is abstract;
   function QueryStatus(
      This : access Typ;
      pguidCmdGroup : MSSyst.Guid.Valuetype_addrof;
      cCmds : Integer;
      prgCmds : MSSyst.Windows.Forms.NativeMethods.OLECMD.Ref;
      pCmdText : MSIL_Types.native_int) return Integer is abstract;
private
   pragma Import(MSIL,Exec,"Exec");
   pragma Import(MSIL,QueryStatus,"QueryStatus");
end MSSyst.Windows.Forms.NativeMethods.IOleCommandTarget;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.IOleCommandTarget,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/IOleCommandTarget");
