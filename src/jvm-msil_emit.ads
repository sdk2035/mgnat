------------------------------------------------------------------------------
--                                                                          --
--                        JGNAT COMPILER COMPONENTS                         --
--                                                                          --
--                         J V M . M S I L _ E M I T                        --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                             $Revision: 1.2 $                             --
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

--  JVM.MSIL_Emit encapsulates JVM's capability for generating JVM class
--  files. The JVM package calls JVM.MSIL_Emit, which in turn calls the
--  JVM_File interface.
package JVM.MSIL_Emit is
   --  Look at the external name from a pragma Import, and remember
   --  the assembly that needs to be imported so that it can be output
   --  when we get to Produce_Class_File
   procedure Add_Assembly (Name : in String);
   procedure Add_Assembly (Version : in String; Name : in String_Id);

   procedure Produce_Class_File (Class : Class_Id);
   --  Traverses Class's associated set of fields, methods, and
   --  and constant pool information to generate its class file.

   function Type_String (Typ : Type_Id) return String;
   --  gets the string associated with a type
end JVM.MSIL_Emit;
