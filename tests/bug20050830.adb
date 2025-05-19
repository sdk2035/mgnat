with Discrete_Random;
with Ada.Text_Io;
use Ada.Text_Io;
with Ada.Integer_Text_Io;
use Ada.Integer_Text_Io;
with Ada.Calendar;
with System.Arith_64;
procedure Bug20050830 is

   subtype Inirange is Integer range 10000..99999;
   package Random_Ini is new Discrete_Random (Inirange);
   use Random_Ini;
   type Key_Type is array (1 .. 5) of Inirange;

   Lastkey : Key_Type;
   C       : Character;

   function Keygen_Withsolution return Key_Type is
      G   : Generator;
      Key : Key_Type  := (11111, 22222, 33333, 44444, 55555);

      function Generate return Key_Type is
         Key : Key_Type;
      begin
         Reset(G);
         for I in 1..5 loop
            Key(I) := Random(G);
         end loop;
         return Key;
      end Generate;

   begin
      Key := Generate;
      --  Stupid "solution" start
      while Key = Lastkey loop
         Key := Generate;
      end loop;
      Lastkey := Key;
      return Key;
   exception
      when Constraint_Error =>
         return Keygen_Withsolution;
         --  Stupid "solution" end
   end Keygen_Withsolution;

   function Keygen_Withbug return Key_Type is
      G : Generator;

      function Generate return Key_Type is
         Key : Key_Type;
      begin
         put_line("about to reset");
         Reset(G);
         put_line("past reset");
         for I in 1..5 loop
            Key(I) := Random(G);
         end loop;
         put_line("returning generate");
         return Key;
      end Generate;

   begin
      Put_Line("returning keygen_withbug");
      return Generate;
   end Keygen_Withbug;

   function Keytotext (
         Key : in     Key_Type)
     return String is
      Section1,
      Section2,
      Section3,
      Section4,
      Section5 : String (1 .. 5);
   begin
      put_Line("starting keytotext");
      Put(Section1, Key(1));
      Put(Section2, Key(2));
      Put(Section3, Key(3));
      Put(Section4, Key(4));
      Put(Section5, Key(5));
      put_Line("returning keytotext");
      return (Section1 & '-' & Section2 & '-' & Section3 &
         '-' & Section4 & '-' & Section5);
   end Keytotext;
   Now : Ada.Calendar.Time := Ada.Calendar.Clock;
   x,y,z,q,r : system.arith_64.Int64;
begin
   --loop
   --  Put_Line (keytotext(keygen_withsolution));
   --  Get_Immediate(c);
   --end loop;
   X := 100000;
   Y := 10000000000;
   Z := 1000000000000000000;
   System.Arith_64.Scaled_Divide(
      X => X, Y => Y, Z => Z, Q => Q, R => R, Round => False);
   put_line("past divide");
   Put_Line(system.arith_64.int64'image(Q));
   Put_Line(system.arith_64.int64'image(r));
   Put_Line("answer below should be 1000x ");
   put_line(integer'image(integer(ada.Calendar.Seconds(now))));
   Put_Line(Integer'Image(Integer(Ada.Calendar.Seconds(Now) * Duration(1000.0))));
   
   loop
      Put_Line (Keytotext(Keygen_Withbug));
      Put_Line ("press enter to continue");
      Skip_Line;
   end loop;
end Bug20050830;
