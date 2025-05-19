--  Copyright Ada_Med a Division of Newport Instruments.
--  All rights reserved.
--  Author: Robert C. Leif, Ph.D.
--  Created 8 September, 1998 to make sure Log_Exception works.
--  Modified 29 April, 2004 to set the line length.
--  Modified 4 December 2002 to include Wide_Strings.
--  Modified to 23 October, 2002 to use Generic_Bd_String_Ops in Log.Ads
--  Modified to 7 September, 2002 to include return statements in exception
--  handlers for functions and to use the exception(letter).
--  Modified 20 August, 2002 to eliminate Aonix and use GNAT OS calls

--  Modified 9 September, 1999
--  Simplified Put_Line_F and Put_F to have a common error handling procedure
--  Log_Not_Open_Ops
--  File name Log.Adb
--  special Instructions
--  Register The Objectada\lib\Dos.Ads, Dos.Adb, Dose.Ads, and Dos.Adb Files
--  Into Your Project.
--  Add Objectada\win32ada\binding\lib To The Project Search Path.

with Ada.Io_Exceptions;
with Ada.Strings.Bounded;
with Ada.Strings.Fixed;
with Ada.Strings;
with Ada.Task_Identification;
--with GNAT.OS_Lib;
with Ada.Characters.Handling;

package body Log is
   --  Log_File : Ada.Text_Io.File_Type;

   procedure Os_Exit (
         Status : Integer);--From GNAT-OS-Lib
   pragma Import (C, Os_Exit, "__gnat_os_exit");
   pragma No_Return (Os_Exit);
   --  Exit to OS with given status code (program is terminated)


   procedure Os_Abort;--From GNAT-OS-Lib
   pragma Import (C, Os_Abort, "abort");
   pragma No_Return (Os_Abort);
   --  Exit to OS signalling an abort (traceback or other appropriate
   --  diagnostic information should be given if possible, or entry made
   --  to the debugger if that is possible).

   --  ---------------Table of Contents-------------------

   --  ---------------End Table of Contents---------------
   package Error_Messages_Pkg is new
      Ada.Strings.Bounded.Generic_Bounded_Length
      (Max => 255);

   subtype Error_Message_Bd_Type is Error_Messages_Pkg.Bounded_String;
   Null_Error_Message_Bd : Error_Message_Bd_Type := Error_Messages_Pkg.Null_Bounded_String;
   --  This results in an Error_Message without any characters.
   --  -----------------------------------------------------------------
   function Must_Name_And_Create_Log (
         Mode          : T_Io.File_Mode := T_Io.Out_File;
         Log_File_Name : String)
     return Boolean is
      Log_Named_And_Created      : Boolean   := False;
      Something_Very_Wrong_Error : exception;
   begin  --  Must_Name_and_Create_Log
      if not T_Io.Is_Open (Log_File) then
         T_Io.Put_Line
            ("Name_and_Create_Log. Properly was not open. Log created");
         T_Io.Create
            (
            File => Log_File,
            Mode => T_Io.Out_File,
            Name => Log_File_Name & ".Log");
      end if;
      if not Is_Log_Open then
         raise Something_Very_Wrong_Error;
      else
         Log_Named_And_Created := True;
      end if;
      return Log_Named_And_Created;
   exception
      when S : Something_Very_Wrong_Error =>
         --  Assume can not write to file.
         T_Io.Put_Line ("Something_Very_Wrong_Error in Log.Create_Log."
            );
         T_Io.Put_Line ("Could not Open Log.");
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (S));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (S));
         return not Log_Named_And_Created;
      --  Exit_Process;


      when N : Ada.Io_Exceptions.Name_Error =>
         T_Io.Put_Line ("Name_Error in Log.Create_Log.");
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (N));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (N));
         return not Log_Named_And_Created;
      --  Exit_Process;

      when O : others =>  --  Complete Mystery
         T_Io.Put_Line ("Others Exception in Log.Create_Log.");
         T_Io.Put_Line (Ada.Exceptions.Exception_Name (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (O));
         return not Log_Named_And_Created;
         --  Exit_Process;
   end Must_Name_And_Create_Log;
   ---------------------------------------------------


   function Create_Log_File_Name_W_Ext_Bd (
         Log_File_Name : in     String)
     return Log_File_Name_W_Ext_Bd_Type is
      Program_Location       : constant String                      := Pkg_Name & " .Create_Log_File_Name_W_ext_bd";
      Log_File_Name_W_Ext_Bd :          Log_File_Name_W_Ext_Bd_Type := Null_Log_File_Name_W_Ext_Bd;
      Too_Long_Error         :          exception;
   begin --  Create_Log_File_Name_W_ext_bd
      if Log_File_Name'Length > Max_File_Name_Length then
         raise Too_Long_Error;
      end if;
      --  Concatinate the 3 parts
      Log_File_Name_W_Ext_Bd
         := Log_File_Name_W_Ext_Bd
         & Ada.Strings.Fixed.Trim (
         Source => Log_File_Name,
         Side   => Ada.Strings.Left);
      Log_File_Name_W_Ext_Bd
         := Log_File_Name_W_Ext_Bd & '.';
      Log_File_Name_W_Ext_Bd
         := Log_File_Name_W_Ext_Bd
         & Ada.Strings.Fixed.Trim (
         Source => Ext,
         Side   => Ada.Strings.Left);
      return Log_File_Name_W_Ext_Bd;
   exception
      when T : Too_Long_Error =>
         --  Assume can not write to file.
         T_Io.Put_Line ("Too_Long_Error in " & Program_Location);
         T_Io.Put_Line ("Log_File_Name is " & Log_File_Name);
         T_Io.Put_Line ("Log_File Extension is " & Ext);
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (T));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (T));
         Exit_Process;
         return Null_Log_File_Name_W_Ext_Bd;
      when O : others =>
         T_Io.Put_Line ("Others Error in " & Program_Location);
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (O));
         Exit_Process;
         return Null_Log_File_Name_W_Ext_Bd;

   end Create_Log_File_Name_W_Ext_Bd;
   ---------------------------------------------------------------------
   --  Log_File_Name_W_ext:  String := Create_Log_File_Name
   --    (Log_File_Name_W_ext_bd);
   ----------------------------------------------------

   procedure Exit_Process is
      Environment_Task : Ada.Task_Identification.Task_Id := Ada.Task_Identification.Current_Task;
      Task_Counter     : Positive                        := 1;
      Task_Counter_Max : Positive                        := 10;
   begin --  Exit_Process
      while Task_Counter <= Task_Counter_Max loop
         Put_Line_F ("Aborting Environment_Task. Task_Counter = " &
            "Positive'Image(Task_Counter)");
         Ada.Task_Identification.Abort_Task (T => Environment_Task);
         Task_Counter := Task_Counter + 1;
      end loop;
      T_Io.Put_Line ("Did NOT Exit_Process. Task_Counter = "
         & "Positive'Image(Task_Counter. Try GNAT OS_Exit");
      --Gnat.Os_Lib.
      Os_Abort;

      --Gnat.Os_Lib.
      Os_Exit (Status => 999); --  999 is arbitrary.
      --  This procedure should probably never happen.
   end Exit_Process;
   -------------------------------------------------------

   procedure Create_Log (
         Log_File_Name_W_Ext_Bd : Log_File_Name_W_Ext_Bd_Type) is
      Something_Very_Wrong_Error : exception;

   begin --  Create Log
      if not Is_Log_Open then
         T_Io.Put_Line ("Log.Create_Log. Properly was not open. Log created"
            );
         T_Io.Create
            (
            File => Log_File,
            Mode => T_Io.Out_File,
            Name => Log_File_Name_W_Ext_Bd_Pkg.To_String (Log_File_Name_W_Ext_Bd));
      end if;
      if not Is_Log_Open then
         raise Something_Very_Wrong_Error;
      end if;

   exception
      when S : Something_Very_Wrong_Error =>
         --  Assume can not write to file.
         T_Io.Put_Line ("Something_Very_Wrong_Error in Log.Create_Log."
            );
         T_Io.Put_Line ("Could not Open Log.");
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (S));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (S));
         Exit_Process;
      when N : Ada.Io_Exceptions.Name_Error =>
         T_Io.Put_Line ("Name_Error in Log.Create_Log.");
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (N));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (N));
         Exit_Process;

      when O : others =>  --  Complete Mystery
         T_Io.Put_Line ("Others Exception in Log.Create_Log.");
         T_Io.Put_Line (Ada.Exceptions.Exception_Name (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (O));
         Exit_Process;
   end Create_Log;
   -------------------------------------------------------------------
   procedure Open_Log (
         Log_File_Name_W_Ext_Bd : Log_File_Name_W_Ext_Bd_Type) is
   begin --  Open_Log
      if not Is_Log_Open then
         T_Io.Open
            (
            File => Log_File,
            Mode => T_Io.Out_File,
            --  Append_File,
            Name => Log_File_Name_W_Ext_Bd_Pkg.To_String (Log_File_Name_W_Ext_Bd));
         T_Io.Put_Line (Log_File, "Log had to be opened");
      end if;
      T_Io.Put_Line (Log_File, "Already Open ");

   end Open_Log;
   -------------------------------------------------------------------
   function Name return String is
      Location      : String := Pkg_Name & ".Name";
      Log_File_Name : String := T_Io.Name (Log_File);
   begin -- Name
      return Log_File_Name;
   end Name;
   ------------------------------------------------------------------
   procedure Close_Log is
   begin --  Close_Log
      T_Io.Close (Log_File);
   end Close_Log;

   -------------------------------------------------------------
   --  Elaborate exceptions because no other way to find out
   --  what happened.
   procedure Log_Not_Open_Ops (
         Log_String   : in     String;
         And_Crt      : in     Boolean           := Log_To_Crt;
         Log_Not_Open :        Log_Not_Open_Type := To_Error_Log) is
      Log_Not_Open_Error : exception;
   begin --  Log_Not_Open_Ops
      T_Io.Put ("Log_File was not open in Log.Log_Not_Open_Ops");
      if Log_Not_Open = To_Error_Log then --  was raise Log_Not_Open_Error;
         T_Io.Create
            (
            File => Log_File,
            Mode => T_Io.Out_File,
            Name => "error.Log");
         if not Is_Log_Open then
            raise Log_Not_Open_Error;
         end if;
         T_Io.Put_Line
            (Log_File, "Log_File not open; had to create error.log");
         T_Io.Put_Line ("Log_File not open; had to create error.log");
         T_Io.Put_Line (Log_File, Log_String);
         T_Io.Put_Line (Log_String);
      else --  to_CRT
         T_Io.Put_Line ("Log_File is not open");
         T_Io.Put_Line (Log_String);
      end if; -- Is_Log_Open
   exception
      when L : Log_Not_Open_Error =>
         T_Io.Put_Line ("Log_Not_Open_Error in Log.Put_Line_F.");
         T_Io.Put_Line
            ("Is_Log_Open " & Boolean'Image (Is_Log_Open));
         T_Io.Put_Line ("Log_String is " & Log_String);
         T_Io.Put_Line (Ada.Exceptions.Exception_Name (L));
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (L));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (L));
         Exit_Process;
      when S : Ada.Io_Exceptions.Status_Error =>
         T_Io.Put_Line ("Status_Error in Log.Put_Line_F.");
         T_Io.Put_Line ("Log_String is " & Log_String);
         T_Io.Put_Line
            ("Is_Log_Open " & Boolean'Image (Is_Log_Open));
         T_Io.Put_Line (Ada.Exceptions.Exception_Name (S));
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (S));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (S));
         T_Io.Put_Line
            ("Mode => " & T_Io.File_Mode'Image (T_Io.Mode (Log_File)));
         Exit_Process;
      when O : others =>
         T_Io.Put_Line ("Others Exception in Log.Put_Line_F.");
         T_Io.Put_Line ("Log_String is " & Log_String);
         T_Io.Put_Line (Ada.Exceptions.Exception_Name (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (O));
         Exit_Process;
   end Log_Not_Open_Ops;
   -------------------------------------------------------------------

   --  Elaborate exceptions because no other way to find out
   --  what happened. Moved bulk of procedure for handling Log_Not_Open to
   --  Its own procedure. Can also be used by Put_F

   procedure Put_Line_F (
         Log_String   : in     String;
         And_Crt      : in     Boolean           := Log_To_Crt;
         Log_Not_Open :        Log_Not_Open_Type := To_Error_Log) is

   begin --  Put_Line_F
      if Is_Log_Open then
         T_Io.Put_Line (Log_File, Log_String);
      else
         Log_Not_Open_Ops (
            Log_String   => Log_String & " in Put_Line_F",
            And_Crt      => And_Crt,
            Log_Not_Open => Log_Not_Open);
      end if;
   exception
      when O : others =>
         T_Io.Put_Line
            ("Others_Error in Log.Put_Line_F; The Log_String is " & Log_String);
         T_Io.Put_Line (Ada.Exceptions.Exception_Name (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (O));
         Close_Log;
         Exit_Process;
   end Put_Line_F;
   ------------------------------------

   --  Elaborate exceptions because no other way to find out
   --  what happened. Moved bulk of procedure for handling Log_Not_Open to
   --  Its own procedure. Can also be used by Put_F

   procedure Put_F (
         Log_String   : in     String;
         And_Crt      : in     Boolean           := Log_To_Crt;
         Log_Not_Open :        Log_Not_Open_Type := To_Error_Log) is

   begin --  Put_F
      if Is_Log_Open then
         T_Io.Put (Log_File, Log_String);
      else
         Log_Not_Open_Ops (
            Log_String   => Log_String & " in Put_F",
            And_Crt      => And_Crt,
            Log_Not_Open => Log_Not_Open);
      end if;
   end Put_F;
   -------------------------------------------------------------------
   --  This has been added for completeness to handle wide strings.
   --  Presently, it just puts "Can not put a wide_string into Log_File."
   --  This is best handled by a simple exception
   procedure Put_Line16_F (
         Log_String16 : in     Wide_String;
         And_Crt      : in     Boolean           := Log_To_Crt;
         Log_Not_Open :        Log_Not_Open_Type := To_Error_Log) is
      Location       : String := Pkg_Name & "Put_Line_16_F";
      Log_String_Var : String := Ada.Characters.Handling.To_String (Log_String16);
   begin --  Put_Line_16_F
      if Is_Log_Open then
         T_Io.Put_Line (Log_File, "Can not put a wide_string into Log_File");
      else
         Log_Not_Open_Ops (
            Log_String   => Log_String_Var & " in Put_Line16_F",
            And_Crt      => And_Crt,
            Log_Not_Open => Log_Not_Open);
      end if;
   exception
      when O : others =>
         Log_Exception
            (
            The_Exception_Occurrence => O,
            Error_Message            => "Others_Error in " & Location);
         Close_Log;
         Exit_Process;
   end Put_Line16_F;
   --  ----------------------------------
   --  This has been added for completeness to handle wide strings.
   --  Presently, it just puts "can not put a wide_string into Log_File."

   --  Elaborate exceptions because no other way to find out
   --  what happened. Moved bulk of procedure for handling Log_Not_Open to
   --  Its own procedure. Can also be used by Put_F

   procedure Put16_F (
         Log_String16 : in     Wide_String;
         And_Crt      : in     Boolean           := Log_To_Crt;
         Log_Not_Open :        Log_Not_Open_Type := To_Error_Log) is
      Location       : String := Pkg_Name & "Put16_F";
      Log_String_Var : String := Ada.Characters.Handling.To_String (Log_String16);
   begin --  Put16_F
      if Is_Log_Open then
         T_Io.Put (Log_File, "Can not put a wide_string into Log_File");
      else
         Log_Not_Open_Ops (
            Log_String   => Log_String_Var & " in Put16_F",
            And_Crt      => And_Crt,
            Log_Not_Open => Log_Not_Open);
      end if;

   exception
      when O : others =>
         Log_Exception
            (
            The_Exception_Occurrence => O,
            Error_Message            => "Others_Error in " & Location);
   end Put16_F;
   --  -----------------------------------------------------------------
   procedure Set_Line_Length (
         To : Count) is
   begin  --  Set_Line_Length
      T_Io.Set_Line_Length (Log_File, To => To);
   end Set_Line_Length;
   --  ----------------------------------------------------

   function Is_Log_Open return Boolean is
   begin --  Is_Log_Open
      return (T_Io.Is_Open (Log_File));
   end Is_Log_Open;
   --  ----------------------------------------------------------------
   function Get_File_Name return String is
   begin  --  Get_File_Name
      return T_Io.Name (Log_File);
   end  Get_File_Name;
   --  ----------------------------------------------------------------
   procedure Set_Col_F (
         To : in     Positive_Count) is
   begin  --  Set_Col_F
      T_Io.Set_Col (
         File => Log_File,
         To   => To);
   exception
      when O : others =>
         Log_Exception
            (
            The_Exception_Occurrence => O,
            Error_Message            => "Others_Error in .Log.Set_Col_F");

   end  Set_Col_F;
   --  ----------------------------------------------------
   function Log_Mode_Is return T_Io.File_Mode is
   begin  --  Log_Mode_Is
      return T_Io.Mode (Log_File);
   end Log_Mode_Is;
   --  ----------------------------------------------------
   function Log_File_Is return T_Io.File_Type is
   begin  --  Log_File_Is
      return Log_File;
   end Log_File_Is;
   --  -------------------------------------------
   function To_Error_Message_Bd (
         Error_Message : in     String)
     return Error_Message_Bd_Type is
      package Strings_Fx renames Ada.Strings.Fixed;
      String_Ln      : Integer := 1;
      String_Trimmed : String  := Ada.Strings.Fixed.Trim (Source => Error_Message, Side => Ada.Strings.Both);
   begin --  To_Error_Message_Bd

      String_Ln := String_Trimmed'Length;

      if Error_Messages_Pkg.Max_Length >=  String_Ln then
         --  Fits in bounded string
         return Error_Messages_Pkg.To_Bounded_String (String_Trimmed);

      else
         --  error; send message and trim string.
         T_Io.Put_Line (Log_File, "In Log.To_Error_Message_Bd");
         T_Io.Put_Line (Log_File, "Error Message Too Large");
         return Error_Messages_Pkg.To_Bounded_String
            (Strings_Fx.Head (Source => String_Trimmed,
               Count => Error_Messages_Pkg.Max_Length,
               Pad   => Ada.Strings.Space));
      end if;
   end To_Error_Message_Bd;
   --  -------------------------------------------------------
   function To_Error_Message_Less_Than_Max_Length (
         Error_Message : in     String)
     return String is
   begin  -- To_Error_Message_Less_Than_Max_Length
      return Error_Messages_Pkg.To_String
         (To_Error_Message_Bd (Error_Message));
   end To_Error_Message_Less_Than_Max_Length;
   --  -------------------------------------------------------


   procedure Log_Exception (
         The_Exception_Occurrence : in     Ada.Exceptions.Exception_Occurrence;
         Error_Message            : in     String                              := "No Error Message") is
      Log_Not_Open_Error : exception;

      --  ------------------------------------------------
   begin --  Log_Exception
      if not Is_Log_Open then
         raise Log_Not_Open_Error;
      end if;

      Log_Process_Exception :
         begin
         T_Io.Put_Line("In Log.Log_Exception.Log_Process_Exception:");

         Put_Line_F (""); --  Separate exception from the preceeding text.
         Put_Line_F ("***************exception Raised.****************"
            );
         Put_Line_F (
            "In Log.Log_Exception."
            & "Should now Process the exception.");
         Put_Line_F (" ");

         Put_Line_F ("Exception Name = "
            & Ada.Exceptions.Exception_Name
            (The_Exception_Occurrence));
         Put_Line_F ("Exception Information = "
            & Ada.Exceptions.Exception_Information
            (The_Exception_Occurrence));
         Put_Line_F ("Exception Message = "
            & Ada.Exceptions.Exception_Message
            (The_Exception_Occurrence));
         --  Put_Line_F (The_Exception_Occurrence.Identity);

         T_Io.Put_Line
            (Log_File, To_Error_Message_Less_Than_Max_Length
               (Error_Message));
         Close_Log;      
         Exit_Process;
      end Log_Process_Exception;
   exception
      when E : Log_Not_Open_Error =>
         T_Io.Put_Line
            ("Log_Not_Open_Error in Log.Log_Exception.");
         T_Io.Put_Line (Ada.Exceptions.Exception_Name (E));
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (E));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (E));
         Exit_Process;
      when S : Ada.Io_Exceptions.Status_Error =>
         T_Io.Put_Line
            ("Status_Error in Log.Log_Exception.");
         T_Io.Put_Line (Ada.Exceptions.Exception_Name (S));
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (S));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (S));
         Close_Log;
         Exit_Process;
      when O : others =>
         T_Io.Put_Line
            ("Others_Error in Log.Log_Exception.");
         T_Io.Put_Line(Error_Message);
         T_Io.Put_Line (Ada.Exceptions.Exception_Name (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Information (O));
         T_Io.Put_Line (Ada.Exceptions.Exception_Message (O));
         Close_Log;
         Exit_Process;

   end Log_Exception;
   --  -------------------------------------------------------------
end Log;
