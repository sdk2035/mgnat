-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Object;
with type MSSyst.Globalization.CultureInfo.Ref is access;
with type MSSyst.Windows.Forms.InputLanguageCollection.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Type_k.Ref is access;
package MSSyst.Windows.Forms.InputLanguage is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   function Equals(
      This : access Typ;
      value : MSSyst.Object.Ref) return Standard.Boolean;
   function FromCulture(
      culture : MSSyst.Globalization.CultureInfo.Ref) return MSSyst.Windows.Forms.InputLanguage.Ref;
   function get_Culture(
      This : access Typ) return MSSyst.Globalization.CultureInfo.Ref;
   function get_CurrentInputLanguage return MSSyst.Windows.Forms.InputLanguage.Ref;
   function get_DefaultInputLanguage return MSSyst.Windows.Forms.InputLanguage.Ref;
   function get_Handle(
      This : access Typ) return MSIL_Types.native_int;
   function get_InstalledInputLanguages return MSSyst.Windows.Forms.InputLanguageCollection.Ref;
   function get_LayoutName(
      This : access Typ) return MSSyst.String.Ref;
   function GetHashCode(
      This : access Typ) return Integer;
   procedure set_CurrentInputLanguage(
      value : MSSyst.Windows.Forms.InputLanguage.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,FromCulture,"FromCulture");
   pragma Import(MSIL,get_Culture,"get_Culture");
   pragma Import(MSIL,get_CurrentInputLanguage,"get_CurrentInputLanguage");
   pragma Import(MSIL,get_DefaultInputLanguage,"get_DefaultInputLanguage");
   pragma Import(MSIL,get_Handle,"get_Handle");
   pragma Import(MSIL,get_InstalledInputLanguages,"get_InstalledInputLanguages");
   pragma Import(MSIL,get_LayoutName,"get_LayoutName");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,set_CurrentInputLanguage,"set_CurrentInputLanguage");
end MSSyst.Windows.Forms.InputLanguage;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.InputLanguage,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.InputLanguage");
