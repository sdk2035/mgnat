------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                      SYSTEM.MACHINE_STATE_OPERATIONS                     --
--                                                                          --
--                                 S p e c                                  --
--                             (JGNAT Version)                              --
--                                                                          --
--                            $Revision: 1.1 $
--                                                                          --
--            Copyright (C) 1999-2000 Ada Core Technologies, Inc.           --
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

--  This is a dummy implementation for JGNAT

package System.Machine_State_Operations is

   type Machine_State is new Integer;
   --  The table based exception handling approach (see a-except.adb) isolates
   --  the target dependent aspects using an abstract data type interface
   --  to the type Machine_State, which is represented as a System.Address
   --  value (presumably implemented as a pointer to an appropriate record
   --  structure).

   function Allocate_Machine_State return Machine_State;
   --  Allocate the required space for a Machine_State

   procedure Free_Machine_State (M : in out Machine_State);
   --  Free the dynamic memory taken by Machine_State

end System.Machine_State_Operations;
