-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.IFormatProvider;
limited with MSSyst.String;
limited with MSSyst.TypeCode;
limited with MSSyst.Type_k;
package MSSyst.Runtime.InteropServices.ComTypes.FUNCFLAGS is
   type ValueType is (
      FUNCFLAG_FRESTRICTED,
      FUNCFLAG_FSOURCE,
      FUNCFLAG_FBINDABLE,
      FUNCFLAG_FREQUESTEDIT,
      FUNCFLAG_FDISPLAYBIND,
      FUNCFLAG_FDEFAULTBIND,
      FUNCFLAG_FHIDDEN,
      FUNCFLAG_FUSESGETLASTERROR,
      FUNCFLAG_FDEFAULTCOLLELEM,
      FUNCFLAG_FUIDEFAULT,
      FUNCFLAG_FNONBROWSABLE,
      FUNCFLAG_FREPLACEABLE,
      FUNCFLAG_FIMMEDIATEBIND);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      FUNCFLAG_FRESTRICTED =>  0,
      FUNCFLAG_FSOURCE =>  131074,
      FUNCFLAG_FBINDABLE =>  262148,
      FUNCFLAG_FREQUESTEDIT =>  524296,
      FUNCFLAG_FDISPLAYBIND =>  1048592,
      FUNCFLAG_FDEFAULTBIND =>  2097184,
      FUNCFLAG_FHIDDEN =>  4194368,
      FUNCFLAG_FUSESGETLASTERROR =>  8388736,
      FUNCFLAG_FDEFAULTCOLLELEM =>  16777472,
      FUNCFLAG_FUIDEFAULT =>  33554944,
      FUNCFLAG_FNONBROWSABLE =>  67109888,
      FUNCFLAG_FREPLACEABLE =>  134219776,
      FUNCFLAG_FIMMEDIATEBIND =>  268439552);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function "+" (L,R : Valuetype) return Valuetype;
   pragma Import (MSIL, "+", "+");
   function CompareTo(
      This : Valuetype;
      target : access MSSyst.Object.Typ'Class) return Integer;
   function Equals(
      This : Valuetype;
      obj : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return access MSSyst.Type_k.Typ'Class;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class;
      provider : access MSSyst.IFormatProvider.Typ'Class) return access MSSyst.String.Typ'Class;
   function ToString(
      This : Valuetype;
      format : access MSSyst.String.Typ'Class) return access MSSyst.String.Typ'Class;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Runtime.InteropServices.ComTypes.FUNCFLAGS;
pragma Import(MSIL,MSSyst.Runtime.InteropServices.ComTypes.FUNCFLAGS,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.InteropServices.ComTypes.FUNCFLAGS");
