------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUNTIME COMPONENTS                          --
--                                                                          --
--        A D A . A S Y N C H R O N O U S _ T A S K _ C O N T R O L         --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.4 $                              --
--                                                                          --
--     Copyright (C) 1992,1993,1994,1995 Free Software Foundation, Inc.     --
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

--  This is a dummy body, which will not normally be compiled when used with
--  standard versions of GNAT, which do not support this package. See comments
--  in spec for further details.

package body Ada.Asynchronous_Task_Control is

   --------------
   -- Continue --
   --------------

   procedure Continue (T : Ada.Task_Identification.Task_Id) is
   begin
      null;
   end Continue;

   ----------
   -- Hold --
   ----------

   procedure Hold (T : Ada.Task_Identification.Task_Id) is
   begin
      raise Program_Error;
   end Hold;

   -------------
   -- Is_Held --
   -------------

   function Is_Held (T : Ada.Task_Identification.Task_Id) return Boolean is
   begin
      return False;
   end Is_Held;

end Ada.Asynchronous_Task_Control;
