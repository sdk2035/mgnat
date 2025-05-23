------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                     S Y S T E M . T R A C E B A C K                      --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision: 1.2 $
--                                                                          --
--           Copyright (C) 1999-2000 Ada Core Technologies, Inc.            --
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

pragma Polling (Off);
--  We must turn polling off for this unit, because otherwise we get
--  elaboration circularities with System.Exception_Tables.

--  This package provides a method for generating a traceback of the
--  current execution location. The traceback shows the locations of
--  calls in the call chain, up to either the top or a designated
--  number of levels.

package System.Traceback is

   ----------------
   -- Call_Chain --
   ----------------

   procedure Call_Chain
     (Traceback   : System.Address;
      Max_Len     : Natural;
      Len         : out Natural;
      Exclude_Min,
      Exclude_Max : System.Address := System.Null_Address);
   --  Store up to Max_Len code locations in Traceback, corresponding to the
   --  current call chain.
   --  Traceback is the address is an array of addresses.
   --  Max_Len is the len of Traceback.
   --  Len is the returned actual number of addresses stored in Traceback.
   --  Exclude_Min/Exclude_Max, if non null, provide a range of addresses to
   --  ignore from the computation of the traceback.

   function C_Call_Chain
     (Traceback   : System.Address;
      Max_Len     : Natural) return Natural;
   pragma Export (C, C_Call_Chain, "system__traceback__c_call_chain");
   --  Version that can be used directly from C.

end System.Traceback;
