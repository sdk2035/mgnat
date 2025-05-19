with ada.text_io;
use ada.text_io;
with ada.unchecked_deallocation;

package body test_controlled_pkg is
   procedure free is new ada.unchecked_deallocation(test_controlled_pkg.larry'class,
      test_controlled_pkg.larry_ptr);

   --------------
   -- Finalize --
   --------------

   procedure Finalize (This : in out Fred) is
   begin
      put_line("finalizing");
      --free(this.z);
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (This : in out fred) is
   begin
      put_line("initializing");
      --this.z := new larry;
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (This : in out larry) is
   begin
      put_line("larry finalizing");
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (This : in out larry) is
   begin
      put_line("larry initializing");
      this.z := 15;
   end Initialize;
end test_controlled_pkg;

