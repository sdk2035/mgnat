package size is
   type valuetype2 is tagged record
        height, width : integer;
   end record;
   function new_size(width: in integer; height: in integer) return valuetype2;
   function get_height(this : in valuetype2) return integer;
end size;