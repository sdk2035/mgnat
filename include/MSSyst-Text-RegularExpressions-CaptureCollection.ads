-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Array_k;
with MSSyst.Collections.ICollection;
with MSSyst.Collections.IEnumerable;
limited with MSSyst.Collections.IEnumerator;
limited with MSSyst.String;
limited with MSSyst.Text.RegularExpressions.Capture;
limited with MSSyst.Type_k;
package MSSyst.Text.RegularExpressions.CaptureCollection is
   type Typ is new MSSyst.Object.Typ
         and MSSyst.Collections.ICollection.Typ
         and MSSyst.Collections.IEnumerable.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure CopyTo(
      This : access Typ;
      array_k : access MSSyst.Array_k.Typ'Class;
      arrayIndex : Integer);
   function get_Count(
      This : access Typ) return Integer;
   function get_IsReadOnly(
      This : access Typ) return Standard.Boolean;
   function get_IsSynchronized(
      This : access Typ) return Standard.Boolean;
   function get_Item(
      This : access Typ;
      i : Integer) return access MSSyst.Text.RegularExpressions.Capture.Typ'Class;
   function get_SyncRoot(
      This : access Typ) return access MSSyst.Object.Typ'Class;
   function GetEnumerator(
      This : access Typ) return access MSSyst.Collections.IEnumerator.Typ'Class;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,CopyTo,"CopyTo");
   pragma Import(MSIL,get_Count,"get_Count");
   pragma Import(MSIL,get_IsReadOnly,"get_IsReadOnly");
   pragma Import(MSIL,get_IsSynchronized,"get_IsSynchronized");
   pragma Import(MSIL,get_Item,"get_Item");
   pragma Import(MSIL,get_SyncRoot,"get_SyncRoot");
   pragma Import(MSIL,GetEnumerator,"GetEnumerator");
end MSSyst.Text.RegularExpressions.CaptureCollection;
pragma Import(MSIL,MSSyst.Text.RegularExpressions.CaptureCollection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Text.RegularExpressions.CaptureCollection");
