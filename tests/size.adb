package body size is

   --------------
   -- new_size --
   --------------

   function new_size
     (width: in integer;
      height: in integer)
      return valuetype2
         is
   begin
      return valuetype2'(width => width, height => height);
   end new_size;

   ----------------
   -- get_height --
   ----------------

   function get_height (this : in valuetype2) return integer is
   begin
      return this.height;
   end get_height;

end size;
