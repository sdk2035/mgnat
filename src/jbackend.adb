------------------------------------------------------------------------------
--                                                                          --
--                        JGNAT COMPILER COMPONENTS                         --
--                                                                          --
--                             B A C K _ E N D                              --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                             $Revision: 1.3 $                             --
--                                                                          --
--           Copyright (C) 1998-1999 Ada Core Technologies, Inc.            --
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
-- JGNAT -  The GNAT Ada 95 tool chain for the Java (TM) Virtual Machine is --
--          maintained by Ada Core Technologies, Inc. - http://www.gnat.com --
--                                                                          --
------------------------------------------------------------------------------

--  This is the JGNAT target dependent version of procedure Back_End.

with Debug;     use Debug;
with Lib;       use Lib;
with Opt;       use Opt;
with Osint;     use Osint;
with Osint.C;   use Osint.C;
with Switch;    use Switch;
with Switch.C;  use Switch.C;
with Types;     use Types;
with Jx_Drive;
with Output;  use Output;
with Ada.Command_Line; use Ada.Command_Line;

package body Back_End is

   procedure Call_Back_End (Mode : Back_End_Mode_Type) is
      pragma Warnings (Off, Mode);
   begin
      if (Opt.Verbose_Mode or Opt.Full_List)
        and then (not Debug.Debug_Flag_7)
      then
         Write_Eol;
         Write_Str ("JGNAT,");
         Write_Str (" Copyright 1998-1999 Ada Core Technologies, Inc.");
         Write_Str (" (http://www.gnat.com)");
         Write_Eol;
         Write_Eol;
      end if;

      Jx_Drive.GNAT_To_JVM (Lib.Cunit (Types.Main_Unit));
   end Call_Back_End;

   -----------------------------
   -- Scan_Compiler_Arguments --
   -----------------------------

   procedure Scan_Compiler_Arguments is

      Next_Arg : Pos := 1;

      Output_File_Name_Seen : Boolean := False;
      --  Set to True after having scanned the file_name for
      --  switch "-gnatO file_name"

      --  Local functions

      procedure Scan_Back_End_Switches (Switch_Chars : String);
      --  Procedure to scan out switches stored in Switch_Chars. The first
      --  character is known to be a valid switch character, and there are no
      --  blanks or other switch terminator characters in the string, so the
      --  entire string should consist of valid switch characters, except that
      --  an optional terminating NUL character is allowed.
      --
      --  Back end switches have already been checked and processed by GCC
      --  in toplev.c, so no errors can occur and control will always return.
      --  The switches must still be scanned to skip the arguments of the
      --  "-o" or the (undocumented) "-dumpbase" switch, by incrementing
      --  the Next_Arg variable. The "-dumpbase" switch is used to set the
      --  basename for GCC dumpfiles.

      ----------------------------
      -- Scan_Back_End_Switches --
      ----------------------------

      procedure Scan_Back_End_Switches (Switch_Chars : String) is
         First : constant Positive := Switch_Chars'First + 1;
         Last  : Natural := Switch_Chars'Last;

      begin
         if Last >= First
           and then Switch_Chars (Last) = ASCII.NUL
         then
            Last := Last - 1;
         end if;

         --  For dumpbase and o, skip following argument and do not
         --  store either the switch or the following argument

         if Switch_Chars (First .. Last) = "o"
            or else Switch_Chars (First .. Last) = "dumpbase"

         then
            Next_Arg := Next_Arg + 1;

         --  Do not record -quiet switch

         elsif Switch_Chars (First .. Last) = "quiet" then
            null;

         else
            --  Store any other GCC switches

            Store_Compilation_Switch (Switch_Chars);
         end if;
      end Scan_Back_End_Switches;

   --  Start of processing for Scan_Compiler_Arguments

   begin
      --  Acquire stack checking mode directly from GCC

      Opt.Stack_Checking_Enabled := False;

      --  Loop through command line arguments, storing them for later access

      while Natural (Next_Arg) <= Argument_Count loop

         Look_At_Arg : declare
            Argv : constant String := Argument (Integer (Next_Arg));

         begin
            --  If the previous switch has set the Output_File_Name_Present
            --  flag (that is we have seen a -gnatO), then the next argument
            --  is the name of the output object file.

            if Output_File_Name_Present
              and then not Output_File_Name_Seen
            then
               if Is_Switch (Argv) then
                  Fail ("Object file name missing after -gnatO");

               else
                  Set_Output_Object_File_Name (Argv);
                  Output_File_Name_Seen := True;
               end if;

            elsif not Is_Switch (Argv) then -- must be a file name
               Add_File (Argv);

            --  We must recognize -nostdinc to suppress visibility on the
            --  standard GNAT RTL sources. This is also a gcc switch.

            elsif Argv (Argv'First + 1 .. Argv'Last) = "nostdinc" then
               Opt.No_Stdinc := True;
               Scan_Back_End_Switches (Argv);

            elsif Is_Front_End_Switch (Argv) then
               Scan_Front_End_Switches (Argv);

            --  All non-front-end switches are back-end switches

            else
               Scan_Back_End_Switches (Argv);
            end if;
         end Look_At_Arg;

         Next_Arg := Next_Arg + 1;
      end loop;
   end Scan_Compiler_Arguments;
end Back_End;
