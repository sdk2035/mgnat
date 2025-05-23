------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                 I N T E R F A C E S . C _ S T R E A M S                  --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                            $Revision: 1.5 $
--                                                                          --
--          Copyright (C) 1996-1999 Free Software Foundation, Inc.          --
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

--  This is the default version which just calls the C versions directly
--  Note: the reason that we provide for specialization here is that on
--  some systems, notably VMS, we may need to worry about buffering.

with Unchecked_Conversion;

package body Interfaces.C_Streams is

   ------------
   -- fread --
   ------------

   function fread
     (buffer : voids;
      size   : size_t;
      count  : size_t;
      stream : FILEs)
      return   size_t
   is
      function C_fread
        (buffer : voids;
         size   : size_t;
         count  : size_t;
         stream : FILEs)
         return   size_t;
      pragma Import (C, C_fread, "fread");

   begin
      return C_fread (buffer, size, count, stream);
   end fread;

   ------------
   -- fread --
   ------------

   function fread
     (buffer : voids;
      index  : size_t;
      size   : size_t;
      count  : size_t;
      stream : FILEs)
      return   size_t
   is
      function C_fread
        (buffer : voids;
         size   : size_t;
         count  : size_t;
         stream : FILEs)
         return   size_t;
      pragma Import (C, C_fread, "fread");

      type Byte_Buffer is array (0 .. size_t'Last) of Unsigned_8;

      type Acc_Bytes is access all Byte_Buffer;

      function To_Acc_Bytes is new Unchecked_Conversion (voids, Acc_Bytes);

   begin
      return C_fread
        (To_Acc_Bytes (buffer) (index * size)'Address, size, count, stream);
   end fread;

   ------------
   -- fwrite --
   ------------

   function fwrite
     (buffer : voids;
      size   : size_t;
      count  : size_t;
      stream : FILEs)
      return   size_t
   is
      function C_fwrite
        (buffer : voids;
         size   : size_t;
         count  : size_t;
         stream : FILEs)
         return   size_t;
      pragma Import (C, C_fwrite, "fwrite");

   begin
      return C_fwrite (buffer, size, count, stream);
   end fwrite;

   -------------
   -- setvbuf --
   -------------

   function setvbuf
     (stream : FILEs;
      buffer : chars;
      mode   : int;
      size   : size_t)
      return   int
   is
      function C_setvbuf
        (stream : FILEs;
         buffer : chars;
         mode   : int;
         size   : size_t)
         return   int;
      pragma Import (C, C_setvbuf, "setvbuf");

   begin
      return C_setvbuf (stream, buffer, mode, size);
   end setvbuf;

end Interfaces.C_Streams;
