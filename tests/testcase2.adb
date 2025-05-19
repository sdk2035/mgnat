with Ada.Text_IO;
use Ada.Text_IO;

procedure Testcase2 is
   type n32 is mod 2**30;
   function Caseswitch(X : in N32) return Integer is
   begin
      case X is
         when 0 .. 2**7-1 =>
            return 1;
         when 2**7 .. 2**14-1 =>
            return 2;
         when 2**14 .. 2**21-1 =>
            return 3;
         when 2**21 .. 2**28-1 =>
            return 4;
         when 2**28 .. 2**30-1 =>
            return 5;
      end case;
   end Caseswitch;
   
begin
   Put_Line(Integer'Image(Caseswitch(0)));
   Put_Line(Integer'Image(Caseswitch(2**7-1)));
   Put_Line(Integer'Image(Caseswitch(2**7)));   
   Put_Line(Integer'Image(Caseswitch(2**14-1)));   
   Put_Line(Integer'Image(Caseswitch(2**14)));   
   Put_Line(Integer'Image(Caseswitch(2**21-1)));   
   Put_Line(Integer'Image(Caseswitch(2**21)));   
   Put_Line(Integer'Image(Caseswitch(2**28-1)));   
   Put_Line(Integer'Image(Caseswitch(2**28)));   
   Put_Line(Integer'Image(Caseswitch(2**31-1)));   
end Testcase2;

