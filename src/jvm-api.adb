------------------------------------------------------------------------------
--                                                                          --
--                        JGNAT COMPILER COMPONENTS                         --
--                                                                          --
--                              J V M . A P I                               --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                             $Revision: 1.15 $
--                                                                          --
--           Copyright (C) 1998-2000 Ada Core Technologies, Inc.            --
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

with J_String; use J_String;

package body JVM.API is

   Ada_Lib_Str : constant String := "[mgnatcs]mgnat.adalib";
   --  The name of the Java package containing various Ada API classes

   Ada_Lib_Pkg : String_Id;
   --  A String_Id denoting the string defined by Ada_Lib_Str. Its value is
   --  established by procedure Initialize.

   Mscorlib_System_Str : constant String := "[mscorlib]System";
   --  The name of the Java package java.lang

   Mscorlib_System_Pkg : String_Id;
   --  A String_Id denoting the string defined by Mscorlib_System_Str.
   --  Its value is
   --  established by procedure Initialize.

   Mscorlib_IO_Str : constant String := "System.IO";
   --  The name of the Java package java.io

   Mscorlib_IO_Pkg : String_Id;
   --  A String_Id denoting the string defined by Mscorlib_IO_Str. Its value is
   --  established by procedure Initialize.

   Classes : array (API_Class_Name) of Class_Id;
   --  The table of Class_Ids for various Java and Ada API classes

   Interfaces : array (API_Interface_Name) of Class_Id;
   --  The table of Class_Ids for various Java interfaces

   Fields  : array (API_Field_Name) of Field_Id;
   --  The table of Field_Ids for various Java and Ada API fields

   Methods : array (API_Method_Name) of Method_Id;
   --  The table of Method_Ids for various Java and Ada API methods

   procedure Make_Class
     (Class    : API_Class_Name;
      Chars    : String;
      Pkg_Name : String_Id := No_String;
      Super    : Class_Id  := Java_Lang_Object;
      Outer    : Class_Id  := Null_Class;
      Public   : Boolean   := True;
      Abstrct  : Boolean   := False;
      Final    : Boolean   := False);
   --  Creates a JVM entity symbol for an API class and enters
   --  its Class_Id in the Classes table.

   procedure Make_Interface
     (Intface  : API_Interface_Name;
      Chars    : String;
      Pkg_Name : String_Id := No_String;
      Public   : Boolean   := True);
   --  Creates a JVM entity symbol for an API interface and enters
   --  its Class_Id in the Interfaces table.

   procedure Make_Field
     (Field    : API_Field_Name;
      Chars    : String;
      Class    : API_Class_Name;
      Ftype    : Type_Id;
      Static   : Boolean;
      Final    : Boolean := False;
      Volatile : Boolean := False;
      Acc_Mode : Member_Access := Public_Access);
   --  Creates a JVM entity symbol for an API field and enters
   --  its Field_Id in the Fields table.

   procedure Make_Method
     (Method   : API_Method_Name;
      Chars    : String;
      Class    : API_Class_Name;
      Result   : Type_Id;
      Static   : Boolean;
      Abstrct  : Boolean := False;
      Final    : Boolean := False;
      Synch    : Boolean := False;
      Acc_Mode : Member_Access := Public_Access);
   --  Creates a JVM entity symbol for an API method and enters
   --  its Method_Id in the Methods table.

   procedure Add_Param
     (Method : API_Method_Name;
      Jtype  : Type_Id;
      Chars : String);
   --  Adds a parameter of type Jtype and with name Chars to the JVM
   --  entity for Method.

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is

      procedure Make_Exception_Constructor (Class : API_Class_Name);
      --  Declares an exception constructor that has a single parameter
      --  of type java.lang.String.

      procedure Make_Exception_Constructor (Class : API_Class_Name) is
         Constructor : Method_Id;
         Param       : Local_Var_Id;
         pragma Warnings (Off, Param);

      begin
         Constructor
           := New_Method (Classes (Class), Name (".ctor"), Void_Type, False);
         Param
           := New_Method_Parameter
            (Constructor, Name ("message"),
               Type_Of (API_Class (Lang_String)));
      end Make_Exception_Constructor;

   --  Start of processing for Initialize

   begin
      Ada_Lib_Pkg   := Str_Id (Ada_Lib_Str);
      Mscorlib_System_Pkg := Str_Id (Mscorlib_System_Str);
      Mscorlib_IO_Pkg := Str_Id (Mscorlib_IO_Str);

      Classes (Lang_Object) := Java_Lang_Object;
      Classes (Lang_String) := Class_Of_Type (String_Type);

--      Make_Class (Lang_String,     "String",     Mscorlib_System_Pkg,
--         Final => True);
      Make_Class (Lang_Class,     "Type",     Mscorlib_System_Pkg,
         Final => True);
      Make_Class (Lang_System,    "System",    Mscorlib_System_Pkg,
         Final => True);
      Make_Class (System_Array,    "Array",    Mscorlib_System_Pkg,
         Final => True);

      Make_Class (Lang_Throwable, "Exception", Mscorlib_System_Pkg);
      Make_Exception_Constructor (Lang_Throwable);

      Make_Class (Lang_Error,
         "Exception", Mscorlib_System_Pkg,
          API_Class (Lang_Throwable));
      Make_Exception_Constructor (Lang_Error);

      Make_Class (Lang_VirtualMachineError,
                  "VirtualMachineError",
                  Mscorlib_System_Pkg,
                  API_Class (Lang_Error));
      Make_Exception_Constructor (Lang_VirtualMachineError);

      Make_Class (Lang_OutOfMemoryError,
                  "OutOfMemoryException",
                  Mscorlib_System_Pkg,
                  API_Class (Lang_VirtualMachineError));
      Make_Exception_Constructor (Lang_OutOfMemoryError);

      Make_Class (Lang_StackOverflowError,
                  "StackOverflowException",
                  Mscorlib_System_Pkg,
                  API_Class (Lang_VirtualMachineError));
      Make_Exception_Constructor (Lang_StackOverflowError);

      Make_Class (Lang_Exception,
         "Exception", Mscorlib_System_Pkg,
            API_Class (Lang_Throwable));
      Make_Exception_Constructor (Lang_Exception);

      Make_Class (Lang_RuntimeException,
                  "Exception",
                  Mscorlib_System_Pkg,
                  API_Class (Lang_Exception));
      Make_Exception_Constructor (Lang_RuntimeException);

      Make_Class (Lang_Thread, "Threading.Thread", Mscorlib_System_Pkg);

      Make_Interface (IO_Serializable, "Serializable", Mscorlib_IO_Pkg);

      Make_Class (IndexOutOfBoundsException,
                  "IndexOutOfRangeException",
                  Mscorlib_System_Pkg, API_Class (Lang_RuntimeException));
      Make_Exception_Constructor (IndexOutOfBoundsException);

      Make_Class (NullPointerException,
                  "NullReferenceException",
                  Mscorlib_System_Pkg, API_Class (Lang_RuntimeException));
      Make_Exception_Constructor (NullPointerException);

      Make_Class (GNAT_libc, "GNAT_libc", Ada_Lib_Pkg);

      Make_Class (Ada_Abort_Signal, "_abort_signal",
                  Ada_Lib_Pkg, API_Class (Lang_RuntimeException));
      Make_Exception_Constructor (Ada_Abort_Signal);

      Make_Class (Ada_Constraint_Error, "constraint_error",
                  Ada_Lib_Pkg, API_Class (Lang_RuntimeException));
      Make_Exception_Constructor (Ada_Constraint_Error);

      Make_Class (Ada_Program_Error, "program_error",
                  Ada_Lib_Pkg, API_Class (Lang_RuntimeException));
      Make_Exception_Constructor (Ada_Program_Error);

      Make_Class (Ada_Storage_Error, "storage_error",
                  Ada_Lib_Pkg, API_Class (Lang_RuntimeException));
      Make_Exception_Constructor (Ada_Storage_Error);

      Make_Class (Ada_Tasking_Error, "tasking_error",
                  Ada_Lib_Pkg, API_Class (Lang_RuntimeException));
      Make_Exception_Constructor (Ada_Tasking_Error);

      Make_Class (Ada_Access_String, "standard.access_string", Ada_Lib_Pkg);
      Make_Field
        (Accstr_All, "all", Ada_Access_String,
         New_Array_Type (Byte_Type), Static => False);
      Make_Field
        (Accstr_First, "first", Ada_Access_String, Int_Type, Static => False);
      Make_Field
        (Accstr_Last,  "last",  Ada_Access_String, Int_Type, Static => False);

      Make_Class (Ada_Int,  "Int", Ada_Lib_Pkg);
      Make_Class (Ada_UInt, "UInt", Ada_Lib_Pkg);
      Make_Class (Ada_Lng,  "Lng", Ada_Lib_Pkg);
      Make_Class (Ada_ULng, "ULng", Ada_Lib_Pkg);
      Make_Class (Ada_Flt,  "Flt", Ada_Lib_Pkg);
      Make_Class (Ada_Dbl,  "Dbl", Ada_Lib_Pkg);
      Make_Class (Ada_Acc,  "Acc", Ada_Lib_Pkg);
      Make_Class (Ada_Activation_Rec, "Ada_AR", Ada_Lib_Pkg);

      Make_Field (Int_All, "all", Ada_Int, Int_Type, Static => False);
      Make_Field (UInt_All, "all", Ada_UInt, UInt_Type, Static => False);
      Make_Field (Lng_All, "all", Ada_Lng, Long_Type, Static => False);
      Make_Field (ULng_All, "all", Ada_ULng, ULong_Type, Static => False);
      Make_Field (Flt_All, "all", Ada_Flt, Float_Type, Static => False);
      Make_Field (Dbl_All, "all", Ada_Dbl, Double_Type, Static => False);
      Make_Field
         (Acc_All, "all", Ada_Acc, Type_Of (Java_Lang_Object),
            Static => False);

      Make_Field
        (AR_Static_Link, "__AR_Link", Ada_Activation_Rec,
         Type_Of (API_Class (Ada_Activation_Rec)), Static => False);

      Make_Field
        (Gnat_Argv, "gnat_argv", GNAT_libc,
         New_Array_Type (String_Type), Static => True);

      Make_Field
        (Command_Name, "command_name", GNAT_libc, String_Type, Static => True);

      Make_Method
        (Object_getClass, "GetType", Lang_Object,
         Type_Of (API_Class (Lang_Class)), False);

      Make_Method
        (Class_forName, "GetType", Lang_Class,
         Type_Of (API_Class (Lang_Class)), True);
      Add_Param (Class_forName, String_Type, "className");

      Make_Method (String_Ascii_Init, ".ctor", Lang_String, Void_Type, False);
      Add_Param (String_Ascii_Init, New_Array_Type (Byte_Type), "ascii");
      Add_Param (String_Ascii_Init, Int_Type, "hibyte");

      Make_Method (String_length, "get_Length", Lang_String, Int_Type, False);

      Make_Method (String_getChars, "getChars", GNAT_libc, Void_Type, True);
      Add_Param (String_getChars, String_Type, "s");
      Add_Param (String_getChars, Int_Type, "srcBegin");
      Add_Param (String_getChars, Int_Type, "srcEnd");
      Add_Param (String_getChars, New_Array_Type (Char_Type), "dst");
      Add_Param (String_getChars, Int_Type, "dstBegin");

      Make_Method (String_getWideChars, "getWideChars",
         GNAT_libc, Void_Type, True);
      Add_Param (String_getWideChars, String_Type, "s");
      Add_Param (String_getWideChars, Int_Type, "srcBegin");
      Add_Param (String_getWideChars, Int_Type, "srcEnd");
      Add_Param (String_getWideChars, New_Array_Type (Int_Type), "dst");
      Add_Param (String_getWideChars, Int_Type, "dstBegin");

      Make_Method (To_JVM_String, "to_string_with_null", GNAT_libc,
         String_Type, True);
      Add_Param (To_JVM_String, New_Array_Type (Byte_Type), "s");

      Make_Method (String_getBytes, "getBytes", GNAT_libc, Void_Type, True);
      Add_Param (String_getBytes, String_Type, "s");
      Add_Param (String_getBytes, Int_Type, "srcBegin");
      Add_Param (String_getBytes, Int_Type, "srcEnd");
      Add_Param (String_getBytes, New_Array_Type (Byte_Type), "dst");
      Add_Param (String_getBytes, Int_Type, "dstBegin");

      Make_Method
        (System_arraycopy, "Copy", System_Array, Void_Type, True);
      Add_Param (System_arraycopy, Type_Of (
         API_Class (System_Array)), "src");
      Add_Param (System_arraycopy, Int_Type, "srcOffset");
      Add_Param (System_arraycopy, Type_Of (
         API_Class (System_Array)), "dst");
      Add_Param (System_arraycopy, Int_Type, "dstOffset");
      Add_Param (System_arraycopy, Int_Type, "length");

      Make_Method (Thread_sleep, "Sleep", Lang_Thread, Void_Type, True);
      Add_Param (Thread_sleep, Int_Type, "millisecondsTimeout");

      Make_Method (Reraise_No_Defer, "reraise_occurrence_no_defer",
                   GNAT_libc, Void_Type, True);
      Add_Param (Reraise_No_Defer, Type_Of (Java_Lang_Object), "e");
   end Initialize;

   ---------------------
   -- Ada_Lib_Package --
   ---------------------

   function Ada_Lib_Package return String_Id is
   begin
      --  mcc:  was return Ada_Lib_Pkg;
      --  but we no longer do that non-namespaced thing
      return No_String;
   end Ada_Lib_Package;

   ---------------
   -- API_Class --
   ---------------

   function API_Class (Name : API_Class_Name) return Class_Id is
   begin
      return Classes (Name);
   end API_Class;

   -------------------
   -- API_Interface --
   -------------------

   function API_Interface (Name : API_Interface_Name) return Class_Id is
   begin
      return Interfaces (Name);
   end API_Interface;

   ---------------
   -- API_Field --
   ---------------

   function API_Field (Name : API_Field_Name) return Field_Id is
   begin
      return Fields (Name);
   end API_Field;

   ----------------
   -- API_Method --
   ----------------

   function API_Method (Name : API_Method_Name) return Method_Id is
   begin
      return Methods (Name);
   end API_Method;

   ---------------------------
   -- Gen_Invoke_API_Method --
   ---------------------------

   procedure Gen_Invoke_API_Method (Name : API_Method_Name) is
   begin
      Gen_Invoke_Method (Methods (Name));
   end Gen_Invoke_API_Method;

   ----------------
   -- Make_Class --
   ----------------

   procedure Make_Class
     (Class    : API_Class_Name;
      Chars    : String;
      Pkg_Name : String_Id := No_String;
      Super    : Class_Id  := Java_Lang_Object;
      Outer    : Class_Id  := Null_Class;
      Public   : Boolean   := True;
      Abstrct  : Boolean   := False;
      Final    : Boolean   := False)
   is
   begin
--      if Chars = "System" then
--         Classes (Class)
--           := New_Class (Name ("[mscorlib]" & Chars), Pkg_Name, No_Name,
--            Super, Outer, Public, Abstrct, Final);
--      elsif Chars = "SystemException" then
--         Classes (Class)
--            := New_Class (Name ("[mscorlib]System.Exception"),
--                Pkg_Name, No_Name,
--            Super, Outer, Public, Abstrct, Final);
--      elsif Chars = "String" then
--         Classes (Class)
--            := New_Class (Name ("[vjslib]java.lang." & Chars),
--               Pkg_Name, No_Name,
--            Super, Outer, Public, Abstrct, Final);
--      elsif Chars'Length > 10 and then
--         Chars (Chars'First .. Chars'First + 9) = "[mscorlib]" then
--         Classes (Class)
--            := New_Class (Name (Chars),
--               Pkg_Name, No_Name,
--            Super, Outer, Public, Abstrct, Final);
--      else
         Classes (Class)
--            := New_Class (Name ("[mgnatcs]mgnat.adalib." & Chars),
            := New_Class (Name (Chars),
               Pkg_Name, No_Name,
            Super, Outer, Public, Abstrct, Final);
--      end if;

   end Make_Class;

   --------------------
   -- Make_Interface --
   --------------------

   procedure Make_Interface
     (Intface  : API_Interface_Name;
      Chars    : String;
      Pkg_Name : String_Id := No_String;
      Public   : Boolean   := True)
   is
   begin
      Interfaces (Intface)
        := New_Interface (Name (Chars), Pkg_Name, No_Name, Public);
   end Make_Interface;

   ----------------
   -- Make_Field --
   ----------------

   procedure Make_Field
     (Field    : API_Field_Name;
      Chars    : String;
      Class    : API_Class_Name;
      Ftype    : Type_Id;
      Static   : Boolean;
      Final    : Boolean := False;
      Volatile : Boolean := False;
      Acc_Mode : Member_Access := Public_Access)
   is
   begin
      Fields (Field)
        := New_Field (Classes (Class), Name (Chars), Ftype,
                      Static, Final, Volatile, Acc_Mode);
   end Make_Field;

   -----------------
   -- Make_Method --
   -----------------

   procedure Make_Method
     (Method   : API_Method_Name;
      Chars    : String;
      Class    : API_Class_Name;
      Result   : Type_Id;
      Static   : Boolean;
      Abstrct  : Boolean := False;
      Final    : Boolean := False;
      Synch    : Boolean := False;
      Acc_Mode : Member_Access := Public_Access)
   is
   begin
      Methods (Method)
        := New_Method (Classes (Class), Name (Chars), Result,
                       Static, Abstrct, Final, Synch, Acc_Mode);
   end Make_Method;

   ---------------
   -- Add_Param --
   ---------------

   procedure Add_Param
     (Method : API_Method_Name;
      Jtype  : Type_Id;
      Chars : String)
   is
      Param : Local_Var_Id;
      pragma Warnings (Off, Param);

   begin
      Param := New_Method_Parameter (Methods (Method), Name (Chars), Jtype);
   end Add_Param;

end JVM.API;
