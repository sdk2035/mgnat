with ada.unchecked_conversion;
with ada.text_io;
use ada.text_io;
procedure test_unchecked_conv is
   x : float := 3.0;
   y : integer := 3;
   type mod_32 is mod 2**32;
   z : mod_32 := 14;
   function convert is new ada.unchecked_conversion(mod_32,integer);   
   function convert2 is new ada.unchecked_conversion(float,integer);   
begin
   y := convert(z);
   put_line ("14 converted is:" & integer'image (y));
   y := convert2(x);
   put_line ("expect 1077936128");
   put_line ("3.0 unchecked converted is:" & integer'image (y));
end test_unchecked_conv;