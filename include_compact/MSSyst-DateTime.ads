-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.ValueType;
with type MSSyst.TimeSpan.Valuetype is tagged;
with type MSSyst.Object.Ref is access;
with MSSyst.DayOfWeek;
with MSSyst.DateTimeKind;
with type MSSyst.String.Ref_array is access;
with type MSSyst.IFormatProvider.Ref is access;
with type MSSyst.Type_k.Ref is access;
with MSSyst.TypeCode;
with type MSSyst.String.Ref is access;
with MSSyst.Globalization.DateTimeStyles;
with type MSSyst.Globalization.Calendar.Ref is access;
package MSSyst.DateTime is
   type ValueType is new MSSyst.ValueType.Typ with null record;
   type ValueType_Arr is array (Natural range <>) of ValueType; -- start at 0
   type ValueType_Array is access all ValueType_Arr;
   type ValueType_addrof is access all ValueType;
   type ValueType_array_addrof is access all ValueType_Array;
   function new_DateTime(
      ticks : Long_Long_Integer) return Valuetype;
   function new_DateTime(
      ticks : Long_Long_Integer;
      kind : MSSyst.DateTimeKind.Valuetype) return Valuetype;
   function new_DateTime(
      year : Integer;
      month : Integer;
      day : Integer) return Valuetype;
   function new_DateTime(
      year : Integer;
      month : Integer;
      day : Integer;
      calendar : MSSyst.Globalization.Calendar.Ref) return Valuetype;
   function new_DateTime(
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer) return Valuetype;
   function new_DateTime(
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
      kind : MSSyst.DateTimeKind.Valuetype) return Valuetype;
   function new_DateTime(
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
      calendar : MSSyst.Globalization.Calendar.Ref) return Valuetype;
   function new_DateTime(
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
      millisecond : Integer) return Valuetype;
   function new_DateTime(
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
      millisecond : Integer;
      kind : MSSyst.DateTimeKind.Valuetype) return Valuetype;
   function new_DateTime(
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
      millisecond : Integer;
      calendar : MSSyst.Globalization.Calendar.Ref) return Valuetype;
   function new_DateTime(
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
      millisecond : Integer;
      calendar : MSSyst.Globalization.Calendar.Ref;
      kind : MSSyst.DateTimeKind.Valuetype) return Valuetype;
   function Add(
      This : Valuetype;
      value : MSSyst.TimeSpan.Valuetype) return MSSyst.DateTime.Valuetype;
   function AddDays(
      This : Valuetype;
      value : Long_Float) return MSSyst.DateTime.Valuetype;
   function AddHours(
      This : Valuetype;
      value : Long_Float) return MSSyst.DateTime.Valuetype;
   function AddMilliseconds(
      This : Valuetype;
      value : Long_Float) return MSSyst.DateTime.Valuetype;
   function AddMinutes(
      This : Valuetype;
      value : Long_Float) return MSSyst.DateTime.Valuetype;
   function AddMonths(
      This : Valuetype;
      months : Integer) return MSSyst.DateTime.Valuetype;
   function AddSeconds(
      This : Valuetype;
      value : Long_Float) return MSSyst.DateTime.Valuetype;
   function AddTicks(
      This : Valuetype;
      value : Long_Long_Integer) return MSSyst.DateTime.Valuetype;
   function AddYears(
      This : Valuetype;
      value : Integer) return MSSyst.DateTime.Valuetype;
   function Compare(
      t1 : MSSyst.DateTime.Valuetype;
      t2 : MSSyst.DateTime.Valuetype) return Integer;
   function CompareTo(
      This : Valuetype;
      value : MSSyst.DateTime.Valuetype) return Integer;
   function CompareTo(
      This : Valuetype;
      value : MSSyst.Object.Ref) return Integer;
   function DaysInMonth(
      year : Integer;
      month : Integer) return Integer;
   function Equals(
      t1 : MSSyst.DateTime.Valuetype;
      t2 : MSSyst.DateTime.Valuetype) return Standard.Boolean;
   function Equals(
      This : Valuetype;
      value : MSSyst.DateTime.Valuetype) return Standard.Boolean;
   function Equals(
      This : Valuetype;
      value : MSSyst.Object.Ref) return Standard.Boolean;
   function FromBinary(
      dateData : Long_Long_Integer) return MSSyst.DateTime.Valuetype;
   function FromFileTime(
      fileTime : Long_Long_Integer) return MSSyst.DateTime.Valuetype;
   function FromFileTimeUtc(
      fileTime : Long_Long_Integer) return MSSyst.DateTime.Valuetype;
   function FromOADate(
      d : Long_Float) return MSSyst.DateTime.Valuetype;
   function get_Date(
      This : Valuetype) return MSSyst.DateTime.Valuetype;
   function get_Day(
      This : Valuetype) return Integer;
   function get_DayOfWeek(
      This : Valuetype) return MSSyst.DayOfWeek.Valuetype;
   function get_DayOfYear(
      This : Valuetype) return Integer;
   function get_Hour(
      This : Valuetype) return Integer;
   function get_Kind(
      This : Valuetype) return MSSyst.DateTimeKind.Valuetype;
   function get_Millisecond(
      This : Valuetype) return Integer;
   function get_Minute(
      This : Valuetype) return Integer;
   function get_Month(
      This : Valuetype) return Integer;
   function get_Now return MSSyst.DateTime.Valuetype;
   function get_Second(
      This : Valuetype) return Integer;
   function get_Ticks(
      This : Valuetype) return Long_Long_Integer;
   function get_TimeOfDay(
      This : Valuetype) return MSSyst.TimeSpan.Valuetype;
   function get_Today return MSSyst.DateTime.Valuetype;
   function get_UtcNow return MSSyst.DateTime.Valuetype;
   function get_Year(
      This : Valuetype) return Integer;
   function GetDateTimeFormats(
      This : Valuetype;
      format : Wide_Character;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref_array;
   function GetDateTimeFormats(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref_array;
   function GetDateTimeFormats(
      This : Valuetype) return MSSyst.String.Ref_array;
   function GetDateTimeFormats(
      This : Valuetype;
      format : Wide_Character) return MSSyst.String.Ref_array;
   function GetHashCode(
      This : Valuetype) return Integer;
   function GetTypeCode(
      This : Valuetype) return MSSyst.TypeCode.Valuetype;
   function IsDaylightSavingTime(
      This : Valuetype) return Standard.Boolean;
   function IsLeapYear(
      year : Integer) return Standard.Boolean;
   function op_Addition(
      d : MSSyst.DateTime.Valuetype;
      t : MSSyst.TimeSpan.Valuetype) return MSSyst.DateTime.Valuetype;
   function op_Equality(
      d1 : MSSyst.DateTime.Valuetype;
      d2 : MSSyst.DateTime.Valuetype) return Standard.Boolean;
   function op_GreaterThan(
      t1 : MSSyst.DateTime.Valuetype;
      t2 : MSSyst.DateTime.Valuetype) return Standard.Boolean;
   function op_GreaterThanOrEqual(
      t1 : MSSyst.DateTime.Valuetype;
      t2 : MSSyst.DateTime.Valuetype) return Standard.Boolean;
   function op_Inequality(
      d1 : MSSyst.DateTime.Valuetype;
      d2 : MSSyst.DateTime.Valuetype) return Standard.Boolean;
   function op_LessThan(
      t1 : MSSyst.DateTime.Valuetype;
      t2 : MSSyst.DateTime.Valuetype) return Standard.Boolean;
   function op_LessThanOrEqual(
      t1 : MSSyst.DateTime.Valuetype;
      t2 : MSSyst.DateTime.Valuetype) return Standard.Boolean;
   function op_Subtraction(
      d1 : MSSyst.DateTime.Valuetype;
      d2 : MSSyst.DateTime.Valuetype) return MSSyst.TimeSpan.Valuetype;
   function op_Subtraction(
      d : MSSyst.DateTime.Valuetype;
      t : MSSyst.TimeSpan.Valuetype) return MSSyst.DateTime.Valuetype;
   function Parse(
      s : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.DateTime.Valuetype;
   function Parse(
      s : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref;
      styles : MSSyst.Globalization.DateTimeStyles.Valuetype) return MSSyst.DateTime.Valuetype;
   function Parse(
      s : MSSyst.String.Ref) return MSSyst.DateTime.Valuetype;
   function ParseExact(
      s : MSSyst.String.Ref;
      formats : MSSyst.String.Ref_array;
      provider : MSSyst.IFormatProvider.Ref;
      style : MSSyst.Globalization.DateTimeStyles.Valuetype) return MSSyst.DateTime.Valuetype;
   function ParseExact(
      s : MSSyst.String.Ref;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref;
      style : MSSyst.Globalization.DateTimeStyles.Valuetype) return MSSyst.DateTime.Valuetype;
   function ParseExact(
      s : MSSyst.String.Ref;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.DateTime.Valuetype;
   function SpecifyKind(
      value : MSSyst.DateTime.Valuetype;
      kind : MSSyst.DateTimeKind.Valuetype) return MSSyst.DateTime.Valuetype;
   function Subtract(
      This : Valuetype;
      value : MSSyst.TimeSpan.Valuetype) return MSSyst.DateTime.Valuetype;
   function Subtract(
      This : Valuetype;
      value : MSSyst.DateTime.Valuetype) return MSSyst.TimeSpan.Valuetype;
   function ToBinary(
      This : Valuetype) return Long_Long_Integer;
   function ToFileTime(
      This : Valuetype) return Long_Long_Integer;
   function ToFileTimeUtc(
      This : Valuetype) return Long_Long_Integer;
   function ToLocalTime(
      This : Valuetype) return MSSyst.DateTime.Valuetype;
   function ToLongDateString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToLongTimeString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToOADate(
      This : Valuetype) return Long_Float;
   function ToShortDateString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToShortTimeString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToString(
      This : Valuetype;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref) return MSSyst.String.Ref;
   function ToUniversalTime(
      This : Valuetype) return MSSyst.DateTime.Valuetype;
   function TryParse(
      s : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref;
      styles : MSSyst.Globalization.DateTimeStyles.Valuetype;
      result : MSSyst.DateTime.Valuetype_addrof) return Standard.Boolean;
   function TryParse(
      s : MSSyst.String.Ref;
      result : MSSyst.DateTime.Valuetype_addrof) return Standard.Boolean;
   function TryParseExact(
      s : MSSyst.String.Ref;
      formats : MSSyst.String.Ref_array;
      provider : MSSyst.IFormatProvider.Ref;
      style : MSSyst.Globalization.DateTimeStyles.Valuetype;
      result : MSSyst.DateTime.Valuetype_addrof) return Standard.Boolean;
   function TryParseExact(
      s : MSSyst.String.Ref;
      format : MSSyst.String.Ref;
      provider : MSSyst.IFormatProvider.Ref;
      style : MSSyst.Globalization.DateTimeStyles.Valuetype;
      result : MSSyst.DateTime.Valuetype_addrof) return Standard.Boolean;
private
   pragma MSIL_Constructor(new_DateTime);
   pragma Import(MSIL,Add,"Add");
   pragma Import(MSIL,AddDays,"AddDays");
   pragma Import(MSIL,AddHours,"AddHours");
   pragma Import(MSIL,AddMilliseconds,"AddMilliseconds");
   pragma Import(MSIL,AddMinutes,"AddMinutes");
   pragma Import(MSIL,AddMonths,"AddMonths");
   pragma Import(MSIL,AddSeconds,"AddSeconds");
   pragma Import(MSIL,AddTicks,"AddTicks");
   pragma Import(MSIL,AddYears,"AddYears");
   pragma Import(MSIL,Compare,"Compare");
   pragma Import(MSIL,CompareTo,"CompareTo");
   pragma Import(MSIL,DaysInMonth,"DaysInMonth");
   pragma Import(MSIL,Equals,"Equals");
   pragma Import(MSIL,FromBinary,"FromBinary");
   pragma Import(MSIL,FromFileTime,"FromFileTime");
   pragma Import(MSIL,FromFileTimeUtc,"FromFileTimeUtc");
   pragma Import(MSIL,FromOADate,"FromOADate");
   pragma Import(MSIL,get_Date,"get_Date");
   pragma Import(MSIL,get_Day,"get_Day");
   pragma Import(MSIL,get_DayOfWeek,"get_DayOfWeek");
   pragma Import(MSIL,get_DayOfYear,"get_DayOfYear");
   pragma Import(MSIL,get_Hour,"get_Hour");
   pragma Import(MSIL,get_Kind,"get_Kind");
   pragma Import(MSIL,get_Millisecond,"get_Millisecond");
   pragma Import(MSIL,get_Minute,"get_Minute");
   pragma Import(MSIL,get_Month,"get_Month");
   pragma Import(MSIL,get_Now,"get_Now");
   pragma Import(MSIL,get_Second,"get_Second");
   pragma Import(MSIL,get_Ticks,"get_Ticks");
   pragma Import(MSIL,get_TimeOfDay,"get_TimeOfDay");
   pragma Import(MSIL,get_Today,"get_Today");
   pragma Import(MSIL,get_UtcNow,"get_UtcNow");
   pragma Import(MSIL,get_Year,"get_Year");
   pragma Import(MSIL,GetDateTimeFormats,"GetDateTimeFormats");
   pragma Import(MSIL,GetHashCode,"GetHashCode");
   pragma Import(MSIL,GetTypeCode,"GetTypeCode");
   pragma Import(MSIL,IsDaylightSavingTime,"IsDaylightSavingTime");
   pragma Import(MSIL,IsLeapYear,"IsLeapYear");
   pragma Import(MSIL,op_Addition,"op_Addition");
   pragma Import(MSIL,op_Equality,"op_Equality");
   pragma Import(MSIL,op_GreaterThan,"op_GreaterThan");
   pragma Import(MSIL,op_GreaterThanOrEqual,"op_GreaterThanOrEqual");
   pragma Import(MSIL,op_Inequality,"op_Inequality");
   pragma Import(MSIL,op_LessThan,"op_LessThan");
   pragma Import(MSIL,op_LessThanOrEqual,"op_LessThanOrEqual");
   pragma Import(MSIL,op_Subtraction,"op_Subtraction");
   pragma Import(MSIL,Parse,"Parse");
   pragma Import(MSIL,ParseExact,"ParseExact");
   pragma Import(MSIL,SpecifyKind,"SpecifyKind");
   pragma Import(MSIL,Subtract,"Subtract");
   pragma Import(MSIL,ToBinary,"ToBinary");
   pragma Import(MSIL,ToFileTime,"ToFileTime");
   pragma Import(MSIL,ToFileTimeUtc,"ToFileTimeUtc");
   pragma Import(MSIL,ToLocalTime,"ToLocalTime");
   pragma Import(MSIL,ToLongDateString,"ToLongDateString");
   pragma Import(MSIL,ToLongTimeString,"ToLongTimeString");
   pragma Import(MSIL,ToOADate,"ToOADate");
   pragma Import(MSIL,ToShortDateString,"ToShortDateString");
   pragma Import(MSIL,ToShortTimeString,"ToShortTimeString");
   pragma Import(MSIL,ToString,"ToString");
   pragma Import(MSIL,ToUniversalTime,"ToUniversalTime");
   pragma Import(MSIL,TryParse,"TryParse");
   pragma Import(MSIL,TryParseExact,"TryParseExact");
end MSSyst.DateTime;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.DateTime,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.DateTime");
