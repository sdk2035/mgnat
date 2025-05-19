--------------------------
generic
   type item_type is private;
package gen_pkg  is
   procedure do_something (item : item_type);
end gen_pkg;
