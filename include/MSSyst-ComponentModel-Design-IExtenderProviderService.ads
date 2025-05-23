-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.ComponentModel.IExtenderProvider;
package MSSyst.ComponentModel.Design.IExtenderProviderService is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure AddExtenderProvider(
      This : access Typ;
      provider : access MSSyst.ComponentModel.IExtenderProvider.Typ'Class) is abstract;
   procedure RemoveExtenderProvider(
      This : access Typ;
      provider : access MSSyst.ComponentModel.IExtenderProvider.Typ'Class) is abstract;
private
   pragma Import(MSIL,AddExtenderProvider,"AddExtenderProvider");
   pragma Import(MSIL,RemoveExtenderProvider,"RemoveExtenderProvider");
end MSSyst.ComponentModel.Design.IExtenderProviderService;
pragma Import(MSIL,MSSyst.ComponentModel.Design.IExtenderProviderService,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.ComponentModel.Design.IExtenderProviderService");
