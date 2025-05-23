------------------------------------------------------------------------------
--                                                                          --
--                        JGNAT COMPILER COMPONENTS                         --
--                                                                          --
--                             J V M _ T E S T                              --
--                                                                          --
--                                 S p e c                                  --
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

--  Set of routines to check the consistency of all JVM class file data
--  structures defined in package JVM_File. If a data structure is
--  inconsistent, the routines below print to standard out a message and raise
--  Fatal_Exception.

with JVM_File; use JVM_File;

package JVM_Test is

   procedure Check_CP (T : CP.Table);
   --  Checks the consistency of the contant pool table T

   procedure Check_CP_Entry (T : CP.Table; K : CP_Index; The_Tag : CP_Tag);
   --  Checks that the K-th contant pool entry in table T has tag The_Tag

   procedure Check_Class_Access_Flags  (A : Access_Mask);
   procedure Check_Field_Access_Flags  (A : Access_Mask);
   procedure Check_Method_Access_Flags (A : Access_Mask);
   --  Check that the access flags specified in A are indeed consistent for a
   --  Class, Field or method.

   procedure Check_Simple_Name (T : CP.Table; K : CP_Index);
   --  Checks that the K-th entry in constant pool T is a simple name

   function Type_OK (Typ : Utf8.Table) return Boolean;
   --  Parses the type signature Typ to ensure that it is a valid JVM type
   --  signature. If it is return True, otherwise return False.

end JVM_Test;
