-----------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                         I N T E R F A C E S . C                          --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                            $Revision: 1.17 $                             --
--                                                                          --
-- This specification is adapted from the Ada Reference Manual for use with --
-- GNAT.  In accordance with the copyright of that document, you can freely --
-- copy and modify this specification,  provided that if you redistribute a --
-- modified version,  any changes that you have made are clearly indicated. --
--                                                                          --
------------------------------------------------------------------------------

with System.Parameters;

package Interfaces.C is
pragma Pure (C);

   lbits1 : constant := System.Parameters.long_bits - 1;

   --  Declaration's based on C's <limits.h>

   CHAR_BIT  : constant := 8;
   SCHAR_MIN : constant := -128;
   SCHAR_MAX : constant := 127;
   UCHAR_MAX : constant := 255;

   --  Signed and Unsigned Integers. Note that in GNAT, we have ensured that
   --  the standard predefined Ada types correspond to the standard C types

   type int   is new Integer;
   type short is new Short_Integer;
   type long  is range -(2 ** lbits1) .. +(2 ** lbits1) - 1;

   type signed_char is range SCHAR_MIN .. SCHAR_MAX;
   for signed_char'Size use CHAR_BIT;

   type unsigned       is mod 2 ** int'Size;
   type unsigned_short is mod 2 ** short'Size;
   type unsigned_long  is mod 2 ** long'Size;

   type unsigned_char is mod (UCHAR_MAX + 1);
   for unsigned_char'Size use CHAR_BIT;

   subtype plain_char is unsigned_char; -- ??? should be parametrized

   type ptrdiff_t is
     range -(2 ** (Standard'Address_Size - 1)) ..
           +(2 ** (Standard'Address_Size - 1) - 1);

   type size_t is mod 2 ** Standard'Address_Size;

   --  Floating-Point

   type C_float     is new Float;
   type double      is new Standard.Long_Float;
   type long_double is new Standard.Long_Long_Float;

   ----------------------------
   -- Characters and Strings --
   ----------------------------

   type char is new Character;

   nul : constant char := char'First;

   function To_C   (Item : Character) return char;
   function To_Ada (Item : char)      return Character;

   type char_array is array (size_t range <>) of aliased char;
   for char_array'Component_Size use CHAR_BIT;

   function Is_Nul_Terminated (Item : in char_array) return Boolean;

   function To_C
     (Item       : in String;
      Append_Nul : in Boolean := True)
      return       char_array;

   function To_Ada
     (Item     : in char_array;
      Trim_Nul : in Boolean := True)
      return     String;

   procedure To_C
     (Item       : in String;
      Target     : out char_array;
      Count      : out size_t;
      Append_Nul : in Boolean := True);

   procedure To_Ada
     (Item     : in char_array;
      Target   : out String;
      Count    : out Natural;
      Trim_Nul : in Boolean := True);

   ------------------------------------
   -- Wide Character and Wide String --
   ------------------------------------

   type wchar_t is new Wide_Character;
   for wchar_t'Size use System.Parameters.wchar_t_bits;

   wide_nul : constant wchar_t := wchar_t'First;

   function To_C   (Item : in Wide_Character) return wchar_t;
   function To_Ada (Item : in wchar_t)        return Wide_Character;

   type wchar_array is array (size_t range <>) of aliased wchar_t;

   function Is_Nul_Terminated (Item : in wchar_array) return Boolean;

   function To_C
     (Item       : in Wide_String;
      Append_Nul : in Boolean := True)
      return       wchar_array;

   function To_Ada
     (Item     : in wchar_array;
      Trim_Nul : in Boolean := True)
      return     Wide_String;

   procedure To_C
     (Item       : in Wide_String;
      Target     : out wchar_array;
      Count      : out size_t;
      Append_Nul : in Boolean := True);

   procedure To_Ada
     (Item     : in wchar_array;
      Target   : out Wide_String;
      Count    : out Natural;
      Trim_Nul : in Boolean := True);

   Terminator_Error : exception;

end Interfaces.C;
