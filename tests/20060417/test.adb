with ada.streams;
with ada.streams.stream_io;
with ada.strings.unbounded;
with ada.unchecked_deallocation;
with interfaces;

use type ada.streams.stream_element;
use type ada.streams.stream_element_offset;
use type interfaces.ieee_extended_float;
use type interfaces.unsigned_64;


package body test is

   format_error : exception;



   subtype u8 is integer range 0 .. 2**8-1;
   subtype u16 is integer range 0 .. 2**16-1;
   subtype u24 is integer range 0 .. 2**24-1;


   subtype n32 is integer range 0 .. 2**(32-1)-1;


   subtype s8 is integer range -2**(8-1) .. 2**(8-1)-1;
   subtype s32 is integer range -2**(32-1) .. 2**(32-1)-1;
   subtype s64 is long_long_integer range -2**(64-1) .. 2**(64-1)-1;


   procedure fetch (
         stream : in     in_stream_type;
         c      :    out ada.streams.stream_element) is
      first : ada.streams.stream_element_offset := stream.first;
   begin
      if first > stream.last then
         first := 1;
         ada.streams.read (stream.stream.all, stream.buffer, stream.last);
         if first > stream.last then
            raise ada.streams.stream_io.end_error;
         end if;
      end if;
      c := stream.buffer (first);
      stream.first := first + 1;
   end fetch;

   procedure fetch_long (
         stream : in     in_stream_type;
         s      :    out ada.streams.stream_element_array) is
      first : constant ada.streams.stream_element_offset := stream.first;
      last  :          ada.streams.stream_element_offset;
      n     :          ada.streams.stream_element_offset;
   begin
      n := stream.last - first + 1;
      if n >= s'length then
         n := s'length;
         s := stream.buffer (first .. first + n - 1);
         stream.first := first + n;
      else
         last := s'first + n - 1;
         s (s'first .. last)
            := stream.buffer (first .. first + n - 1);
         stream.first := first + n; -- Now .First > .Last

         ada.streams.read (stream.stream.all, s (last + 1 .. s'last), n);
         if n /= s'last then
            raise ada.streams.stream_io.end_error;
         end if;
      end if;
   end fetch_long;

   procedure skip_input (
         stream : in     in_stream_type;
         n      : in     natural) is
      to_skip  :          ada.streams.stream_element_offset := ada.streams.stream_element_offset (n);
      first    : constant ada.streams.stream_element_offset := stream.first;
      skip_now :          ada.streams.stream_element_offset;
   begin
      skip_now := stream.last - first + 1;
      if skip_now >= to_skip then
         stream.first := first + to_skip;
      else
         to_skip := to_skip - skip_now;
         stream.first := first + skip_now; -- Now .First > .Last

         while to_skip > 0 loop
            skip_now := to_skip;
            if skip_now > buffer_size then
               skip_now := buffer_size;
            end if;

            declare
               buffer  : ada.streams.stream_element_array (1 .. skip_now);
               skipped : ada.streams.stream_element_offset;
            begin
               ada.streams.read (stream.stream.all, buffer, skipped);
               if skipped /= skip_now then
                  raise ada.streams.stream_io.end_error;
               end if;

               to_skip := to_skip - skipped;
            end;
         end loop;
      end if;
   end skip_input;


   procedure flush (
         stream : in     out_stream_type) is
      in_use : constant ada.streams.stream_element_offset := stream.in_use;
   begin
      if in_use > 0 then
         ada.streams.write (stream.stream.all, stream.buffer (1 .. in_use));
         stream.in_use := 0;
      end if;
   end flush;

   procedure append (
         stream : in     out_stream_type;
         c      : in     ada.streams.stream_element) is
      in_use : ada.streams.stream_element_offset := stream.in_use;
   begin
      if in_use >= stream.buffer'last then
         ada.streams.write (stream.stream.all, stream.buffer (1 .. in_use));
         in_use := 0;
      end if;
      stream.buffer (in_use + 1) := c;
      stream.in_use := in_use + 1;
   end append;


   procedure append_short (
         stream : in     out_stream_type;
         s      : in     ada.streams.stream_element_array) is
      in_use :          ada.streams.stream_element_offset := stream.in_use;
      l      : constant ada.streams.stream_element_offset := s'length;
   begin
      if in_use + l > stream.buffer'last then
         ada.streams.write (stream.stream.all, stream.buffer (1 .. in_use));
         in_use := 0;
      end if;
      stream.buffer (in_use + 1 .. in_use + l) := s;
      stream.in_use := in_use + l;
   end append_short;


   procedure append_long (
         stream : in     out_stream_type;
         s      : in     ada.streams.stream_element_array) is
   begin
      if s'length < stream.buffer'length - 8 then
         append_short (stream, s);
      else
         flush (stream);
         ada.streams.write (stream.stream.all, s);
      end if;
   end append_long;


   function read_u8 (
         stream : in     in_stream_type)
     return u8 is
      i0 : u8;
   begin
      fetch (stream, ada.streams.stream_element (i0));
      return i0;
   end read_u8;

   procedure write_u8 (
         stream : in     out_stream_type;
         x      : in     u8) is
   begin
      append (stream, ada.streams.stream_element (x));
   end write_u8;

   function read_u16 (
         stream : in     in_stream_type)
     return u16 is
      i1,
      i0 : u16;
   begin
      fetch (stream, ada.streams.stream_element (i1));
      fetch (stream, ada.streams.stream_element (i0));
      return i1 * 2**8 + i0;
   end read_u16;

   procedure write_u16 (
         stream : in     out_stream_type;
         x      : in     u16) is
   begin
      append_short
         (stream,
         (1 => ada.streams.stream_element (x / 2**8),
            2 => ada.streams.stream_element (x mod 2**8)));
   end write_u16;

   function read_u24 (
         stream : in     in_stream_type)
     return u24 is
      i2,
      i1,
      i0 : u24;
   begin
      fetch (stream, ada.streams.stream_element (i2));
      fetch (stream, ada.streams.stream_element (i1));
      fetch (stream, ada.streams.stream_element (i0));
      return i2 * 2**16 + i1 * 2**8 + i0;
   end read_u24;

   procedure write_u24 (
         stream : in     out_stream_type;
         x      : in     u24) is
   begin
      append_short
         (stream,
         (1 => ada.streams.stream_element (x / 2**16),
            2 => ada.streams.stream_element (x / 2**8 mod 2**8),
            3 => ada.streams.stream_element (x mod 2**8)));
   end write_u24;

   function read_n32 (
         stream : in     in_stream_type)
     return n32 is
      i_high : n32;
      i3,
      i2,
      i1,
      i0     : n32;
   begin
      fetch (stream, ada.streams.stream_element (i_high));
      case i_high is
         when 2**7 .. 2**8-1 =>
            return i_high - 2**7;
         when 2**6 .. 2**7-1 =>
            fetch (stream, ada.streams.stream_element (i0));
            return (i_high - 2**6) * 2**8 + i0;
         when 2**5 .. 2**6-1 =>
            fetch (stream, ada.streams.stream_element (i1));
            fetch (stream, ada.streams.stream_element (i0));
            return (i_high - 2**5) * 2**16 + i1 * 2**8 + i0;
         when 2**4 .. 2**5-1 =>
            fetch (stream, ada.streams.stream_element (i2));
            fetch (stream, ada.streams.stream_element (i1));
            fetch (stream, ada.streams.stream_element (i0));
            return (i_high - 2**4) * 2**24 + i2 * 2**16 + i1 * 2**8 + i0;
         when 2**3 =>
            fetch (stream, ada.streams.stream_element (i3));
            fetch (stream, ada.streams.stream_element (i2));
            fetch (stream, ada.streams.stream_element (i1));
            fetch (stream, ada.streams.stream_element (i0));
            return i3 * 2**24 + i2 * 2**16 + i1 * 2**8 + i0;
         when others =>
            raise format_error;
      end case;
   end read_n32;

   procedure write_n32 (
         stream : in     out_stream_type;
         x      : in     n32) is
   begin
      case x is
         when 0 .. 2**7-1 =>
            append (stream, ada.streams.stream_element (x + 2**7));
         when 2**7 .. 2**14-1 =>
            append_short
               (stream,
               (1 => ada.streams.stream_element (x / 2**8 + 2**6),
                  2 => ada.streams.stream_element (x mod 2**8)));
         when 2**14 .. 2**21-1 =>
            append_short
               (stream,
               (1 => ada.streams.stream_element (x / 2**16 + 2**5),
                  2 => ada.streams.stream_element (x / 2**8 mod 2**8),
                  3 => ada.streams.stream_element (x mod 2**8)));
         when 2**21 .. 2**28-1 =>
            append_short
               (stream,
               (1 => ada.streams.stream_element (x / 2**24 + 2**4),
                  2 => ada.streams.stream_element (x / 2**16 mod 2**8),
                  3 => ada.streams.stream_element (x / 2**8 mod 2**8),
                  4 => ada.streams.stream_element (x mod 2**8)));
         when 2**28 .. 2**31-1 =>
            append_short
               (stream,
               (1 => ada.streams.stream_element (2**3),
                  2 => ada.streams.stream_element (x / 2**24),
                  3 => ada.streams.stream_element (x / 2**16 mod 2**8),
                  4 => ada.streams.stream_element (x / 2**8 mod 2**8),
                  5 => ada.streams.stream_element (x mod 2**8)));
      end case;
   end write_n32;

   function decode_s8 (
         c : in     ada.streams.stream_element)
     return s8 is
      i : integer;
   begin
      i := integer (c);
      if i > s8'last then
         return i - 2**8;
      else
         return i;
      end if;
   end decode_s8;

   function encode_s8 (
         x : in     s8)
     return ada.streams.stream_element is
   begin
      if x < 0 then
         return ada.streams.stream_element (integer (x) + 2**8);
      else
         return ada.streams.stream_element (x);
      end if;
   end encode_s8;

   function read_s8 (
         stream : in     in_stream_type)
     return s8 is
      c : ada.streams.stream_element;
      i : integer;
   begin
      fetch (stream, c);
      i := integer (c);
      if i > s8'last then
         return i - 2**8;
      else
         return i;
      end if;
   end read_s8;

   procedure write_s8 (
         stream : in     out_stream_type;
         x      : in     s8) is
   begin
      if x < 0 then
         append (stream, ada.streams.stream_element (integer (x) + 2**8));
      else
         append (stream, ada.streams.stream_element (x));
      end if;
   end write_s8;

   function finish_reading_s32 (
         stream : in     in_stream_type;
         i_high : in     n32)
     return s32 is
      i3,
      i2,
      i1,
      i0 : s32;
   begin
      case i_high is

         -- Positive numbers and 0:
         when 2**7 .. 3*2**6-1 =>
            return i_high - 2**7;
         when 2**6 .. 3*2**5-1 =>
            fetch (stream, ada.streams.stream_element (i0));
            return (i_high - 2**6) * 2**8 + i0;
         when 2**5 .. 3*2**4-1 =>
            fetch (stream, ada.streams.stream_element (i1));
            fetch (stream, ada.streams.stream_element (i0));
            return (i_high - 2**5) * 2**16 + i1 * 2**8 + i0;
         when 2**4 .. 3*2**3-1 =>
            fetch (stream, ada.streams.stream_element (i2));
            fetch (stream, ada.streams.stream_element (i1));
            fetch (stream, ada.streams.stream_element (i0));
            return (i_high - 2**4) * 2**24 + i2 * 2**16 + i1 * 2**8 + i0;
         when 2**3 =>
            fetch (stream, ada.streams.stream_element (i3));
            fetch (stream, ada.streams.stream_element (i2));
            fetch (stream, ada.streams.stream_element (i1));
            fetch (stream, ada.streams.stream_element (i0));
            return i3 * 2**24 + i2 * 2**16 + i1 * 2**8 + i0;

         -- Negative numbers:
         when 3*2**6 .. 2**8-1 =>
            return i_high - 2**8;
         when 3*2**5 .. 2**7-1 =>
            fetch (stream, ada.streams.stream_element (i0));
            return (i_high - 2**7) * 2**8 + i0;
         when 3*2**4 .. 2**6-1 =>
            fetch (stream, ada.streams.stream_element (i1));
            fetch (stream, ada.streams.stream_element (i0));
            return (i_high - 2**6) * 2**16 + i1 * 2**8 + i0;
         when 3*2**3 .. 2**5-1 =>
            fetch (stream, ada.streams.stream_element (i2));
            fetch (stream, ada.streams.stream_element (i1));
            fetch (stream, ada.streams.stream_element (i0));
            return (i_high - 2**5) * 2**24 + i2 * 2**16 + i1 * 2**8 + i0;
         when 2**4-1 =>
            fetch (stream, ada.streams.stream_element (i3));
            fetch (stream, ada.streams.stream_element (i2));
            fetch (stream, ada.streams.stream_element (i1));
            fetch (stream, ada.streams.stream_element (i0));
            return (i3 - 2**8) * 2**24 + i2 * 2**16 + i1 * 2**8 + i0;

         when others =>
            raise format_error;
      end case;
   end finish_reading_s32;

   function read_s32 (
         stream : in     in_stream_type)
     return s32 is
      i_high : n32;
   begin
      fetch (stream, ada.streams.stream_element (i_high));
      return finish_reading_s32 (stream, i_high);
   end read_s32;

   procedure write_s32 (
         stream : in     out_stream_type;
         x      : in     s32) is
      y : n32;
   begin
      case x is

         -- Positive numbers and 0:
         when 0 .. 2**6-1 =>
            append (stream, ada.streams.stream_element (x + 2**7));
         when 2**6 .. 2**13-1 =>
            append_short
               (stream,
               (1 => ada.streams.stream_element (x / 2**8 + 2**6),
                  2 => ada.streams.stream_element (x mod 2**8)));
         when 2**13 .. 2**20-1 =>
            append_short
               (stream,
               (1 => ada.streams.stream_element (x / 2**16 + 2**5),
                  2 => ada.streams.stream_element (x / 2**8 mod 2**8),
                  3 => ada.streams.stream_element (x mod 2**8)));
         when 2**20 .. 2**27-1 =>
            append_short
               (stream,
               (1 => ada.streams.stream_element (x / 2**24 + 2**4),
                  2 => ada.streams.stream_element (x / 2**16 mod 2**8),
                  3 => ada.streams.stream_element (x / 2**8 mod 2**8),
                  4 => ada.streams.stream_element (x mod 2**8)));
         when 2**27 .. 2**31-1 =>
            append_short
               (stream,
               (1 => ada.streams.stream_element (2**3),
                  2 => ada.streams.stream_element (x / 2**24),
                  3 => ada.streams.stream_element (x / 2**16 mod 2**8),
                  4 => ada.streams.stream_element (x / 2**8 mod 2**8),
                  5 => ada.streams.stream_element (x mod 2**8)));

         -- Negative numbers:
         when -2**6 .. -1 =>
            append (stream, ada.streams.stream_element (x + 2**8));
         when -2**13 .. -2**6-1 =>
            y := x + 2**15;
            append_short
               (stream,
               (1 => ada.streams.stream_element (y / 2**8),
                  2 => ada.streams.stream_element (y mod 2**8)));
         when -2**20 .. -2**13-1 =>
            y := x + 2**22;
            append_short
               (stream,
               (1 => ada.streams.stream_element (y / 2**16),
                  2 => ada.streams.stream_element (y / 2**8 mod 2**8),
                  3 => ada.streams.stream_element (y mod 2**8)));
         when -2**27 .. -2**20-1 =>
            y := x + 2**29;
            append_short
               (stream,
               (1 => ada.streams.stream_element (y / 2**24),
                  2 => ada.streams.stream_element (y / 2**16 mod 2**8),
                  3 => ada.streams.stream_element (y / 2**8 mod 2**8),
                  4 => ada.streams.stream_element (y mod 2**8)));
         when -2**31 .. -2**27-1 =>
            declare
               i3 : constant s32 := (x + 1) / 2**24 - 1;
            begin
               y := x - i3 * 2**24;
               append_short
                  (stream,
                  (1 => ada.streams.stream_element (2**4-1),
                     2 => ada.streams.stream_element (i3 + 2**8),
                     3 => ada.streams.stream_element (y / 2**16 mod 2**8),
                     4 => ada.streams.stream_element (y / 2**8 mod 2**8),
                     5 => ada.streams.stream_element (y mod 2**8)));
            end;

      end case;
   end write_s32;

   function read_s64 (
         stream : in     in_stream_type)
     return s64 is
      i_high : s32;
      c7     : ada.streams.stream_element;
      i7,
      i6,
      i5,
      i4     : s64;
      i3,
      i2,
      i1,
      i0     : s64;
   begin
      fetch (stream, ada.streams.stream_element (i_high));
      if i_high = 0 then
         fetch (stream, c7);
         fetch (stream, ada.streams.stream_element (i6));
         fetch (stream, ada.streams.stream_element (i5));
         fetch (stream, ada.streams.stream_element (i4));
         fetch (stream, ada.streams.stream_element (i3));
         fetch (stream, ada.streams.stream_element (i2));
         fetch (stream, ada.streams.stream_element (i1));
         fetch (stream, ada.streams.stream_element (i0));
         i7 := s64 (decode_s8 (c7));
         return i7 * 2**56 + i6 * 2**48 + i5 * 2**40 + i4 * 2**32
            + i3 * 2**24 + i2 * 2**16 + i1 * 2**8 + i0;
      else
         return s64 (finish_reading_s32 (stream, i_high));
      end if;
   end read_s64;

   procedure write_s64 (
         stream : in     out_stream_type;
         x      : in     s64) is
      i7,
      i6543210 : s64;
   begin
      if x < -2**31 or else x >= 2**31 then
         if x < 0 then
            i7 := (x + 1) / 2**56 - 1;
         else
            i7 := x / 2**56;
         end if;
         i6543210 := x - i7 * 2**56;
         append_short
            (stream,
            (1 => 0,
               2 => encode_s8 (integer (i7)),
               3 => ada.streams.stream_element (i6543210 / 2**48),
               4 => ada.streams.stream_element (i6543210 / 2**40 mod 2**8),
               5 => ada.streams.stream_element (i6543210 / 2**32 mod 2**8),
               6 => ada.streams.stream_element (i6543210 / 2**24 mod 2**8),
               7 => ada.streams.stream_element (i6543210 / 2**16 mod 2**8),
               8 => ada.streams.stream_element (i6543210 / 2**8 mod 2**8),
               9 => ada.streams.stream_element (i6543210 mod 2**8)));
      else
         write_s32 (stream, s32 (x));
      end if;
   end write_s64;


   procedure read_unsigned_64 (
         stream : in     in_stream_type;
         x      :    out interfaces.unsigned_64) is
      byte   : ada.streams.stream_element;
      base   : natural;
      length : natural;                    -- Total length
   begin
      fetch (stream, byte);
      if byte = 0 then
         x := 0;
         length := 9;
         base := 64;
      else
         declare
            flag_bit : ada.streams.stream_element;
         begin
            base := 0;
            flag_bit := 2**7;
            length := 1;
            while (byte and flag_bit) /= flag_bit loop
               base := base + 8;
               flag_bit := flag_bit / 2;
               length := length + 1;
            end loop;
            x := interfaces.unsigned_64 (byte xor flag_bit) * 2**base;
            -- If Byte was 1, Base, Flag_Bit, and Length are now 56, 2**0, 8
         end;
      end if;

      for i in 2 .. length loop
         fetch (stream, byte);
         base := base - 8;
         x := x + interfaces.unsigned_64 (byte) * 2**base;
      end loop;
   end read_unsigned_64;

   procedure write_unsigned_64 (
         stream : in     out_stream_type;
         x      : in     interfaces.unsigned_64) is
      high   : ada.streams.stream_element;
      base   : natural;
      length : natural;                    -- Total length
      y      : interfaces.unsigned_64;
   begin
      if x >= 2**56 then
         high := 0;
         length := 9;
         base := 64;
         y := x;
      else
         declare
            flag_bit : ada.streams.stream_element;
         begin
            base := 56;
            flag_bit := 1;
            length := 8;
            while length > 1 and x < 2**(7*(length - 1)) loop
               base := base - 8;
               flag_bit := flag_bit * 2;
               length := length - 1;
            end loop;
            high := flag_bit or ada.streams.stream_element (x / 2**base);
            y := x mod 2**base;
         end;
      end if;

      declare
         l    : constant ada.streams.stream_element_offset         := ada.streams.stream_element_offset (length);
         data :          ada.streams.stream_element_array (1 .. l);
      begin
         data (1) := high;
         for i in 2 .. l loop
            base := base - 8;
            data (i) := ada.streams.stream_element (y / 2**base);
            y := y mod 2**base;
         end loop;

         append_short (stream, data);
      end;
   end write_unsigned_64;


   procedure read_character (
         stream : in     in_stream_type;
         x      :    out character) is
      c : ada.streams.stream_element;
   begin
      fetch (stream, c);
      x := character'val (integer (c));
   end read_character;

   procedure write_character (
         stream : in     out_stream_type;
         x      : in     character) is
   begin
      append (stream, ada.streams.stream_element (character'pos (x)));
   end write_character;


   procedure read_boolean (
         stream : in     in_stream_type;
         x      :    out boolean) is
   begin
      x := boolean'val (read_u8 (stream));
   end read_boolean;

   procedure write_boolean (
         stream : in     out_stream_type;
         x      : in     boolean) is
   begin
      write_u8 (stream, boolean'pos (x));
   end write_boolean;


   procedure read_enumerator (
         stream : in     in_stream_type;
         x      :    out t) is
   begin
      case t'pos (t'base'last) is
         when 0 .. 2**8-1 =>
            x := t'val (read_u8 (stream));
         when 2**8 .. 2**16-1 =>
            x := t'val (read_u16 (stream));
         when 2**16 .. 2**24-1 =>
            x := t'val (read_u24 (stream));
         when others =>
            x := t'val (read_n32 (stream));
      end case;
   end read_enumerator;

   procedure write_enumerator (
         stream : in     out_stream_type;
         x      : in     t) is
   begin
      case t'pos (t'base'last) is
         when 0 .. 2**8-1 =>
            write_u8 (stream, t'pos (x));
         when 2**8 .. 2**16-1 =>
            write_u16 (stream, t'pos (x));
         when 2**16 .. 2**24-1 =>
            write_u24 (stream, t'pos (x));
         when others =>
            write_n32 (stream, t'pos (x));
      end case;
   end write_enumerator;


   procedure read_integer (
         stream : in     in_stream_type;
         x      :    out integer) is
   begin
      x := read_s32 (stream);
   end read_integer;

   procedure write_integer (
         stream : in     out_stream_type;
         x      : in     integer) is
   begin
      write_s32 (stream, x);
   end write_integer;


   procedure read_natural (
         stream : in     in_stream_type;
         x      :    out natural) is
   begin
      x := read_n32 (stream);
   end read_natural;

   procedure write_natural (
         stream : in     out_stream_type;
         x      : in     natural) is
   begin
      write_n32 (stream, x);
   end write_natural;


   procedure read_long_long_integer (
         stream : in     in_stream_type;
         x      :    out long_long_integer) is
   begin
      x := read_s64 (stream);
   end read_long_long_integer;

   procedure write_long_long_integer (
         stream : in     out_stream_type;
         x      : in     long_long_integer) is
   begin
      write_s64 (stream, x);
   end write_long_long_integer;


   procedure read_integer_8 (
         stream : in     in_stream_type;
         x      :    out interfaces.integer_8) is
   begin
      x := interfaces.integer_8'val (read_s8 (stream));
   end read_integer_8;

   procedure write_integer_8 (
         stream : in     out_stream_type;
         x      : in     interfaces.integer_8) is
   begin
      write_s8 (stream, interfaces.integer_8'pos (x));
   end write_integer_8;


   procedure read_string (
         stream : in     in_stream_type;
         x      :    out string) is
      s : ada.streams.stream_element_array (ada.streams.stream_element_offset (x'first) .. ada.streams.stream_element_offset (x'last));
   begin
      fetch_long (stream, s);
      for i in s'range loop
         x (integer (i)) := character'val (integer (s (i)));
      end loop;
   end read_string;

   procedure write_string (
         stream : in     out_stream_type;
         x      : in     string) is
      s : ada.streams.stream_element_array (ada.streams.stream_element_offset (x'first) .. ada.streams.stream_element_offset (x'last));
   begin
      for i in s'range loop
         s (i) := ada.streams.stream_element (character'pos (x (integer (i))));
      end loop;
      append_long (stream, s);
   end write_string;


   function read_short_string (
         stream : in     in_stream_type)
     return string is
      n : u8;
   begin
      n := read_u8 (stream);
      declare
         s : string (1 .. n);
      begin
         read_string (stream, s);
         return s;
      end;
   end read_short_string;

   -- S'Length is in U8
   procedure write_short_string (
         stream : in     out_stream_type;
         s      : in     string) is
      n : constant u8 := s'length;
   begin
      write_u8 (stream, n);
      write_string (stream, s);
   end write_short_string;


   procedure read_unbounded_string (
         stream : in     in_stream_type;
         x      :    out ada.strings.unbounded.unbounded_string) is
      n : natural;
   begin
      read_natural (stream, n);
      declare
         s : string (1 .. n);
      begin
         read_string (stream, s);
         x := ada.strings.unbounded.to_unbounded_string (s);
      end;
   end read_unbounded_string;

   procedure write_unbounded_string (
         stream : in     out_stream_type;
         x      : in     ada.strings.unbounded.unbounded_string) is
      s : constant string := ada.strings.unbounded.to_string (x);
   begin
      write_natural (stream, s'length);
      write_string (stream, s);
   end write_unbounded_string;


   generic
      type t is digits <>;
      procedure generic_read_float (
            stream : in     in_stream_type;
            x      :    out t);

   generic
      type t is digits <>;
      procedure generic_write_float (
            stream : in     out_stream_type;
            x      : in     t);


   procedure generic_read_float (
         stream : in     in_stream_type;
         x      :    out t) is
      s : constant string := read_short_string (stream);
   begin
      if s = "+MAX" then
         x := t'last;
      elsif s = "-MAX" then
         x := t'first;
      else
         x := t'value (s);
      end if;
   end generic_read_float;

   procedure generic_write_float (
         stream : in     out_stream_type;
         x      : in     t) is
      s : constant string := t'image (x);

      -- Unfortunately 'Value ('Image (X)) might proceduce infinity,
      -- even if X isn't.
      function check (
            default : string)
        return string is
         y : t;
      begin
         y := t'value (s);
         if y >= t'last or else y <= t'first then
            return default;
         else
            return s;
         end if;
      exception
         when constraint_error =>
            return default;
      end check;

   begin
      if x > t'last * 0.9 then
         write_short_string (stream, check ("+MAX"));
      elsif x < t'first * 0.9 then
         write_short_string (stream, check ("-MAX"));
      else
         write_short_string (stream, s);
      end if;
   end generic_write_float;


   procedure read_float_instance is
   new generic_read_float (float);
   procedure write_float_instance is
   new generic_write_float (float);

   procedure read_float (
         stream : in     in_stream_type;
         x      :    out float) renames read_float_instance;

   procedure write_float (
         stream : in     out_stream_type;
         x      : in     float) renames write_float_instance;


   procedure read_extended_float_instance is
   new generic_read_float (interfaces.ieee_extended_float);
   procedure write_extended_float_instance is
   new generic_write_float (interfaces.ieee_extended_float);

   procedure read_extended_float (
         stream : in     in_stream_type;
         x      :    out interfaces.ieee_extended_float) renames read_extended_float_instance;

   procedure write_extended_float (
         stream : in     out_stream_type;
         x      : in     interfaces.ieee_extended_float) renames write_extended_float_instance;


   function more_input (
         stream : in     in_stream_type)
     return boolean is
      first : ada.streams.stream_element_offset := stream.first;
   begin
      -- No input pending?  Try to read.
      if first > stream.last then
         first := 1;
         stream.first := first;
         ada.streams.read (stream.stream.all, stream.buffer, stream.last);
      end if;

      -- Some input pending now?
      return first <= stream.last;
   end more_input;


   function make_internal (
         stream : access ada.streams.root_stream_type'class)
     return in_stream_type is
      s : in_stream_type;
   begin
      s := new in_stream_data;
      s.stream := stream_type (stream);
      s.first := 1;
      s.last := 0;
      return s;
   end make_internal;

   function make_internal (
         stream : access ada.streams.root_stream_type'class)
     return out_stream_type is
      s : out_stream_type;
   begin
      s := new out_stream_data;
      s.stream := stream_type (stream);
      s.in_use := 0;
      return s;
   end make_internal;


   -- Skips an arbitrary amount of input data.
   procedure flush (
         stream : in out in_stream_type) is
   begin
      stream.first := 1;
      stream.last := 0;
   end flush;

   more_input_data_pending : exception;

   procedure release (
         stream : in out in_stream_type) is

      procedure free is
      new ada.unchecked_deallocation (in_stream_data, in_stream_type);

   begin
      if stream.first <= stream.last then
         raise more_input_data_pending;
      end if;
      free (stream);
   end release;

   procedure release (
         stream : in out out_stream_type) is

      procedure free is
      new ada.unchecked_deallocation (out_stream_data, out_stream_type);

   begin
      flush (stream);
      free (stream);
   end release;

end test;
