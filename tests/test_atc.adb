with Ada.Text_io;
procedure test_atc is

   -- Generates an exception:
   --   Unhandled Exception: System.TypeLoadException: Could not load type
   --       system.address_image_pkg from assembly mgnat, Version=0.0.0.0,
   --       Culture=neutral, PublicKeyToken=713d0175fa8fbef8.
   --     at ada_test_atc_pkg.adainit()
   --     at test_atc.main(String[] args)

begin
   select
      delay 1.0;
      Ada.Text_io.Put_line ("Aborted");
   then abort
      for I in 1 .. 20 loop
         Ada.Text_io.Put_line (Integer'Image (I));
         delay 0.1;
      end loop;
   end select;
end test_atc;
