------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                          G N A T . O S _ L I B                           --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision: 1.89 $
--                                                                          --
--          Copyright (C) 1995-2002 Free Software Foundation, Inc.          --
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
-- GNAT is maintained by Ada Core Technologies Inc (http://www.gnat.com).   --
--                                                                          --
------------------------------------------------------------------------------

--  Operating system interface facilities

--  This package contains types and procedures for interfacing to the
--  underlying OS. It is used by the GNAT compiler and by tools associated
--  with the GNAT compiler, and therefore works for the various operating
--  systems to which GNAT has been ported. This package will undoubtedly
--  grow as new services are needed by various tools.

--  This package tends to use fairly low-level Ada in order to not bring
--  in large portions of the RTL. For example, functions return access
--  to string as part of avoiding functions returning unconstrained types.

--  Except where specifically noted, these routines are portable across
--  all GNAT implementations on all supported operating systems.

with Unchecked_Deallocation;

package GNAT.OS_Lib is
pragma Elaborate_Body (OS_Lib);

   type String_Access is access all String;
   --  General purpose string access type. Some of the functions in this
   --  package allocate string results on the heap, and return a value of
   --  this type. Note that the caller is responsible for freeing this
   --  String to avoid memory leaks.

   procedure Free is new Unchecked_Deallocation
     (Object => String, Name => String_Access);
   --  This procedure is provided for freeing returned values of type
   --  String_Access

   type String_List is array (Positive range <>) of String_Access;
   type String_List_Access is access all String_List;
   --  General purpose array and pointer for list of string accesses

   procedure Delete_File (Name : String; Success : out Boolean);
   --  Deletes file. Success is set True or False indicating if the delete is
   --  successful.

   procedure Rename_File
     (Old_Name : String;
      New_Name : String;
      Success  : out Boolean);
   --  Rename a file. Success is set True or False indicating if the rename is
   --  successful.
   --  The following defines the mode for the Copy_File procedure below. Note
   --  that "time stamps and other file attributes" in the descriptions below
   --  refers to the creation and last modification times, and also the file
   --  access (read/write/execute) status flags.

   type Copy_Mode is
     (Copy,
      --  Copy the file. It is an error if the target file already exists. The
      --  time stamps and other file attributes are preserved in the copy.

      Overwrite,
      --  If the target file exists, the file is replaced otherwise the file
      --  is just copied. The time stamps and other file attributes are
      --  preserved in the copy.

      Append);
      --  If the target file exists, the contents of the source file is
      --  appended at the end. Otherwise the source file is just copied. The
      --  time stamps and other file attributes are are preserved if the
      --  destination file does not exist.
   type Attribute is
     (Time_Stamps,
      --  Copy time stamps from source file to target file. All other
      --  attributes are set to normal default values for file creation.

      Full,
      --  All attributes are copied from the source file to the target file.
      --  This includes the timestamps, and for example also includes
      --  read/write/execute attributes in Unix systems.

      None);
      --  No attributes are copied. All attributes including the time stamp
      --  values are set to normal default values for file creation.

   --  Note: The default is Time_Stamps, which corresponds to the normal
   --  default on Windows style systems. Full corresponds to the typical
   --  effect of "cp -p" on Unix systems, and None corresponds to the typical
   --  effect of "cp" on Unix systems.

   --  Note: Time_Stamps and Full are not supported on VMS and VxWorks

   procedure Copy_File
     (Name     : String;
      Pathname : String;
      Success  : out Boolean;
      Mode     : Copy_Mode := Copy;
      Preserve : Attribute := Time_Stamps);
   --  Copy a file. Name must designate a single file (no wild cards allowed).
   --  Pathname can be a filename or directory name. In the latter case Name
   --  is copied into the directory preserving the same file name. Mode
   --  defines the kind of copy, see above with the default being a normal
   --  copy in which the target file must not already exist. Success is set to
   --  True or False indicating if the copy is successful (depending on the
   --  specified Mode).
   --
   --  Note: this procedure is only supported to a very limited extent on VMS.
   --  The only supported mode is Overwrite, and the only supported value for
   --  Preserve is None, resulting in the default action which for Overwrite
   --  is to leave attributes unchanged. Furthermore, the copy only works for
   --  simple text files.

   function Normalize_Pathname
     (Name      : String)
      return      String;
   --  Returns a file name as an absolute path name, resolving all relative
   --  directories, and symbolic links.
   --  Name is the name of a file, which is either relative to the current
   --  directory if Directory is null. The result returned is the normalized
   --  name of the file. For most cases, if two file names designate the same
   --  file through different paths, Normalize_Pathname will return the same
   --  canonical name in both cases. However, there are cases when this is
   --  not true; for example, this is not true in Unix for two hard links
   --  designating the same file.
   --
   --  If Name cannot be resolved or is null on entry (for example if there is
   --  a circularity in symbolic links: A is a symbolic link for B, while B is
   --  a symbolic link for A), then Normalize_Pathname returns an empty string.
   --
   --  In VMS, if Name follows the VMS syntax file specification, it is first
   --  converted into Unix syntax. If the conversion fails, Normalize_Pathname
   --  returns an empty string.

   function Is_Absolute_Path (Name : String) return Boolean;
   --  Returns True if Name is an absolute path name, i.e. it designates
   --  a directory absolutely, rather than relative to another directory.

   function Is_Regular_File (Name : String) return Boolean;
   --  Determines if the given string, Name, is the name of an existing
   --  regular file. Returns True if so, False otherwise.

   function Is_Directory (Name : String) return Boolean;
   --  Determines if the given string, Name, is the name of a directory.
   --  Returns True if so, False otherwise.

   function Is_Writable_File (Name : String) return Boolean;
   --  Determines if the given string, Name, is the name of an existing
   --  file that is writable. Returns True if so, False otherwise.

   ------------------
   -- Subprocesses --
   ------------------

   subtype Argument_List is String_List;
   --  Type used for argument list in call to Spawn. The lower bound
   --  of the array should be 1, and the length of the array indicates
   --  the number of arguments.

   subtype Argument_List_Access is String_List_Access;
   --  Type used to return Argument_List without dragging in secondary stack.

   procedure Normalize_Arguments (Args : in out Argument_List);
   --  Normalize all arguments in the list. This ensure that the argument list
   --  is compatible with the running OS and will works fine with Spawn and
   --  Non_Blocking_Spawn for example. If Normalize_Arguments is called twice
   --  on the same list it will do nothing the second time. Note that Spawn
   --  and Non_Blocking_Spawn call Normalize_Arguments automatically, but
   --  since there is a guarantee that a second call does nothing, this
   --  internal call with have no effect if Normalize_Arguments is called
   --  before calling Spawn. The call to Normalize_Arguments assumes that
   --  the individual referenced arguments in Argument_List are on the heap,
   --  and may free them and reallocate if they are modified.

   procedure Spawn
     (Program_Name : String;
      Args         : Argument_List;
      Success      : out Boolean);
   --  The first parameter of function Spawn is the name of the executable.
   --  The second parameter contains the arguments to be passed to the
   --  program. Success is False if the named program could not be spawned
   --  or its execution completed unsuccessfully. Note that the caller will
   --  be blocked until the execution of the spawned program is complete.
   --  For maximum portability, use a full path name for the Program_Name
   --  argument. On some systems (notably Unix systems) a simple file
   --  name may also work (if the executable can be located in the path).
   --
   --  Note: Arguments in Args that contain spaces and/or quotes such as
   --  "--GCC=gcc -v" or "--GCC=""gcc -v""" are not portable across all
   --  operating systems, and would not have the desired effect if they
   --  were passed directly to the operating system. To avoid this problem,
   --  Spawn makes an internal call to Normalize_Arguments, which ensures
   --  that such arguments are modified in a manner that ensures that the
   --  desired effect is obtained on all operating systems. The caller may
   --  call Normalize_Arguments explicitly before the call (e.g. to print
   --  out the exact form of arguments passed to the operating system). In
   --  this case the guarantee a second call to Normalize_Arguments has no
   --  effect ensures that the internal call will not affect the result.
   --  Note that the implicit call to Normalize_Arguments may free and
   --  reallocate some of the individual arguments.
   --
   --  This function will always set Success to False under VxWorks and
   --  other similar operating systems which have no notion of the concept
   --  of a dynamically executable file.

   function Spawn
     (Program_Name : String;
      Args         : Argument_List)
      return         Integer;
   --  Similar to the above procedure, but returns the actual status returned
   --  by the operating system, or -1 under VxWorks and any other similar
   --  operating systems which have no notion of separately spawnable programs.

   type Process_Id is private;
   --  A private type used to identify a process activated by the following
   --  non-blocking call. The only meaningful operation on this type is a
   --  comparison for equality.

   Invalid_Pid : constant Process_Id;
   --  A special value used to indicate errors, as described below.

   function Non_Blocking_Spawn
     (Program_Name : String;
      Args         : Argument_List)
      return         Process_Id;
   --  This is a non blocking call. The Process_Id of the spawned process
   --  is returned. Parameters are to be used as in Spawn. If Invalid_Id
   --  is returned the program could not be spawned.
   --
   --  This function will always return Invalid_Id under VxWorks, since
   --  there is no notion of executables under this OS.

   procedure Wait_Process (Pid : out Process_Id; Success : out Boolean);
   --  Wait for the completion of any of the processes created by previous
   --  calls to Non_Blocking_Spawn. The caller will be suspended until one
   --  of these processes terminates (normally or abnormally). If any of
   --  these subprocesses terminates prior to the call to Wait_Process (and
   --  has not been returned by a previous call to Wait_Process), then the
   --  call to Wait_Process is immediate. Pid identifies the process that
   --  has terminated (matching the value returned from Non_Blocking_Spawn).
   --  Success is set to True if this sub-process terminated successfully.
   --  If Pid = Invalid_Id, there were no subprocesses left to wait on.
   --
   --  This function will always set success to False under VxWorks, since
   --  there is no notion of executables under this OS.

   function Argument_String_To_List
     (Arg_String : String)
      return       Argument_List_Access;
   --  Take a string that is a program and it's arguments and parse it into
   --  an Argument_List. Note that the result is allocated on the heap, and
   --  must be freed by the programmer if it is no longer needed to avoid
   --  memory leaks.

   -------------------
   -- Miscellaneous --
   -------------------

   procedure OS_Exit (Status : Integer);
   pragma Import (C, OS_Exit, "__gnat_os_exit");
   pragma No_Return (OS_Exit);
   --  Exit to OS with given status code (program is terminated)

   procedure OS_Abort;
   pragma Import (C, OS_Abort, "abort");
   pragma No_Return (OS_Abort);
   --  Exit to OS signalling an abort (traceback or other appropriate
   --  diagnostic information should be given if possible, or entry made
   --  to the debugger if that is possible).

   function Errno return Integer;
   pragma Import (C, Errno, "__get_errno");
   --  Return the task-safe last error number.

   procedure Set_Errno (Errno : Integer);
   pragma Import (C, Set_Errno, "__set_errno");
   --  Set the task-safe error number.

   Directory_Separator : constant Character := '\';
   --  The character that is used to separate parts of a pathname.

   Path_Separator : constant Character := ';';
   --  The character to separate paths in an environment variable value.

private

   type OS_Time is new Long_Integer;

   type File_Descriptor is new Integer;

   Standin    : constant File_Descriptor :=  0;
   Standout   : constant File_Descriptor :=  1;
   Standerr   : constant File_Descriptor :=  2;
   Invalid_FD : constant File_Descriptor := -1;

   type Process_Id is new Integer;
   Invalid_Pid : constant Process_Id := -1;

end GNAT.OS_Lib;
