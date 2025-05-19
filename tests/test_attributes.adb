with ada.text_io;
use ada.text_io;

procedure Test_Attributes is
   subtype Sub_Integer is Integer range 0 .. 10;
   subtype Sub_Float is Float range 0.0 .. 10.0;
   type Fixed is delta 0.5 range 0.0 .. 10.0;
   type Fixed_Digit is delta 0.1 digits 2;
   type Enum is (One, Two, Three);
   type Arr is array (Natural range <>) of Integer;
   
   type Rec (Num : Integer := 10) is record
      null;
   end record;
   
   task type Go is
      entry Start;
   end Go;
   
   task body Go is
      I : Integer := Start'Count;
   begin
      select
         accept Start;
      or 
         terminate;
      end select;
   end Go;
   
   I  : Integer     := 0;
   SI : Sub_Integer := 0;   
   F  : Float       := 0.0;
   Sf : Sub_Float   := 0.0;
   Fx : Fixed       := 0.0;
   Fd : Fixed_Digit := 0.0;
   E  : Enum        := Two;
   B  : Boolean     := true;
   C  : Character   := ' ';
   S  : String      := "test";
   A  : Arr (1..2)  := (0,0);
   R  : Rec;
   T  : Go;
begin
   Put_Line("testing attributes");
   I := Integer'Min (2,3);
   if I/=2 then
      put_line ("min failed");
   end if;
   I := Integer'Max (2,3);
   if I/=3 then
      put_line ("min failed");
   end if;
   I := Integer'Image (Integer'Value ("12"))'Length;
   if I/=3 then
     Put_Line ("expected length 3");
   end if;
   I := Integer'val (Integer'Pos (2));
   I := Integer'First;
   put_line ("integer'first is " & integer'image(i));
   I := Integer'Last;
   put_line ("integer'last is " & integer'image(i));
   I := Integer'Size;
   put_line ("integer'size is " & integer'image(i));

   F := Float'Truncation 
      (Float'Floor 
      (Float'Ceiling (F)));
   put_line ("trunc is " & float'image(f) & ": should be 0.00");
   F := Float'Remainder (F, 1.0);
   put_line ("remainder is " & float'image(f));
   F := Float'Rounding (F);
   put_line ("rounding is " & float'image(f));
   F := Float'Safe_First;
   put_line ("safe first is " & float'image(f));
   F := Float'Safe_Last;
   put_line ("safe last is " & float'image(f));
   f := 30.0;
   F := Float'Scaling(F, 10);
   I := Float'Size;

   -- Next line fails with:
   --   unsupported form of scalar object renaming
   I := Integer (F);
   I := Integer (Float'Rounding (F));

   put_line("phase 2");
   I := Sub_Float'digits;
   I := Sub_Float'Width;
   Sf := Sub_Float'Adjacent (Sf,F);
   I := Sub_Float'Size;
    F := Fixed'Small;
   F := Fixed'delta;
   I := Fixed'Fore;
   I := Fixed'Aft;
   I := Fixed'Size;
   
   I := Fixed_Digit'Digits;   
   I := Fixed_Digit'scale;
   Fd := Fixed_Digit'Round (Fd);
   I := Fixed_Digit'Size;
   
   put_line("phase 3");
   E := Enum'Pred (Enum'Succ (E));
   I := Integer (Enum'Pos (Enum'val (2)));
   I := Enum'Size;

   B := T'Callable;
   B := T'Terminated;
   I := T'Size;
   
   C := Character'val (Character'pos (C));

   put_line("phase 4");

   for Idx in S'range loop null; end loop;
   for Idx in S'range(1) loop null; end loop;
   for Idx in S'First .. S'Last loop null; end loop;
   for Idx in S'First(1) .. S'Last(1) loop null; end loop;
   I := S'Size;
   
   B := R'Constrained;
   I := R'Size;
   
end test_attributes;
