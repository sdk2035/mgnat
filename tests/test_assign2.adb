with ada.text_io;
use ada.text_io;
procedure Test_Assign2 is

   type Int_Array is array (1..10) of Integer;
   type Tst_Record is record
      Ints : Int_Array := (others => 0);
   end record;

   type Tst_Array is array (1..10) of Tst_Record;

   -- test assignment fails with:
   --      Unhandled Exception: System.NullReferenceException:
   --                           Object reference not set to
   --                           an instance of an object.
   Rec : Tst_Array := (others => (Ints => (others => 0)));
   --  Rec : Tst_Array;
begin      
   Rec(3).Ints(4) := 5;
   put_line("hello1");
   Rec(3) := (Ints => (others => 0));
   put_line("hello2");
   Rec := (others => (Ints => (others => 0)));
null;
end Test_assign2;
