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
package MSSyst.Security.AccessControl.AceType is
   type ValueType is (
      AccessAllowed,
      AccessDenied,
      SystemAudit,
      SystemAlarm,
      AccessAllowedCompound,
      AccessAllowedObject,
      AccessDeniedObject,
      SystemAuditObject,
      SystemAlarmObject,
      AccessAllowedCallback,
      AccessDeniedCallback,
      AccessAllowedCallbackObject,
      AccessDeniedCallbackObject,
      SystemAuditCallback,
      SystemAlarmCallback,
      SystemAuditCallbackObject,
      MaxDefinedAceType);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      AccessAllowed =>  0,
      AccessDenied =>  1,
      SystemAudit =>  2,
      SystemAlarm =>  3,
      AccessAllowedCompound =>  4,
      AccessAllowedObject =>  5,
      AccessDeniedObject =>  6,
      SystemAuditObject =>  7,
      SystemAlarmObject =>  8,
      AccessAllowedCallback =>  9,
      AccessDeniedCallback =>  10,
      AccessAllowedCallbackObject =>  11,
      AccessDeniedCallbackObject =>  12,
      SystemAuditCallback =>  13,
      SystemAlarmCallback =>  14,
      SystemAuditCallbackObject =>  15,
      MaxDefinedAceType =>  16);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   SystemAlarmCallbackObject : constant Valuetype := MaxDefinedAceType;
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
end MSSyst.Security.AccessControl.AceType;
pragma Import(MSIL,MSSyst.Security.AccessControl.AceType,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[mscorlib]System.Security.AccessControl.AceType");
