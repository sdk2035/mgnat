procedure Test_Record_Layout is
   type Mod4 is mod 4;
   type short_Int is new natural range 0..2**16-1;
   type Fred is record
      X : Mod4;
      Y : Mod4;
      Z : Mod4;
      W : Mod4;
      C : Character;
      short: Short_Int;
   end record;
   for Fred use record
      X at 0 range 0..1;
      Y at 0 range 2..3;
      Z at 0 range 4..5;
      W at 0 range 6..7;
      C at 0 range 8..15;
      Short at 0 range 16..31;
   end record;
   bob : fred; 
begin
   bob.x := 2;
end Test_Record_Layout;
