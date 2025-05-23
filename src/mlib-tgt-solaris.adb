------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                             M L I B . T G T                              --
--                            (Solaris Version)                             --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--              Copyright (C) 2002-2005 Free Software Foundation, Inc.      --
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

--  This package provides a set of target dependent routines to build
--  static, dynamic and shared libraries.

--  This is the Solaris version of the body

with MLib.Fil;
with MLib.Utl;
with Namet;  use Namet;
with Opt;
with Output; use Output;
with Prj.Com;
with System;

package body MLib.Tgt is

   No_Arguments        : aliased Argument_List         := (1 .. 0 => null);
   Empty_Argument_List : constant Argument_List_Access := No_Arguments'Access;

   Wl_Init_String : constant String         := "-Wl,-zinitarray=";
   Wl_Fini_String : constant String         := "-Wl,-zfiniarray=";

   Init_Fini_List :  constant Argument_List_Access :=
                       new Argument_List'(1 => null,
                                          2 => null);

   --  Used to put switches for automatic elaboration/finalization

   ---------------------
   -- Archive_Builder --
   ---------------------

   function Archive_Builder return String is
   begin
      return "ar";
   end Archive_Builder;

   -----------------------------
   -- Archive_Builder_Options --
   -----------------------------

   function Archive_Builder_Options return String_List_Access is
   begin
      return new String_List'(1 => new String'("cr"));
   end Archive_Builder_Options;

   -----------------
   -- Archive_Ext --
   -----------------

   function Archive_Ext return  String is
   begin
      return "a";
   end Archive_Ext;

   ---------------------
   -- Archive_Indexer --
   ---------------------

   function Archive_Indexer return String is
   begin
      return "ranlib";
   end Archive_Indexer;

   -----------------------------
   -- Archive_Indexer_Options --
   -----------------------------

   function Archive_Indexer_Options return String_List_Access is
   begin
      return new String_List (1 .. 0);
   end Archive_Indexer_Options;

   ---------------------------
   -- Build_Dynamic_Library --
   ---------------------------

   procedure Build_Dynamic_Library
     (Ofiles       : Argument_List;
      Foreign      : Argument_List;
      Afiles       : Argument_List;
      Options      : Argument_List;
      Options_2    : Argument_List;
      Interfaces   : Argument_List;
      Lib_Filename : String;
      Lib_Dir      : String;
      Symbol_Data  : Symbol_Record;
      Driver_Name  : Name_Id := No_Name;
      Lib_Version  : String  := "";
      Auto_Init    : Boolean := False)
   is
      pragma Unreferenced (Foreign);
      pragma Unreferenced (Afiles);
      pragma Unreferenced (Interfaces);
      pragma Unreferenced (Symbol_Data);

      Lib_File : constant String :=
                   Lib_Dir & Directory_Separator & "lib" &
                   Fil.Ext_To (Lib_Filename, DLL_Ext);

      Version_Arg          : String_Access;
      Symbolic_Link_Needed : Boolean := False;

      Init_Fini : Argument_List_Access := Empty_Argument_List;

   begin
      if Opt.Verbose_Mode then
         Write_Str ("building relocatable shared library ");
         Write_Line (Lib_File);
      end if;

      --  If specified, add automatic elaboration/finalization

      if Auto_Init then
         Init_Fini := Init_Fini_List;
         Init_Fini (1) :=
           new String'(Wl_Init_String & Lib_Filename & "init");
         Init_Fini (2) :=
           new String'(Wl_Fini_String & Lib_Filename & "final");
      end if;

      if Lib_Version = "" then
         Utl.Gcc
           (Output_File => Lib_File,
            Objects     => Ofiles,
            Options     => Options & Init_Fini.all,
            Options_2   => Options_2,
            Driver_Name => Driver_Name);

      else
         Version_Arg := new String'("-Wl,-h," & Lib_Version);

         if Is_Absolute_Path (Lib_Version) then
            Utl.Gcc
              (Output_File => Lib_Version,
               Objects     => Ofiles,
               Options     => Options & Version_Arg & Init_Fini.all,
               Options_2   => Options_2,
               Driver_Name => Driver_Name);
            Symbolic_Link_Needed := Lib_Version /= Lib_File;

         else
            Utl.Gcc
              (Output_File => Lib_Dir & Directory_Separator & Lib_Version,
               Objects     => Ofiles,
               Options     => Options & Version_Arg & Init_Fini.all,
               Options_2   => Options_2,
               Driver_Name => Driver_Name);
            Symbolic_Link_Needed :=
              Lib_Dir & Directory_Separator & Lib_Version /= Lib_File;
         end if;

         if Symbolic_Link_Needed then
            declare
               Success : Boolean;
               Oldpath : String (1 .. Lib_Version'Length + 1);
               Newpath : String (1 .. Lib_File'Length + 1);

               Result : Integer;
               pragma Unreferenced (Result);

               function Symlink
                 (Oldpath : System.Address;
                  Newpath : System.Address)
                  return    Integer;
               pragma Import (C, Symlink, "__gnat_symlink");

            begin
               Oldpath (1 .. Lib_Version'Length) := Lib_Version;
               Oldpath (Oldpath'Last)            := ASCII.NUL;
               Newpath (1 .. Lib_File'Length)    := Lib_File;
               Newpath (Newpath'Last)            := ASCII.NUL;

               Delete_File (Lib_File, Success);

               Result := Symlink (Oldpath'Address, Newpath'Address);
            end;
         end if;
      end if;
   end Build_Dynamic_Library;

   -------------
   -- DLL_Ext --
   -------------

   function DLL_Ext return String is
   begin
      return "so";
   end DLL_Ext;

   --------------------
   -- Dynamic_Option --
   --------------------

   function Dynamic_Option return String is
   begin
      return "-shared";
   end Dynamic_Option;

   -------------------
   -- Is_Object_Ext --
   -------------------

   function Is_Object_Ext (Ext : String) return Boolean is
   begin
      return Ext = ".o";
   end Is_Object_Ext;

   --------------
   -- Is_C_Ext --
   --------------

   function Is_C_Ext (Ext : String) return Boolean is
   begin
      return Ext = ".c";
   end Is_C_Ext;

   --------------------
   -- Is_Archive_Ext --
   --------------------

   function Is_Archive_Ext (Ext : String) return Boolean is
   begin
      return Ext = ".a" or else Ext = ".so";
   end Is_Archive_Ext;

   -------------
   -- Libgnat --
   -------------

   function Libgnat return String is
   begin
      return "libgnat.a";
   end Libgnat;

   ------------------------
   -- Library_Exists_For --
   ------------------------

   function Library_Exists_For
     (Project : Project_Id; In_Tree : Project_Tree_Ref) return Boolean
   is
   begin
      if not In_Tree.Projects.Table (Project).Library then
         Prj.Com.Fail ("INTERNAL ERROR: Library_Exists_For called " &
                       "for non library project");
         return False;

      else
         declare
            Lib_Dir : constant String :=
              Get_Name_String
                (In_Tree.Projects.Table (Project).Library_Dir);
            Lib_Name : constant String :=
              Get_Name_String
                (In_Tree.Projects.Table (Project).Library_Name);

         begin
            if In_Tree.Projects.Table (Project).Library_Kind =
              Static
            then
               return Is_Regular_File
                 (Lib_Dir & Directory_Separator & "lib" &
                  Fil.Ext_To (Lib_Name, Archive_Ext));

            else
               return Is_Regular_File
                 (Lib_Dir & Directory_Separator & "lib" &
                  Fil.Ext_To (Lib_Name, DLL_Ext));
            end if;
         end;
      end if;
   end Library_Exists_For;

   ---------------------------
   -- Library_File_Name_For --
   ---------------------------

   function Library_File_Name_For
     (Project : Project_Id;
      In_Tree : Project_Tree_Ref) return Name_Id
   is
   begin
      if not In_Tree.Projects.Table (Project).Library then
         Prj.Com.Fail ("INTERNAL ERROR: Library_File_Name_For called " &
                       "for non library project");
         return No_Name;

      else
         declare
            Lib_Name : constant String :=
              Get_Name_String
                (In_Tree.Projects.Table (Project).Library_Name);

         begin
            Name_Len := 3;
            Name_Buffer (1 .. Name_Len) := "lib";

            if In_Tree.Projects.Table (Project).Library_Kind =
              Static
            then
               Add_Str_To_Name_Buffer (Fil.Ext_To (Lib_Name, Archive_Ext));

            else
               Add_Str_To_Name_Buffer (Fil.Ext_To (Lib_Name, DLL_Ext));
            end if;

            return Name_Find;
         end;
      end if;
   end Library_File_Name_For;

   ----------------
   -- Object_Ext --
   ----------------

   function Object_Ext return String is
   begin
      return "o";
   end Object_Ext;

   ----------------
   -- PIC_Option --
   ----------------

   function PIC_Option return String is
   begin
      return "-fPIC";
   end PIC_Option;

   -----------------------------------------------
   -- Standalone_Library_Auto_Init_Is_Supported --
   -----------------------------------------------

   function Standalone_Library_Auto_Init_Is_Supported return Boolean is
   begin
      return True;
   end Standalone_Library_Auto_Init_Is_Supported;

   ---------------------------
   -- Support_For_Libraries --
   ---------------------------

   function Support_For_Libraries return Library_Support is
   begin
      return Full;
   end Support_For_Libraries;

end MLib.Tgt;
