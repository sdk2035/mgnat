
--
--  GUITARE Project
--
--  $Id: roman_number.adb,v 1.7 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

--
--  This is not a comple package. It handle only the number from 1 to 12
--

with Text_IO;

package body Roman_Number is

   type String_Access is access String;
   type Roman_String_Type is array (Positive range <>) of String_Access;

   Roman_String : Roman_String_Type (1 .. 12) :=
     (1 => new String'("I"),
      2 => new String'("II"),
      3 => new String'("III"),
      4 => new String'("IV"),
      5 => new String'("V"),
      6 => new String'("VI"),
      7 => new String'("VII"),
      8 => new String'("VIII"),
      9 => new String'("IX"),
      10 => new String'("X"),
      11 => new String'("XI"),
      12 => new String'("XII")
      );

   -----------
   -- Image --
   -----------

   function Image (Number : in Positive) return String is
   begin
      return Roman_String (Number).all;
   exception
      when others =>
         raise Bad_Roman_Number;
   end Image;

   ---------
   -- Put --
   ---------

   procedure Put (Number : in Positive) is
   begin
      Text_IO.Put (Roman_String (Number).all);
   exception
      when others =>
         raise Bad_Roman_Number;
   end Put;

   ---------
   -- Get --
   ---------

   function Get (Number : in String) return Positive is
   begin
      for I in Roman_String'Range loop
         if Roman_String (I).all = Number then
            return I;
         end if;
      end loop;
      raise Bad_Roman_Number;
   end Get;

end Roman_Number;
