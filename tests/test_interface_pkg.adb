with ada.text_io;
package body test_interface_pkg is

   ---------
   -- Op1 --
   ---------

   procedure Op1 (This : in T1) is
   begin
      ada.text_io.put_line("hello world");
   end Op1;

   ---------
   -- Op2 --
   ---------

   procedure Op2 (This : in T1) is
   begin
      null;
   end Op2;

   ---------
   -- Op3 --
   ---------

   procedure Op3 (This : in T1) is
   begin
      null;
   end Op3;
end test_interface_pkg;
