------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                     A D A . C O M M A N D _ L I N E                      --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision: 1.10 $
--                                                                          --
--          Copyright (C) 1992-1999 Free Software Foundation, Inc.          --
--                                                                          --
-- This specification is derived from the Ada Reference Manual for use with --
-- GNAT. The copyright notice above, and the license provisions that follow --
-- apply solely to the  contents of the part following the private keyword. --
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

package Ada.Command_Line is
pragma Preelaborate (Command_Line);

   function Argument_Count return Natural;
   --  If the external execution environment supports passing arguments to a
   --  program, then Argument_Count returns the number of arguments passed to
   --  the program invoking the function. Otherwise it return 0.
   --
   --  In GNAT: Corresponds to (argc - 1) in C.

   function Argument (Number : in Positive) return String;
   --  If the external execution environment supports passing arguments to
   --  a program, then Argument returns an implementation-defined value
   --  corresponding to the argument at relative position Number. If Number
   --  is outside the range 1 .. Argument_Count, then Constraint_Error is
   --  propagated.
   --
   --  in GNAT: Corresponds to argv [n] (for n > 0) in C.

   function Command_Name return String;
   --  If the external execution environment supports passing arguments to
   --  a program, then Command_Name returns an implementation-defined value
   --  corresponding to the name of the command invoking the program.
   --  Otherwise Command_Name returns the null string.
   --
   --  in GNAT: Corresponds to argv [0] in C.

   type Exit_Status is new Integer;

   Success : constant Exit_Status;
   Failure : constant Exit_Status;

   procedure Set_Exit_Status (Code : in Exit_Status);
   pragma Import (C, Set_Exit_Status, "set_gnat_exit_status");

private

   Success : constant Exit_Status := 0;
   Failure : constant Exit_Status := 1;

   --  The following locations support the operation of the package
   --  Ada.Command_Line_Remove, whih provides facilities for logically
   --  removing arguments from the command line. If one of the remove
   --  procedures is called in this unit, then Remove_Args/Remove_Count
   --  are set to indicate which arguments are removed. If no such calls
   --  have been made, then Remove_Args is null.

   Remove_Count : Natural;
   --  Number of arguments reflecting removals. Not defined unless
   --  Remove_Args is non-null.

   type Arg_Nums is array (Positive range <>) of Positive;
   type Arg_Nums_Ptr is access Arg_Nums;
   --  An array that maps logical argument numbers (reflecting removal)
   --  to physical argument numbers (e.g. if the first argument has been
   --  removed, but not the second, then Arg_Nums (1) will be set to 2.

   Remove_Args : Arg_Nums_Ptr := null;
   --  Left set to null if no remove calls have been made, otherwise set
   --  to point to an appropriate mapping array. Only the first Remove_Count
   --  elements are relevant.

end Ada.Command_Line;
