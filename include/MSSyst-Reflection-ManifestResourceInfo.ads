-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
limited with MSSyst.Reflection.Assembly;
limited with MSSyst.Reflection.ResourceLocation;
limited with MSSyst.String;
limited with MSSyst.Type_k;
package MSSyst.Reflection.ManifestResourceInfo is
   type Typ is new MSSyst.Object.Typ   with record
      null;
   end record;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   function get_FileName(
      This : access Typ) return access MSSyst.String.Typ'Class;
   function get_ReferencedAssembly(
      This : access Typ) return access MSSyst.Reflection.Assembly.Typ'Class;
   function get_ResourceLocation(
      This : access Typ) return MSSyst.Reflection.ResourceLocation.Valuetype;
private
   pragma Convention(MSIL,Typ);
   pragma Import(MSIL,get_FileName,"get_FileName");
   pragma Import(MSIL,get_ReferencedAssembly,"get_ReferencedAssembly");
   pragma Import(MSIL,get_ResourceLocation,"get_ResourceLocation");
end MSSyst.Reflection.ManifestResourceInfo;
pragma Import(MSIL,MSSyst.Reflection.ManifestResourceInfo,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Reflection.ManifestResourceInfo");
