--  Copyright Ada_Med a Division of Newport Instruments.
--  All rights reserved.
--  Author: Robert C. Leif, Ph.D.
--  Revised 23 October, 2002 to take long names without a circular dependancy.
--  Have to use Ada.Strings.Bounded
--  Revised 6 September 1999 to include Pkg_Name
--  Revised 6 April 1998 to become a child of Output_Text_files.
--  Date: 3 Dec. 1997

--  Revised 25 August, 1998 To Instantiate Output_Text_Files
--  needs body to assure loging of exceptions.
--  Revised 14 September to create the Log_File_Name_W_ext_bd
--  internally. External creation did NOT work.
--  Revised 15 September 99 as a stand-alone package to replace error-file
--  in Output_Text_Files
--  ***Log.Adb has special instructions.***--
--  Revised 9 September 1999 to include the function Log_File_Is.
--   This function should permit Log_File to be used as an argument in
--  subprograms
--  of other packages.
--  Eliminate File_Names.DOS dependancies
--  Revised 10Feb05
--  The Log packages witll be transfered to a seperate directory and project,
--  Log.
--  This removes all dependancies from Log. It is now at the top of the list of
--  projects
with Ada.Text_IO;
with Ada.Strings.Bounded;
with Ada.Exceptions;
package Log is
   --  Most of Output_Text_Files has been renamed to provide direct
   --  visability to the users of Log.
   Pkg_Name : constant String := "Log";
   --  ------------Table of Contents-------------
   package T_Io renames Ada.Text_IO;
   subtype Count is T_Io.Count;
   ---------- End Table of Contents-------------
   Subtype Log_File_Type is T_Io.File_Type;
   Log_File   : Log_File_Type;
   Test       : Boolean        := True;  --  Eventually this will control the
   Log_To_Crt : Boolean        := False;
   --  Log_To_Crt replaces And_Crt in Output_Text_Files.
   --  This makes sure that the Log.Log_To_Crt controls the Put_F &
   --  Put_Line_F Procedures.
   --  This over-ride will be needed
   --  for all instantiations of Output_Text_Files.
   type Log_Not_Open_Type is
         (To_Crt,
          To_Error_Log);
   Max_File_Name_Length :          Positive := 76;
   Ext                  : constant String   := "Log";
   package Log_File_Name_W_Ext_Bd_Pkg is new
      Ada.Strings.Bounded.Generic_Bounded_Length
      (Max => Max_File_Name_Length + Ext'Length + 1);
   --  76 +3 + 1 for period = 80.
   use Log_File_Name_W_Ext_Bd_Pkg;
   subtype Log_File_Name_W_Ext_Bd_Type is
      Log_File_Name_W_Ext_Bd_Pkg.Bounded_String;
   Null_Log_File_Name_W_Ext_Bd : Log_File_Name_W_Ext_Bd_Type
     := Log_File_Name_W_Ext_Bd_Pkg.Null_Bounded_String;
   subtype Positive_Count is T_Io.Positive_Count;
   --  ---------------------------------------------------------
   --  Must_Name_And_Create_Log permits initialization of the log
   --  in the main program (procedure)!
   function Must_Name_And_Create_Log (
         Mode          : T_Io.File_Mode := T_Io.Out_File;
         Log_File_Name : String)
      return Boolean;
   --------------------------------------------------------
   function Img (
         Log_File_Name_W_Ext_Bd : in     Log_File_Name_W_Ext_Bd_Type)
     return String renames Log_File_Name_W_Ext_Bd_Pkg.To_String;
   -----------------------------------------------------------
   function Create_Log_File_Name_W_Ext_Bd (
         Log_File_Name : in     String)
     return Log_File_Name_W_Ext_Bd_Type;
   ---------------------------------------------------------------------
   procedure Exit_Process;
   -------------------------------------------------------------------
   procedure Create_Log (
         Log_File_Name_W_Ext_Bd : Log_File_Name_W_Ext_Bd_Type);
   -------------------------------------------------------------------
   procedure Open_Log (
         Log_File_Name_W_Ext_Bd : Log_File_Name_W_Ext_Bd_Type);
   ------------------------------------------------------------------
   function  Name return String;
   ------------------------------------------------------------------
   procedure Close_Log;
   -------------------------------------------------------------------
   procedure Put_Line_F (
         Log_String   : in     String;
         And_Crt      : in     Boolean           := Log_To_Crt;
         Log_Not_Open :        Log_Not_Open_Type := To_Error_Log);
   ------------------------------------------------------
   procedure Put_F (
         Log_String   : in     String;
         And_Crt      : in     Boolean           := Log_To_Crt;
         Log_Not_Open :        Log_Not_Open_Type := To_Error_Log);
   ------------------------------------------------------
   --  This has been added for completeness to handle wide strings.
   --  Presently, it just puts "can not put a wide_string into Log_File."
   procedure Put_Line16_F (
         Log_String16   : in     Wide_String;
         And_Crt      : in     Boolean           := Log_To_Crt;
         Log_Not_Open :        Log_Not_Open_Type := To_Error_Log);
   ------------------------------------------------------
   --  This has been added for completeness to handle wide strings.
   --  Presently, it just puts "can not put a wide_string into Log_File."
   procedure Put16_F (
         Log_String16   : in     Wide_String;
         And_Crt      : in     Boolean           := Log_To_Crt;
         Log_Not_Open :        Log_Not_Open_Type := To_Error_Log);
   ------------------------------------------------------
   procedure Set_Line_Length (To : Count);
------------------------------------------------------
   function Is_Log_Open return Boolean;
   -------------------------------------------------------
   function Get_File_Name return String;
   ------------------------------------------------------------------
   procedure Set_Col_F (
         To : in     Positive_Count);
   ------------------------------------------------------
   function Log_Mode_Is return T_Io.File_Mode;
   ---------------------------------------------
   function Log_File_Is return T_Io.File_Type;
   ---------------------------------------------
   procedure Log_Exception (
         The_Exception_Occurrence : in     Ada.Exceptions.Exception_Occurrence;
                            Error_Message            : in     String
                            := "No Error Message");
   -------------------------------------------------

end Log;
