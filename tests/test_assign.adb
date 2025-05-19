procedure Test_Assign is

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

   -- Workaround:
   Null_Ints : Int_Array := (others => 0);
   Null_Rec  : Tst_Record := (Ints => Null_Ints);
   Rec2      : Tst_Array := (others => Null_Rec);

begin      
   -- Also fails:
   --Rec := (others => (Ints => (others => 0)));

   null;
end Test_assign;
