-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Guid;
with MSSyst.Windows.Forms.UnsafeNativeMethods;
limited with MSSyst.Windows.Forms.UnsafeNativeMethods.IStream;
package MSSyst.Windows.Forms.UnsafeNativeMethods.IPersistStreamInit is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure GetClassID(
      This : access Typ;
      pClassID : access MSSyst.Guid.Valuetype) is abstract;
   procedure GetSizeMax(
      This : access Typ;
      pcbSize : Long_Long_Integer) is abstract;
   procedure InitNew(
      This : access Typ) is abstract;
   function IsDirty(
      This : access Typ) return Integer is abstract;
   procedure Load(
      This : access Typ;
      pstm : access MSSyst.Windows.Forms.UnsafeNativeMethods.IStream.Typ'Class) is abstract;
   procedure Save(
      This : access Typ;
      pstm : access MSSyst.Windows.Forms.UnsafeNativeMethods.IStream.Typ'Class;
      fClearDirty : Standard.Boolean) is abstract;
private
   pragma Import(MSIL,GetClassID,"GetClassID");
   pragma Import(MSIL,GetSizeMax,"GetSizeMax");
   pragma Import(MSIL,InitNew,"InitNew");
   pragma Import(MSIL,IsDirty,"IsDirty");
   pragma Import(MSIL,Load,"Load");
   pragma Import(MSIL,Save,"Save");
end MSSyst.Windows.Forms.UnsafeNativeMethods.IPersistStreamInit;
pragma Import(MSIL,MSSyst.Windows.Forms.UnsafeNativeMethods.IPersistStreamInit,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.UnsafeNativeMethods/IPersistStreamInit");
