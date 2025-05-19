------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                         A D A . C A L E N D A R                          --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.49 $
--                                                                          --
--          Copyright (C) 1992-1999 Free Software Foundation, Inc.          --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the Free Software Foundation,  59 Temple Place - Suite 330,  Boston, --
-- MA 02111-1307, USA.                                                      --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- It is now maintained by Ada Core Technologies Inc (http://www.gnat.com). --
--                                                                          --
------------------------------------------------------------------------------

with System.Soft_Links;
--  used for Lock_Task, Unlock_Task, Clock

--  with Unchecked_Conversion;

with System.OS_Primitives;
--  used for Clock

package body Ada.Calendar is

   package SSL renames System.Soft_Links;

   use type SSL.Get_Duration_Call;

   ------------------------------
   -- Use of Pragma Unsuppress --
   ------------------------------

   --  This implementation of Calendar takes advantage of the permission in
   --  Ada 95 of using arithmetic overflow checks to check for out of bounds
   --  time values. This means that we must catch the constraint error that
   --  results from arithmetic overflow, so we use pragma Unsuppress to make
   --  sure that overflow is enabled, using software overflow checking if
   --  necessary. That way, compiling Calendar with options to suppress this
   --  checking will not affect its correctness.

   ------------------------
   -- Local Declarations --
   ------------------------

   type Char_Pointer is access Character;
   subtype int  is Integer;
   subtype long is Long_Integer;
   --  Synonyms for C types. We don't want to get them from Interfaces.C
   --  because there is no point in loading that unit just for calendar.

   type tm is record
      tm_msec   : int;           -- milliseconds
      tm_sec    : int;           -- seconds after the minute (0 .. 60)
      tm_min    : int;           -- minutes after the hour (0 .. 59)
      tm_hour   : int;           -- hours since midnight (0 .. 24)
      tm_mday   : int;           -- day of the month (1 .. 31)
      tm_mon    : int;           -- months since January (0 .. 11)
      tm_year   : int;           -- years since 1900
      tm_wday   : int;           -- days since Sunday (0 .. 6)
      tm_yday   : int;           -- days since January 1 (0 .. 365)
      tm_isdst  : int;           -- Daylight Savings Time flag (-1 .. +1)
      tm_gmtoff : long;          -- offset from CUT in seconds
      tm_zone   : Char_Pointer;  -- timezone abbreviation
   end record;

   type tm_Pointer is access all tm;

   subtype time_t is long;

   --  type time_t_Pointer is access all time_t;

   procedure localtime_r (C : long; res : tm_Pointer);
   pragma Import (C, localtime_r, "__gnat_localtime_r");

   function mktime (TM : tm_Pointer) return time_t;
   pragma Import (C, mktime);
   --  mktime returns -1 in case the calendar time given by components of
   --  TM.all cannot be represented.

   --  The following constants are used in adjusting Ada dates so that they
   --  fit into the range that can be handled by Unix (1970 - 2038). The trick
   --  is that the number of days in any four year period in the Ada range of
   --  years (1901 - 2099) has a constant number of days. This is because we
   --  have the special case of 2000 which, contrary to the normal exception
   --  for centuries, is a leap year after all.

   Unix_Year_Min : constant := 0001;
   Unix_Year_Max : constant := 2099;

   --  Ada_Year_Min : constant := 1901;
   --  Ada_Year_Max : constant := 2099;

   --  Some basic constants used throughout

   Days_In_Month : constant array (Month_Number) of Day_Number :=
                     (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

   Days_In_4_Years     : constant := 365 * 3 + 366;
   Seconds_In_4_Years  : constant := 86_400 * Days_In_4_Years;
   Seconds_In_4_YearsD : constant Duration := Duration (Seconds_In_4_Years);

   ---------
   -- "+" --
   ---------

   function "+" (Left : Time; Right : Duration) return Time is
      pragma Unsuppress (Overflow_Check);
   begin
      return (Left + Time (Right));

   exception
      when Constraint_Error =>
         raise Time_Error;
   end "+";

   function "+" (Left : Duration; Right : Time) return Time is
      pragma Unsuppress (Overflow_Check);
   begin
      return (Time (Left) + Right);

   exception
      when Constraint_Error =>
         raise Time_Error;
   end "+";

   ---------
   -- "-" --
   ---------

   function "-" (Left : Time; Right : Duration)  return Time is
      pragma Unsuppress (Overflow_Check);
   begin
      return Left - Time (Right);

   exception
      when Constraint_Error =>
         raise Time_Error;
   end "-";

   function "-" (Left : Time; Right : Time) return Duration is
      pragma Unsuppress (Overflow_Check);
   begin
      return Duration (Left) - Duration (Right);

   exception
      when Constraint_Error =>
         raise Time_Error;
   end "-";

   ---------
   -- "<" --
   ---------

   function "<" (Left, Right : Time) return Boolean is
   begin
      return Duration (Left) < Duration (Right);
   end "<";

   ----------
   -- "<=" --
   ----------

   function "<=" (Left, Right : Time) return Boolean is
   begin
      return Duration (Left) <= Duration (Right);
   end "<=";

   ---------
   -- ">" --
   ---------

   function ">" (Left, Right : Time) return Boolean is
   begin
      return Duration (Left) > Duration (Right);
   end ">";

   ----------
   -- ">=" --
   ----------

   function ">=" (Left, Right : Time) return Boolean is
   begin
      return Duration (Left) >= Duration (Right);
   end ">=";

   -----------
   -- Clock --
   -----------

   --  The Ada.Calendar.Clock function gets the time from the soft links
   --  interface which will call the appropriate function depending wether
   --  tasking is involved or not.

   function Clock return Time is
   begin
      return Time (SSL.Clock.all);
   end Clock;

   ---------
   -- Day --
   ---------

   function Day (Date : Time) return Day_Number is
      DY : Year_Number;
      DM : Month_Number;
      DD : Day_Number;
      DS : Day_Duration;

   begin
      Split (Date, DY, DM, DD, DS);
      return DD;
   end Day;

   -----------
   -- Month --
   -----------

   function Month (Date : Time) return Month_Number is
      DY : Year_Number;
      DM : Month_Number;
      DD : Day_Number;
      DS : Day_Duration;

   begin
      Split (Date, DY, DM, DD, DS);
      return DM;
   end Month;

   -------------
   -- Seconds --
   -------------

   function Seconds (Date : Time) return Day_Duration is
      DY : Year_Number;
      DM : Month_Number;
      DD : Day_Number;
      DS : Day_Duration;

   begin
      Split (Date, DY, DM, DD, DS);
      return DS;
   end Seconds;

   -----------
   -- Split --
   -----------

   procedure Split
     (Date    : Time;
      Year    : out Year_Number;
      Month   : out Month_Number;
      Day     : out Day_Number;
      Seconds : out Day_Duration)
   is
      Tm_Val : aliased tm;
   begin
      --  Time is stored in seconds?, we need 100ns for localtime_r
      localtime_r (long (Date) * 10_000_000, Tm_Val'Unchecked_Access);

      Year     := Tm_Val.tm_year;
      Month    := Tm_Val.tm_mon;
      Day      := Tm_Val.tm_mday;
      Seconds  := Duration (Tm_Val.tm_sec + 60 * Tm_Val.tm_min
         + 3600 * Tm_Val.tm_hour) + Duration (0.001 * Tm_Val.tm_msec);
   end Split;

   -------------
   -- Time_Of --
   -------------

   function Time_Of
     (Year    : Year_Number;
      Month   : Month_Number;
      Day     : Day_Number;
      Seconds : Day_Duration := 0.0)
      return    Time
   is
      Result_Secs : aliased time_t;
      TM_Val      : aliased tm;
      Int_Secs    : constant Integer := Integer (Seconds);

      Year_Val        : Integer := Year;
      Duration_Adjust : Duration := 0.0;

   begin
      --  The following checks are redundant with respect to the constraint
      --  error checks that should normally be made on parameters, but we
      --  decide to raise Constraint_Error in any case if bad values come
      --  in (as a result of checks being off in the caller, or for other
      --  erroneous or bounded error cases).

      if        not Year   'Valid
        or else not Month  'Valid
        or else not Day    'Valid
        or else not Seconds'Valid
      then
         raise Constraint_Error;
      end if;

      --  Check for Day value too large (one might expect mktime to do this
      --  check, as well as the basi checks we did with 'Valid, but it seems
      --  that at least on some systems, this built-in check is too weak.

      if Day > Days_In_Month (Month)
        and then (Day /= 29 or Month /= 2 or Year mod 4 /= 0)
      then
         raise Time_Error;
      end if;

      TM_Val.tm_sec  := Int_Secs mod 60;
      TM_Val.tm_min  := (Int_Secs / 60) mod 60;
      TM_Val.tm_hour := (Int_Secs / 60) / 60;
      TM_Val.tm_mday := Day;
      TM_Val.tm_mon  := Month;

      --  For the year, we have to adjust it to a year that Unix can handle.
      --  We do this in four year steps, since the number of days in four
      --  years is constant, so the timezone effect on the conversion from
      --  local time to GMT is unaffected.

      while Year_Val <= Unix_Year_Min loop
         Year_Val := Year_Val + 4;
         Duration_Adjust := Duration_Adjust - Seconds_In_4_YearsD;
      end loop;

      while Year_Val >= Unix_Year_Max loop
         Year_Val := Year_Val - 4;
         Duration_Adjust := Duration_Adjust + Seconds_In_4_YearsD;
      end loop;

      TM_Val.tm_year := Year_Val - 1900;

      --  Since we do not have information on daylight savings,
      --  rely on the default information.

      TM_Val.tm_isdst := -1;
      Result_Secs := mktime (TM_Val'Unchecked_Access);

      --  That gives us the basic value in seconds. Two adjustments are
      --  needed. First we must undo the year adjustment carried out above.
      --  Second we put back the fraction seconds value since in general the
      --  Day_Duration value we received has additional precision which we
      --  do not want to lose in the constructed result.
      return
        Time (Duration (Result_Secs) +
              Duration_Adjust +
              (Seconds - Duration (Int_Secs)));

   end Time_Of;

   ----------
   -- Year --
   ----------

   function Year (Date : Time) return Year_Number is
      DY : Year_Number;
      DM : Month_Number;
      DD : Day_Number;
      DS : Day_Duration;

   begin
      Split (Date, DY, DM, DD, DS);
      return DY;
   end Year;

begin
   --  Set up the Clock soft link to the non tasking version if it has not
   --  been already set.
   --  If tasking is present, Clock has already set this soft link, or
   --  this will be overriden during the elaboration of
   --  System.Tasking.Initialization

   if SSL.Clock = null then
      SSL.Clock := System.OS_Primitives.Clock'Access;
   end if;
end Ada.Calendar;
