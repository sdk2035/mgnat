------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                A D A . S T R E A M S . S T R E A M _ I O                 --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision: 1.14 $                             --
--                                                                          --
--          Copyright (C) 1992-1997 Free Software Foundation, Inc.          --
--                                                                          --
-- This specification is derived from the Ada Reference Manual for use with --
-- GNAT. The copyright notice above, and the license provisions that follow --
-- apply solely to the  contents of the part following the private keyword. --
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
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- It is now maintained by Ada Core Technologies Inc (http://www.gnat.com). --
--                                                                          --
------------------------------------------------------------------------------

with Ada.IO_Exceptions;
with System.File_Control_Block;

package Ada.Streams.Stream_IO is

   type Stream_Access is access all Root_Stream_Type'Class;

   type File_Type is limited private;

   type File_Mode is (In_File, Out_File, Append_File);

   --  The following representation clause allows the use of unchecked
   --  conversion for rapid translation between the File_Mode type
   --  used in this package and System.File_IO.

   for File_Mode use
     (In_File     => 0,  -- System.FIle_IO.File_Mode'Pos (In_File)
      Out_File    => 2,  -- System.File_IO.File_Mode'Pos (Out_File)
      Append_File => 3); -- System.File_IO.File_Mode'Pos (Append_File)

   type Count is new Stream_Element_Offset
     range 0 .. Stream_Element_Offset'Last;

   subtype Positive_Count is Count range 1 .. Count'Last;
   --  Index into file, in stream elements

   ---------------------
   -- File Management --
   ---------------------

   procedure Create
     (File : in out File_Type;
      Mode : in File_Mode := Out_File;
      Name : in String := "";
      Form : in String := "");

   procedure Open
     (File : in out File_Type;
      Mode : in File_Mode;
      Name : in String;
      Form : in String := "");

   procedure Close  (File : in out File_Type);
   procedure Delete (File : in out File_Type);
   procedure Reset  (File : in out File_Type; Mode : in File_Mode);
   procedure Reset  (File : in out File_Type);

   function Mode (File : in File_Type) return File_Mode;
   function Name (File : in File_Type) return String;
   function Form (File : in File_Type) return String;

   function Is_Open     (File : in File_Type) return Boolean;
   function End_Of_File (File : in File_Type) return Boolean;

   function Stream (File : in File_Type) return Stream_Access;

   -----------------------------
   -- Input-Output Operations --
   -----------------------------

   procedure Read
     (File : in  File_Type;
      Item : out Stream_Element_Array;
      Last : out Stream_Element_Offset;
      From : in  Positive_Count);

   procedure Read
     (File : in  File_Type;
      Item : out Stream_Element_Array;
      Last : out Stream_Element_Offset);

   procedure Write
     (File : in File_Type;
      Item : in Stream_Element_Array;
      To   : in Positive_Count);

   procedure Write
     (File : in File_Type;
      Item : in Stream_Element_Array);

   ----------------------------------------
   -- Operations on Position within File --
   ----------------------------------------

   procedure Set_Index (File : in File_Type; To : in Positive_Count);

   function Index (File : in File_Type) return Positive_Count;
   function Size  (File : in File_Type) return Count;

   procedure Set_Mode (File : in out File_Type; Mode : in File_Mode);

   procedure Flush (File : in out File_Type);

   ----------------
   -- Exceptions --
   ----------------

   Status_Error : exception renames IO_Exceptions.Status_Error;
   Mode_Error   : exception renames IO_Exceptions.Mode_Error;
   Name_Error   : exception renames IO_Exceptions.Name_Error;
   Use_Error    : exception renames IO_Exceptions.Use_Error;
   Device_Error : exception renames IO_Exceptions.Device_Error;
   End_Error    : exception renames IO_Exceptions.End_Error;
   Data_Error   : exception renames IO_Exceptions.Data_Error;

private
   package FCB renames System.File_Control_Block;

   -----------------------------
   -- Stream_IO Control Block --
   -----------------------------

   type Operation is (Op_Read, Op_Write, Op_Other);
   --  Type used to record last operation (to optimize sequential operations)

   type Stream_AFCB is new FCB.AFCB with record
      Index : Count := 1;
      --  Current Index value

      File_Size : Stream_Element_Offset := -1;
      --  Cached value of File_Size, so that we do not keep recomputing it
      --  when not necessary (otherwise End_Of_File becomes gruesomely slow).
      --  A value of minus one means that there is no cached value.

      Last_Op : Operation := Op_Other;
      --  Last operation performed on file, used to avoid unnecessary
      --  repositioning between successive read or write operations.

      Update_Mode : Boolean := False;
      --  Set if the mode is changed from write to read or vice versa.
      --  Indicates that the file has been reopened in update mode.

   end record;

   type File_Type is access all Stream_AFCB;

   function AFCB_Allocate (Control_Block : Stream_AFCB) return FCB.AFCB_Ptr;

   procedure AFCB_Close (File : access Stream_AFCB);
   procedure AFCB_Free  (File : access Stream_AFCB);

   procedure Read
     (File : in out Stream_AFCB;
      Item : out Ada.Streams.Stream_Element_Array;
      Last : out Ada.Streams.Stream_Element_Offset);
   --  Read operation used when Stream_IO file is treated directly as Stream

   procedure Write
     (File : in out Stream_AFCB;
      Item : in Ada.Streams.Stream_Element_Array);
   --  Write operation used when Stream_IO file is treated directly as Stream

end Ada.Streams.Stream_IO;
