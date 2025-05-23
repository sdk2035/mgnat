-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Configuration.ConfigurationSection;
with type MSSyst.Object.Ref is access;
with type MSSyst.Configuration.ElementInformation.Ref is access;
with type MSSyst.Configuration.ConfigurationLockCollection.Ref is access;
with type MSSyst.Configuration.SectionInformation.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.String.Ref is access;
package MSSyst.Windows.Forms.WindowsFormsSection is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Configuration.ConfigurationSection.Typ   with record
      null;
   end record;
   function new_WindowsFormsSection(
      This : Ref := null) return Ref;
   function get_JitDebugging(
      This : access Typ) return Standard.Boolean;
   procedure set_JitDebugging(
      This : access Typ;
      value : Standard.Boolean);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_WindowsFormsSection);
   pragma Import(MSIL,get_JitDebugging,"get_JitDebugging");
   pragma Import(MSIL,set_JitDebugging,"set_JitDebugging");
end MSSyst.Windows.Forms.WindowsFormsSection;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Windows.Forms.WindowsFormsSection,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System.Windows.Forms]System.Windows.Forms.WindowsFormsSection");
