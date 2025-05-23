-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Guid;
limited with MSSyst.Runtime.InteropServices.ComTypes.ITypeComp;
limited with MSSyst.Runtime.InteropServices.ComTypes.ITypeInfo;
with MSSyst.Runtime.InteropServices.ComTypes.TYPEKIND;
limited with MSSyst.String;
package MSSyst.Runtime.InteropServices.ComTypes.ITypeLib is
   type Typ is interface;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   procedure FindName(
      This : access Typ;
      szNameBuf : access MSSyst.String.Typ'Class;
      lHashVal : Integer;
      ppTInfo : access MSSyst.Runtime.InteropServices.ComTypes.ITypeInfo.Ref_arr;
      rgMemId : MSIL_Types.Int32_Arr;
      pcFound : MSIL_Types.Int16_addrof) is abstract;
   procedure GetDocumentation(
      This : access Typ;
      index : Integer;
      strName : access MSSyst.String.Ref;
      strDocString : access MSSyst.String.Ref;
      dwHelpContext : MSIL_Types.Int32_addrof;
      strHelpFile : access MSSyst.String.Ref) is abstract;
   procedure GetLibAttr(
      This : access Typ;
      ppTLibAttr : MSIL_Types.native_int_addrof) is abstract;
   procedure GetTypeComp(
      This : access Typ;
      ppTComp : access MSSyst.Runtime.InteropServices.ComTypes.ITypeComp.Ref) is abstract;
   procedure GetTypeInfo(
      This : access Typ;
      index : Integer;
      ppTI : access MSSyst.Runtime.InteropServices.ComTypes.ITypeInfo.Ref) is abstract;
   function GetTypeInfoCount(
      This : access Typ) return Integer is abstract;
   procedure GetTypeInfoOfGuid(
      This : access Typ;
      guid : access MSSyst.Guid.Valuetype;
      ppTInfo : access MSSyst.Runtime.InteropServices.ComTypes.ITypeInfo.Ref) is abstract;
   procedure GetTypeInfoType(
      This : access Typ;
      index : Integer;
      pTKind : access MSSyst.Runtime.InteropServices.ComTypes.TYPEKIND.Valuetype) is abstract;
   function IsName(
      This : access Typ;
      szNameBuf : access MSSyst.String.Typ'Class;
      lHashVal : Integer) return Standard.Boolean is abstract;
   procedure ReleaseTLibAttr(
      This : access Typ;
      pTLibAttr : MSIL_Types.native_int) is abstract;
private
   pragma Import(MSIL,FindName,"FindName");
   pragma Import(MSIL,GetDocumentation,"GetDocumentation");
   pragma Import(MSIL,GetLibAttr,"GetLibAttr");
   pragma Import(MSIL,GetTypeComp,"GetTypeComp");
   pragma Import(MSIL,GetTypeInfo,"GetTypeInfo");
   pragma Import(MSIL,GetTypeInfoCount,"GetTypeInfoCount");
   pragma Import(MSIL,GetTypeInfoOfGuid,"GetTypeInfoOfGuid");
   pragma Import(MSIL,GetTypeInfoType,"GetTypeInfoType");
   pragma Import(MSIL,IsName,"IsName");
   pragma Import(MSIL,ReleaseTLibAttr,"ReleaseTLibAttr");
end MSSyst.Runtime.InteropServices.ComTypes.ITypeLib;
pragma Import(MSIL,MSSyst.Runtime.InteropServices.ComTypes.ITypeLib,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Runtime.InteropServices.ComTypes.ITypeLib");
