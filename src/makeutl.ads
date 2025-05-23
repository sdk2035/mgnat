------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                              M A K E U T L                               --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 2004-2005 Free Software Foundation, Inc.          --
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
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

with Osint;
with Prj;   use Prj;
with Types; use Types;

with GNAT.OS_Lib; use GNAT.OS_Lib;

package Makeutl is

   type Fail_Proc is access procedure
     (S1 : String;
      S2 : String := "";
      S3 : String := "");
   Do_Fail : Fail_Proc := Osint.Fail'Access;
   --  Comment required ???

   function Unit_Index_Of (ALI_File : File_Name_Type) return Int;
   --  Find the index of a unit in a source file. Return zero if the file
   --  is not a multi-unit source file.

   function Is_External_Assignment (Argv : String) return Boolean;
   --  Verify that an external assignment switch is syntactically correct
   --
   --  Correct forms are:
   --
   --      -Xname=value
   --      -X"name=other value"
   --
   --  Assumptions: 'First = 1, Argv (1 .. 2) = "-X"
   --  When this function returns True, the external assignment has
   --  been entered by a call to Prj.Ext.Add, so that in a project
   --  file, External ("name") will return "value".

   function Linker_Options_Switches
     (Project  : Project_Id;
      In_Tree  : Project_Tree_Ref) return String_List;
   --  Collect the options specified in the Linker'Linker_Options attributes
   --  of project Project, in project tree In_Tree, and in the projects that
   --  it imports directly or indirectly, and returns the result.

   --  Package Mains is used to store the mains specified on the command line
   --  and to retrieve them when a project file is used, to verify that the
   --  files exist and that they belong to a project file.

   package Mains is

      --  Mains are stored in a table. An index is used to retrieve the mains
      --  from the table.

      procedure Add_Main (Name : String);
      --  Add one main to the table

      procedure Delete;
      --  Empty the table

      procedure Reset;
      --  Reset the index to the beginning of the table

      function Next_Main return String;
      --  Increase the index and return the next main.
      --  If table is exhausted, return an empty string.

      function Number_Of_Mains return Natural;
      --  Returns the number of mains added with Add_Main since the last call
      --  to Delete.

   end Mains;

   procedure Test_If_Relative_Path
     (Switch             : in out String_Access;
      Parent             : String_Access;
      Including_L_Switch : Boolean := True);
   --  Test if Switch is a relative search path switch.
   --  If it is, fail if Parent is null, otherwise prepend the path with
   --  Parent. This subprogram is only called when using project files.
   --  For gnatbind switches, Including_L_Switch is False, because the
   --  argument of the -L switch is not a path.

   ----------------------
   -- Marking Routines --
   ----------------------

   procedure Mark (Source_File : File_Name_Type; Index : Int := 0);
   --  Mark a unit, identified by its source file and, when Index is not 0,
   --  the index of the unit in the source file. Marking is used to signal
   --  that the unit has already been inserted in the Q.

   function Is_Marked
     (Source_File : File_Name_Type;
      Index       : Int := 0) return Boolean;
   --  Returns True if the unit was previously marked.

   procedure Delete_All_Marks;
   --  Remove all file/index couples marked

end Makeutl;
