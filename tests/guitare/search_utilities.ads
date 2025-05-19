-------- SIMTEL20 Ada Software Repository Prologue ------------
--                                                           -*
-- Unit name    : generic package Search_Utilities
-- Version      : 1.1 (MOPR258)
-- Author       : Geoffrey O. Mendal
--              : Computer Systems Lab, ERL 456
--              : Stanford University
--              : Stanford, CA  94305
--              : (415) 723-1414 or 723-1175
-- DDN Address  : Mendal@Sierra.Stanford.Arpa
-- Copyright    : (c) 1985, 1988 Geoffrey O. Mendal
-- Date created : Mon 11 Nov 85
-- Release date : Sun 25 Dec 85
-- Last update  : MENDAL Mon 25 Apr 88
-- Machine/System Compiled/Run on : DG MV10000, ROLM ADE
--                                  VAX 11/780, DEC ACS
--                                  RATIONAL R1000
--                                  SUN/3, VERDIX VADS
--                                  SEQUENT B21000, VERDIX VADS
-- Dependent Units : package SYSTEM
--                                                           -*
---------------------------------------------------------------
--                                                           -*
-- Keywords     :  SEARCH
----------------:  SEARCH UTILITIES
--
-- Abstract     :  This generic package contains binary and
----------------:  sequential searching routines for arrays.
----------------:  A full paper describing this unit's
----------------:  capabilities is available by contacting the
----------------:  author at the above address.
--                                                           -*
------------------ Revision history ---------------------------
--                                                           -*
-- DATE         VERSION	          AUTHOR     HISTORY
-- 12/29/85     1.0 (MOOV115)     Mendal     Initial Release
-- 04/25/88     1.1 (MOPR258)     Mendal     Minor Revisions
--                                                           -*
------------------ Distribution and Copyright -----------------
--                                                           -*
-- This prologue must be included in all copies of this software.
--
-- This software is copyright by the author.
--
-- This software is released to the Ada community.
-- This software is released to the Public Domain (note:
--   software released to the Public Domain is not subject
--   to copyright protection).
-- Restrictions on use or distribution:  NONE
--                                                           -*
------------------ Disclaimer ---------------------------------
--                                                           -*
-- This software and its documentation are provided "AS IS" and
-- without any expressed or implied warranties whatsoever.
-- No warranties as to performance, merchantability, or fitness
-- for a particular purpose exist.
--
-- Because of the diversity of conditions and hardware under
-- which this software may be used, no warranty of fitness for
-- a particular purpose is offered.  The user is advised to
-- test the software thoroughly before relying on it.  The user
-- must assume the entire risk and liability of using this
-- software.
--
-- In no event shall any person or organization of people be
-- held responsible for any direct, indirect, consequential
-- or inconsequential damages or lost profits.
--                                                           -*
-------------------END-PROLOGUE--------------------------------

-- Search_Utilities is a generic searching package. The Search subprograms
-- will search a one dimensional array of any data type
-- indexed by discrete type components.

-- Note that the component type of the array is not restricted to simple
-- types. An array of records or allocators can be searched. If the
-- component type is a record or allocator, then the generic formal
-- subprogram parameter "<" below must be specified as a selector
-- function.

with SYSTEM;  -- predefined package SYSTEM

generic
  type Component_Type is limited private;  -- type of component to search for
  type Index_Type     is (<>);             -- type of array index

  -- The following generic formal type is required due to Ada's
  -- strong typing requirements.  The Search subprograms cannot handle
  -- anonymous array types.  This type will match any unconstrained
  -- array type.

  type Array_Type is array(Index_Type range <>) of Component_Type;

  -- The following generic formal subprogram parameter defaults to
  -- an ascending order strategy.  If records or access types are to
  -- be searched, a selector function must be specified.  If the array
  -- is not ordered, the selector function need not be supplied.
  -- (See examples #2 and #3 below).

  with function "<"(Left,Right : in Component_Type) return BOOLEAN is <>;

  -- The following generic formal subprogram parameter defaults to
  -- the predefined equality operator.  It can be used to specify a
  -- user-defined equality operation (see example #4 below).

  with function "="(Left, Right : in Component_Type) return BOOLEAN is <>;
package Search_Utilities is
  function Version return STRING;  -- Returns the version number.

  -- The following type should be used to specify how the data is
  -- ordered.  The default is Not_Ordered.  However, significant CPU time
  -- can be saved if the data is ordered and the default, Not_Ordered,
  -- is overridden.

  -- If the data are ordered, then if two or more components in the array
  -- can match the search component provided, then the component location
  -- returned by Search should be thought of as an arbitrary selection
  -- from amongst those possible match-components.

  -- If the data are not ordered, then if two or more components in the
  -- array can match the search component provided, then the component
  -- location returned by Search will be the one closest to
  -- Search_Array'FIRST.

  type Data_Order_Type is (Ordered,Not_Ordered);

  -- The following type declaration should be used to specify the
  -- instrumentation analysis data that can be returned by the
  -- Search procedure below.  -1 is only returned if an overflow in
  -- calculations has occurred.  The Search subprograms will not terminate
  -- if an overflow in instrumentation analysis data calculations has
  -- occurred.

  type Performance_Instrumentation_Type is range -1 .. SYSTEM.MAX_INT;

  -- The following procedure will search a one dimensional array of
  -- components.  It can search an ordered or unordered array.  If
  -- an ordered array is specified, it defaults to an ascending
  -- order (which can be overridden by the user).  The array components
  -- must only support equality, inequality, and assignment (private
  -- types).  The array indices can be of any discrete type.  The number
  -- of comparisons can also be returned.

  procedure Search (
    Component                        : in     Component_Type;
    Search_Array                     : in     Array_Type;
    Location_Found                   :    out Index_Type;
    Component_Found                  :    out BOOLEAN;
    Number_of_Comparisons            :    out Performance_Instrumentation_Type;
    Order_Strategy                   : in     Data_Order_Type := Not_Ordered;
    No_Match_Index                   : in     Index_Type      := Index_Type'LAST);

  -- The following overloading of procedure Search should be used when
  -- no instrumentation analysis data are required.

  procedure Search (
    Component                        : in     Component_Type;
    Search_Array                     : in     Array_Type;
    Location_Found                   :    out Index_Type;
    Component_Found                  :    out BOOLEAN;
    Order_Strategy                   : in     Data_Order_Type := Not_Ordered;
    No_Match_Index                   : in     Index_Type      := Index_Type'LAST);

  -- The following overloading of function Search should be used when
  -- the user only wants to know if the component exists or not.

  function Search (
    Component                        : in Component_Type;
    Search_Array                     : in Array_Type;
    Order_Strategy                   : in Data_Order_Type := Not_Ordered)
    return BOOLEAN;

  -- The following overloading of function Search should be used when
  -- the component is definitely known to exist and only the location
  -- is required.  (Note that No_Match_Index may be used to return a
  -- no match index value... but this won't work in all cases.)

  function Search (
    Component                        : in Component_Type;
    Search_Array                     : in Array_Type;
    Order_Strategy                   : in Data_Order_Type := Not_Ordered;
    No_Match_Index                   : in Index_Type      := Index_Type'LAST)
    return Index_Type;
end Search_Utilities;
