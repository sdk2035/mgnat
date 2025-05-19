with ada.streams;
with ada.strings.unbounded;
with interfaces;


package test is

   type in_stream_type is private;
   type out_stream_type is private;


   procedure read_boolean (
         stream : in     in_stream_type;
         x      :    out boolean);

   procedure write_boolean (
         stream : in     out_stream_type;
         x      : in     boolean);


   generic
      type t is
            (<>);
      procedure read_enumerator (
            stream : in     in_stream_type;
            x      :    out t);

   generic
      type t is
            (<>);
      procedure write_enumerator (
            stream : in     out_stream_type;
            x      : in     t);


   procedure read_integer (
         stream : in     in_stream_type;
         x      :    out integer);

   procedure write_integer (
         stream : in     out_stream_type;
         x      : in     integer);


   procedure read_natural (
         stream : in     in_stream_type;
         x      :    out natural);

   procedure write_natural (
         stream : in     out_stream_type;
         x      : in     natural);


   procedure read_long_long_integer (
         stream : in     in_stream_type;
         x      :    out long_long_integer);

   procedure write_long_long_integer (
         stream : in     out_stream_type;
         x      : in     long_long_integer);


   procedure read_integer_8 (
         stream : in     in_stream_type;
         x      :    out interfaces.integer_8);

   procedure write_integer_8 (
         stream : in     out_stream_type;
         x      : in     interfaces.integer_8);


   procedure read_unsigned_64 (
         stream : in     in_stream_type;
         x      :    out interfaces.unsigned_64);

   procedure write_unsigned_64 (
         stream : in     out_stream_type;
         x      : in     interfaces.unsigned_64);


   procedure read_character (
         stream : in     in_stream_type;
         x      :    out character);

   procedure write_character (
         stream : in     out_stream_type;
         x      : in     character);


   procedure read_float (
         stream : in     in_stream_type;
         x      :    out float);

   procedure write_float (
         stream : in     out_stream_type;
         x      : in     float);


   procedure read_extended_float (
         stream : in     in_stream_type;
         x      :    out interfaces.ieee_extended_float);

   procedure write_extended_float (
         stream : in     out_stream_type;
         x      : in     interfaces.ieee_extended_float);


   procedure read_string (
         stream : in     in_stream_type;
         x      :    out string);

   procedure write_string (
         stream : in     out_stream_type;
         x      : in     string);


   procedure read_unbounded_string (
         stream : in     in_stream_type;
         x      :    out ada.strings.unbounded.unbounded_string);

   procedure write_unbounded_string (
         stream : in     out_stream_type;
         x      : in     ada.strings.unbounded.unbounded_string);



   procedure skip_input (
         stream : in     in_stream_type;
         n      : in     natural);


   function more_input (
         stream : in     in_stream_type)
     return boolean;


   function make_internal (
         stream : access ada.streams.root_stream_type'class)
     return in_stream_type;

   function make_internal (
         stream : access ada.streams.root_stream_type'class)
     return out_stream_type;



   procedure flush (
         stream : in out in_stream_type);



   procedure release (
         stream : in out in_stream_type);

   procedure release (
         stream : in out out_stream_type);

private

   type stream_type is access all ada.streams.root_stream_type'class;

   buffer_size : constant := 16384;

   type in_stream_data is
      record
         stream : stream_type;
         buffer : ada.streams.stream_element_array (1 .. buffer_size);
         first  : ada.streams.stream_element_offset;
         last   : ada.streams.stream_element_offset;
      end record;

   type out_stream_data is
      record
         stream : stream_type;
         buffer : ada.streams.stream_element_array (1 .. buffer_size);
         in_use : ada.streams.stream_element_offset;
      end record;

   type in_stream_type is access all in_stream_data;
   type out_stream_type is access all out_stream_data;

end test;
