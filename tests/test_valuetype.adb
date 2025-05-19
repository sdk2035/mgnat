with MSSyst.Windows.Forms;
use MSSyst.Windows.Forms;
with MSSyst.Drawing;
use MSSyst.Drawing;
with MSSyst.Drawing.Rectangle;
with MSSyst.Drawing.Color;
with Mssyst.Windows.Forms.Screen;
with mssyst.string;
use mssyst.string;
procedure Test_Valuetype is
   Bounds : Rectangle.Valuetype;   
   PrimaryScreen : Screen.Ref;
begin
   PrimaryScreen := Screen.get_PrimaryScreen;
   Bounds := PrimaryScreen.Get_Bounds;
end Test_Valuetype;
