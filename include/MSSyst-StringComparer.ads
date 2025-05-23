-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Collections.IComparer;
with MSSyst.Collections.IEqualityComparer;
limited with MSSyst.Globalization.CultureInfo;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.StringComparer is
   type Typ is abstract new MSSyst.Object.Typ
         and MSSyst.Collections.IComparer.Typ
         and MSSyst.Collections.IEqualityComparer.Typ
   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function Compare(
      This : access Typ;
      x : access MSSyst.String.Typ'Class;
      y : access MSSyst.String.Typ'Class) return Integer;
   function Compare(
      This : access Typ;
      x : access MSSyst.Object.Typ'Class;
      y : access MSSyst.Object.Typ'Class) return Integer;
   function Create(
      culture : access MSSyst.Globalization.CultureInfo.Typ'Class;
      ignoreCase : Standard.Boolean) return access MSSyst.StringComparer.Typ'Class;
   function Equals(
      This : access Typ;
      x : access MSSyst.String.Typ'Class;
      y : access MSSyst.String.Typ'Class) return Standard.Boolean;
   function Equals(
      This : access Typ;
      x : access MSSyst.Object.Typ'Class;
      y : access MSSyst.Object.Typ'Class) return Standard.Boolean;
   function get_CurrentCulture return access MSSyst.StringComparer.Typ'Class;
   function get_CurrentCultureIgnoreCase return access MSSyst.StringComparer.Typ'Class;
   function get_InvariantCulture return access MSSyst.StringComparer.Typ'Class;
   function get_InvariantCultureIgnoreCase return access MSSyst.StringComparer.Typ'Class;
   function get_Ordinal return access MSSyst.StringComparer.Typ'Class;
   function get_OrdinalIgnoreCase return access MSSyst.StringComparer.Typ'Class;
   function GetHashCode(
      This : access Typ;
      obj : access MSSyst.Object.Typ'Class) return Integer;
   function GetHashCode(
      This : access Typ;
      obj : access MSSyst.String.Typ'Class) return Integer;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,Compare,"Compare");
   pragma Import(MSIL,Create,"Create");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,get_CurrentCulture,"get_CurrentCulture");
   pragma Import(MSIL,get_CurrentCultureIgnoreCase,"get_CurrentCultureIgnoreCase");
   pragma Import(MSIL,get_InvariantCulture,"get_InvariantCulture");
   pragma Import(MSIL,get_InvariantCultureIgnoreCase,"get_InvariantCultureIgnoreCase");
   pragma Import(MSIL,get_Ordinal,"get_Ordinal");
   pragma Import(MSIL,get_OrdinalIgnoreCase,"get_OrdinalIgnoreCase");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
end MSSyst.StringComparer;
pragma Import(MSIL,MSSyst.StringComparer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.StringComparer");
