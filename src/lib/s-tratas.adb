------------------------------------------------------------------------------
--                                                                          --
--                GNU ADA RUN-TIME LIBRARY (GNARL) COMPONENTS               --
--                                                                          --
--                 S Y S T E M . T R A C E S . T A S K I N G                --
--                                                                          --
--                                  B o d y                                 --
--                                                                          --
--                             $Revision: 1.6 $
--                                                                          --
--             Copyright (C) 2001 Free Software Foundation, Inc.            --
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
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- It is now maintained by Ada Core Technologies Inc (http://www.gnat.com). --
--                                                                          --
------------------------------------------------------------------------------

package body System.Traces.Tasking is

   pragma Warnings (Off); -- kill warnings on unreferenced formals

   ---------------------
   -- Send_Trace_Info --
   ---------------------

   procedure Send_Trace_Info (Id : Trace_T; Task_Name2 : ST.Task_ID) is
   begin
      null;
   end Send_Trace_Info;

   procedure Send_Trace_Info
     (Id           : Trace_T;
      Task_Name2   : ST.Task_ID;
      Entry_Number : ST.Entry_Index)
   is
   begin
      null;
   end Send_Trace_Info;

   procedure Send_Trace_Info
     (Id           : Trace_T;
      Task_Name    : ST.Task_ID;
      Task_Name2   : ST.Task_ID;
      Entry_Number : ST.Entry_Index)
   is
   begin
      null;
   end Send_Trace_Info;

   procedure Send_Trace_Info
     (Id         : Trace_T;
      Task_Name  : ST.Task_ID;
      Task_Name2 : ST.Task_ID)
   is
   begin
      null;
   end Send_Trace_Info;

   procedure Send_Trace_Info
     (Id           : Trace_T;
      Entry_Number : ST.Entry_Index)
   is
   begin
      null;
   end Send_Trace_Info;

   procedure Send_Trace_Info
     (Id           : Trace_T;
      Acceptor     : ST.Task_ID;
      Entry_Number : ST.Entry_Index;
      Timeout      : Duration)
   is
   begin
      null;
   end Send_Trace_Info;

   procedure Send_Trace_Info
     (Id           : Trace_T;
      Entry_Number : ST.Entry_Index;
      Timeout      : Duration)
   is
   begin
      null;
   end Send_Trace_Info;

   procedure Send_Trace_Info
     (Id        : Trace_T;
      Task_Name : ST.Task_ID;
      Number    : Integer)
   is
   begin
      null;
   end Send_Trace_Info;

   procedure Send_Trace_Info
     (Id        : Trace_T;
      Task_Name : ST.Task_ID;
      Number    : Integer;
      Timeout   : Duration)
   is
   begin
      null;
   end Send_Trace_Info;

end System.Traces.Tasking;
