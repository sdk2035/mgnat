-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Resources.ResourceManager;
with type MSSyst.Object.Ref is access;
with type MSSyst.String.Ref is access;
with type MSSyst.Globalization.CultureInfo.Ref is access;
with type MSSyst.Type_k.Ref is access;
with type MSSyst.Resources.ResourceSet.Ref is access;
with type MSSyst.IO.UnmanagedMemoryStream.Ref is access;
package MSSyst.ComponentModel.ComponentResourceManager is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Resources.ResourceManager.Typ   with record
      null;
   end record;
   function new_ComponentResourceManager(
      This : Ref := null) return Ref;
   function new_ComponentResourceManager(
      This : Ref := null;
      t : MSSyst.Type_k.Ref) return Ref;
   procedure ApplyResources(
      This : access Typ;
      value : MSSyst.Object.Ref;
      objectName : MSSyst.String.Ref;
      culture : MSSyst.Globalization.CultureInfo.Ref);
   procedure ApplyResources(
      This : access Typ;
      value : MSSyst.Object.Ref;
      objectName : MSSyst.String.Ref);
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_ComponentResourceManager);
   pragma Import(MSIL,ApplyResources,"ApplyResources");
end MSSyst.ComponentModel.ComponentResourceManager;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.ComponentModel.ComponentResourceManager,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.ComponentResourceManager");
