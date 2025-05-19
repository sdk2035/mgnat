with ada.text_io;
use ada.text_io;
package body package_procedure_access is

   procedure tim(x : in integer; z : in string) is
   begin
      put_line("tim" & integer'image(x) & z);
   end tim;
end package_procedure_access;