------------------------------------------------------------------------------
--                                                                          --
--                GNU ADA RUN-TIME LIBRARY (GNARL) COMPONENTS               --
--                                                                          --
--                S Y S T E M . T A S K _ P R I M I T I V E S .             --
--                   I N T E R R U P T _ O P E R A T I O N S                --
--                                                                          --
--                                  B o d y                                 --
--                                                                          --
--                             $Revision: 1.6 $
--                                                                          --
--          Copyright (C) 1998-2001 Free Software Foundation, Inc.          --
--                                                                          --
-- GNARL is free software; you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion. GNARL is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNARL; see file COPYING.  If not, write --
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
-- GNARL was developed by the GNARL team at Florida State University. It is --
-- now maintained by Ada Core Technologies Inc. in cooperation with Florida --
-- State University (http://www.gnat.com).                                  --
--                                                                          --
------------------------------------------------------------------------------

package body System.Task_Primitives.Interrupt_Operations is

   --  ??? The VxWorks version of System.Interrupt_Management needs to access
   --  this array, but due to elaboration problems, it can't with this
   --  package directly, so we export this variable for now.

   Interrupt_ID_Map : array (IM.Interrupt_ID) of ST.Task_ID;
   pragma Export (Ada, Interrupt_ID_Map,
     "system__task_primitives__interrupt_operations__interrupt_id_map");

   ----------------------
   -- Get_Interrupt_ID --
   ----------------------

   function Get_Interrupt_ID (T : ST.Task_ID) return IM.Interrupt_ID is
      use type ST.Task_ID;

   begin
      for Interrupt in IM.Interrupt_ID loop
         if Interrupt_ID_Map (Interrupt) = T then
            return Interrupt;
         end if;
      end loop;

      raise Program_Error;
   end Get_Interrupt_ID;

   -----------------
   -- Get_Task_ID --
   -----------------

   function Get_Task_ID (Interrupt : IM.Interrupt_ID) return ST.Task_ID is
   begin
      return Interrupt_ID_Map (Interrupt);
   end Get_Task_ID;

   ----------------------
   -- Set_Interrupt_ID --
   ----------------------

   procedure Set_Interrupt_ID (Interrupt : IM.Interrupt_ID; T : ST.Task_ID) is
   begin
      Interrupt_ID_Map (Interrupt) := T;
   end Set_Interrupt_ID;

end System.Task_Primitives.Interrupt_Operations;
