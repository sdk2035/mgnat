with MSSyst.Console; use MSSyst.Console;
with MSSyst.String; use MSSyst.String;

-- Test for the (possible) compiler error
procedure Test_Compiler is
   My_Integer : constant Integer := 10;
begin
   -- This in NOT OK :(
   WriteLine("Hello"&Integer'Image(My_Integer)&" post");

   -- This is ok
   WriteLine("Hello");

   -- This is ok
   WriteLine(Integer'Image(My_Integer));

   -- This is ok
   WriteLine("Hello"&Integer'Image(My_Integer));

end;
