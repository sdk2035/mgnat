-- Autogenerated by MSIL2Ada v. 2
-- By: Martin C. Carlisle
--     Department of Computer Science
--     US Air Force Academy
--     carlislem@acm.org
pragma Extensions_Allowed(On);
with MSSyst.Object;
with MSIL_Types;
use MSIL_Types;
with MSSyst.Globalization.Calendar;
with MSSyst.ICloneable;
with type MSSyst.DateTime.Valuetype is tagged;
with type MSSyst.Object.Ref is access;
with MSSyst.Globalization.CalendarAlgorithmType;
with MSSyst.DayOfWeek;
with type MSSyst.Type_k.Ref is access;
with MSSyst.Globalization.CalendarWeekRule;
with type MSSyst.String.Ref is access;
package MSSyst.Globalization.PersianCalendar is
   type Typ;
   type Ref is access all Typ'Class;
   type Ref_addrof is access all Ref;
   type Ref_Arr is array(Natural range <>) of Ref;
   type Ref_Array is access all Ref_Arr;
   type Ref_Array_addrof is access all Ref_Array;
   type Typ is new MSSyst.Globalization.Calendar.Typ
         and MSSyst.ICloneable.Typ
   with record
      null;
   end record;
   PersianEra : Integer;
   pragma Import(MSIL,PersianEra,"PersianEra");
   function new_PersianCalendar(
      This : Ref := null) return Ref;
   function AddMonths(
      This : access Typ;
      time : MSSyst.DateTime.Valuetype;
      months : Integer) return MSSyst.DateTime.Valuetype;
   function AddYears(
      This : access Typ;
      time : MSSyst.DateTime.Valuetype;
      years : Integer) return MSSyst.DateTime.Valuetype;
   function get_AlgorithmType(
      This : access Typ) return MSSyst.Globalization.CalendarAlgorithmType.Valuetype;
   function get_Eras(
      This : access Typ) return MSIL_Types.Int32_Array;
   function get_MaxSupportedDateTime(
      This : access Typ) return MSSyst.DateTime.Valuetype;
   function get_MinSupportedDateTime(
      This : access Typ) return MSSyst.DateTime.Valuetype;
   function get_TwoDigitYearMax(
      This : access Typ) return Integer;
   function GetDayOfMonth(
      This : access Typ;
      time : MSSyst.DateTime.Valuetype) return Integer;
   function GetDayOfWeek(
      This : access Typ;
      time : MSSyst.DateTime.Valuetype) return MSSyst.DayOfWeek.Valuetype;
   function GetDayOfYear(
      This : access Typ;
      time : MSSyst.DateTime.Valuetype) return Integer;
   function GetDaysInMonth(
      This : access Typ;
      year : Integer;
      month : Integer;
      era : Integer) return Integer;
   function GetDaysInYear(
      This : access Typ;
      year : Integer;
      era : Integer) return Integer;
   function GetEra(
      This : access Typ;
      time : MSSyst.DateTime.Valuetype) return Integer;
   function GetLeapMonth(
      This : access Typ;
      year : Integer;
      era : Integer) return Integer;
   function GetMonth(
      This : access Typ;
      time : MSSyst.DateTime.Valuetype) return Integer;
   function GetMonthsInYear(
      This : access Typ;
      year : Integer;
      era : Integer) return Integer;
   function GetYear(
      This : access Typ;
      time : MSSyst.DateTime.Valuetype) return Integer;
   function IsLeapDay(
      This : access Typ;
      year : Integer;
      month : Integer;
      day : Integer;
      era : Integer) return Standard.Boolean;
   function IsLeapMonth(
      This : access Typ;
      year : Integer;
      month : Integer;
      era : Integer) return Standard.Boolean;
   function IsLeapYear(
      This : access Typ;
      year : Integer;
      era : Integer) return Standard.Boolean;
   procedure set_TwoDigitYearMax(
      This : access Typ;
      value : Integer);
   function ToDateTime(
      This : access Typ;
      year : Integer;
      month : Integer;
      day : Integer;
      hour : Integer;
      minute : Integer;
      second : Integer;
      millisecond : Integer;
      era : Integer) return MSSyst.DateTime.Valuetype;
   function ToFourDigitYear(
      This : access Typ;
      year : Integer) return Integer;
private
   pragma Convention(MSIL,Typ);
   pragma MSIL_Constructor(new_PersianCalendar);
   pragma Import(MSIL,AddMonths,"AddMonths");
   pragma Import(MSIL,AddYears,"AddYears");
   pragma Import(MSIL,get_AlgorithmType,"get_AlgorithmType");
   pragma Import(MSIL,get_Eras,"get_Eras");
   pragma Import(MSIL,get_MaxSupportedDateTime,"get_MaxSupportedDateTime");
   pragma Import(MSIL,get_MinSupportedDateTime,"get_MinSupportedDateTime");
   pragma Import(MSIL,get_TwoDigitYearMax,"get_TwoDigitYearMax");
   pragma Import(MSIL,GetDayOfMonth,"GetDayOfMonth");
   pragma Import(MSIL,GetDayOfWeek,"GetDayOfWeek");
   pragma Import(MSIL,GetDayOfYear,"GetDayOfYear");
   pragma Import(MSIL,GetDaysInMonth,"GetDaysInMonth");
   pragma Import(MSIL,GetDaysInYear,"GetDaysInYear");
   pragma Import(MSIL,GetEra,"GetEra");
   pragma Import(MSIL,GetLeapMonth,"GetLeapMonth");
   pragma Import(MSIL,GetMonth,"GetMonth");
   pragma Import(MSIL,GetMonthsInYear,"GetMonthsInYear");
   pragma Import(MSIL,GetYear,"GetYear");
   pragma Import(MSIL,IsLeapDay,"IsLeapDay");
   pragma Import(MSIL,IsLeapMonth,"IsLeapMonth");
   pragma Import(MSIL,IsLeapYear,"IsLeapYear");
   pragma Import(MSIL,set_TwoDigitYearMax,"set_TwoDigitYearMax");
   pragma Import(MSIL,ToDateTime,"ToDateTime");
   pragma Import(MSIL,ToFourDigitYear,"ToFourDigitYear");
end MSSyst.Globalization.PersianCalendar;
pragma Extensions_Allowed(Off);
pragma Import(MSIL,MSSyst.Globalization.PersianCalendar,
   ".ver 2.0.0.0 .publickeytoken=( 96 9d b8 05 3d 33 22 ac )",
   "[mscorlib]System.Globalization.PersianCalendar");
