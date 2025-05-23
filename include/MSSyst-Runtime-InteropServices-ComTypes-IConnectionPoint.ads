-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Guid;
limited with MSSyst.Runtime.InteropServices.ComTypes.IConnectionPointContainer;
limited with MSSyst.Runtime.InteropServices.ComTypes.IEnumConnections;
package MSSyst.Runtime.InteropServices.ComTypes.IConnectionPoint is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure Advise(
      This : access Typ;
      pUnkSink : access MSSyst.Object.Typ'Class;
      pdwCookie : MSIL_Types.Int32_addrof) is abstract;
   procedure EnumConnections(
      This : access Typ;
      ppEnum : access MSSyst.Runtime.InteropServices.ComTypes.IEnumConnections.Ref) is abstract;
   procedure GetConnectionInterface(
      This : access Typ;
      pIID : access MSSyst.Guid.Valuetype) is abstract;
   procedure GetConnectionPointContainer(
      This : access Typ;
      ppCPC : access MSSyst.Runtime.InteropServices.ComTypes.IConnectionPointContainer.Ref) is abstract;
   procedure Unadvise(
      This : access Typ;
      dwCookie : Integer) is abstract;
private
   pragma Import(MSIL,Advise,"Advise");
   pragma Import(MSIL,EnumConnections,"EnumConnections");
   pragma Import(MSIL,GetConnectionInterface,"GetConnectionInterface");
   pragma Import(MSIL,GetConnectionPointContainer,"GetConnectionPointContainer");
   pragma Import(MSIL,Unadvise,"Unadvise");
end MSSyst.Runtime.InteropServices.ComTypes.IConnectionPoint;
pragma Import(MSIL,MSSyst.Runtime.InteropServices.ComTypes.IConnectionPoint,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.InteropServices.ComTypes.IConnectionPoint");
