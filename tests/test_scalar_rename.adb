with Ada.Text_Io;

procedure Test_Scalar_Rename is

   type Bug is tagged
      record
         Legs : Natural;
      end record;

   type Access_Bug is access all Bug'Class;

   type Array_Of_Access_Bug is array (1..2) of Access_Bug;

   type Bug_Family is
      record
         Bugs : Array_Of_Access_Bug;
      end record;

   procedure Kill_Bug (Bug : in out Access_Bug) is
   begin
      null;
   end;

   F : Bug_Family;
   B : Access_Bug;

begin
   Ada.Text_Io.Put_Line ("Scalar rename (also fails with JGNAT 1.2w)");
   B := new Bug'(Legs => 6);
   Kill_Bug (Access_Bug (F.Bugs (1)));
   -- Compiler reports:
   --    test_scalar_rename.adb:30:27: unsupported form of scalar object renaming

   -- However, this does work:
   Kill_Bug (F.Bugs (1));
   -- or:
   B := F.Bugs (1);
   Kill_Bug (B);
end Test_Scalar_Rename;
