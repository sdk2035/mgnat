with Peer;
with Ada.Text_IO;
with Size;

procedure Test_Pkg_Const_Native is
   Height : integer := 3;
   How_Big  : Size.Valuetype2;
   Width : integer := 40;
begin
   How_Big := Size.New_Size(Width => Width,
      Height => Peer.Title_Bar_Size+Height);
   Ada.Text_IO.Put_Line("Answer should be 43:" & Integer'Image(Size.Get_Height(How_Big)));
end Test_Pkg_Const_Native;

