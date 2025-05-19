with Peer;
with Ada.Text_IO;
with MSSyst.Drawing;
use MSSyst.Drawing;
with MSSyst.Drawing.Point;
with MSSyst.Drawing.Size;

procedure Test_Pkg_Const is
   Height : integer := 3;
   How_Big  : Size.Valuetype;
   Width : integer := 40;
begin
--      How_Big := Size.New_Size(Width => Width,
--         Height => Height+Peer.Title_Bar_Size);
--      Height := Peer.Title_Bar_Size + Height;
      How_Big := Size.New_Size(Width => Width,
         Height => Peer.Title_Bar_Size+Height);
--   Ada.Text_IO.Put_Line(Integer'Image(Height));
   Ada.Text_IO.Put_Line(Integer'Image(How_Big.Get_Height));
end Test_Pkg_Const;

