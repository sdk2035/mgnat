-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Guid;
limited with MSSyst.Runtime.InteropServices.UCOMIConnectionPoint;
limited with MSSyst.Runtime.InteropServices.UCOMIEnumConnectionPoints;
package MSSyst.Runtime.InteropServices.UCOMIConnectionPointContainer is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure EnumConnectionPoints(
      This : access Typ;
      ppEnum : access MSSyst.Runtime.InteropServices.UCOMIEnumConnectionPoints.Ref) is abstract;
   procedure FindConnectionPoint(
      This : access Typ;
      riid : access MSSyst.Guid.Valuetype;
      ppCP : access MSSyst.Runtime.InteropServices.UCOMIConnectionPoint.Ref) is abstract;
private
   pragma Import(MSIL,EnumConnectionPoints,"EnumConnectionPoints");
   pragma Import(MSIL,FindConnectionPoint,"FindConnectionPoint");
end MSSyst.Runtime.InteropServices.UCOMIConnectionPointContainer;
pragma Import(MSIL,MSSyst.Runtime.InteropServices.UCOMIConnectionPointContainer,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.InteropServices.UCOMIConnectionPointContainer");
