-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with type MSSyst.Object.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.TypeCode;
with type MSSyst.String.Ref is access;
with type MSSyst.IFormatProvider.Ref is access;
package MSSyst.Net.WebExceptionStatus is
   type ValueType is (
      Success,
      NameResolutionFailure,
      ConnectFailure,
      ReceiveFailure,
      SendFailure,
      PipelineFailure,
      RequestCanceled,
      ProtocolError,
      ConnectionClosed,
      TrustFailure,
      SecureChannelFailure,
      ServerProtocolViolation,
      KeepAliveFailure,
      Pending,
      Timeout,
      ProxyNameResolutionFailure,
      UnknownError,
      MessageLengthLimitExceeded,
      CacheEntryNotFound,
      RequestProhibitedByCachePolicy,
      RequestProhibitedByProxy);
   pragma Convention (MSIL, ValueType);
   for ValueType use (
      Success =>  0,
      NameResolutionFailure =>  1,
      ConnectFailure =>  2,
      ReceiveFailure =>  3,
      SendFailure =>  4,
      PipelineFailure =>  5,
      RequestCanceled =>  6,
      ProtocolError =>  7,
      ConnectionClosed =>  8,
      TrustFailure =>  9,
      SecureChannelFailure =>  10,
      ServerProtocolViolation =>  11,
      KeepAliveFailure =>  12,
      Pending =>  13,
      Timeout =>  14,
      ProxyNameResolutionFailure =>  15,
      UnknownError =>  16,
      MessageLengthLimitExceeded =>  17,
      CacheEntryNotFound =>  18,
      RequestProhibitedByCachePolicy =>  19,
      RequestProhibitedByProxy =>  20);
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function CompareTo(
      This : Valuetype;
      target : MSSyst.Object.Ref) return Integer;
   function Equals(
      This : Valuetype;
      obj : MSSyst.Object.Ref) return Standard.Boolean;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetType(
      This : Valuetype) return MSSyst.Type_k.Ref;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function ToString(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref) return MSSyst.String.Ref;
private
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetType,"GetType");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,ToString,"ToString");
end MSSyst.Net.WebExceptionStatus;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Net.WebExceptionStatus,
   ".ver 2:0:0:0 .publickeytoken=( b7 7a 5c 56 19 34 e0 89 )",
   "[System]System.Net.WebExceptionStatus");
