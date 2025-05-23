-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.TypeCode;
with type MSSyst.String.Ref is access;
with type MSSyst.IFormatProvider.Ref is access;
package MSSyst.Windows.Forms.NativeMethods.tagVARFLAGS is
   type ValueType is (
      VARFLAG_FREADONLY,
      VARFLAG_FSOURCE,
      VARFLAG_FBINDABLE,
      VARFLAG_FREQUESTEDIT,
      VARFLAG_FDISPLAYBIND,
      VARFLAG_FDEFAULTBIND,
      VARFLAG_FHIDDEN,
      VARFLAG_FDEFAULTCOLLELEM,
      VARFLAG_FUIDEFAULT,
      VARFLAG_FNONBROWSABLE,
      VARFLAG_FREPLACEABLE,
      VARFLAG_FIMMEDIATEBIND);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      VARFLAG_FREADONLY =>  0,
      VARFLAG_FSOURCE =>  2,
      VARFLAG_FBINDABLE =>  4,
      VARFLAG_FREQUESTEDIT =>  8,
      VARFLAG_FDISPLAYBIND =>  16,
      VARFLAG_FDEFAULTBIND =>  32,
      VARFLAG_FHIDDEN =>  64,
      VARFLAG_FDEFAULTCOLLELEM =>  256,
      VARFLAG_FUIDEFAULT =>  512,
      VARFLAG_FNONBROWSABLE =>  1024,
      VARFLAG_FREPLACEABLE =>  2048,
      VARFLAG_FIMMEDIATEBIND =>  4096);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function CompareTo(
      This : Valuetype;
      target : MSSyst.Object.Ref) return Integer;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return MSSyst.Type_k.Ref;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref) return MSSyst.String.Ref;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Windows.Forms.NativeMethods.tagVARFLAGS;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.NativeMethods.tagVARFLAGS,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.NativeMethods/tagVARFLAGS");
