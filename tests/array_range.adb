with ada.text_io;
use Ada.Text_Io;
with Mssyst.String;
procedure array_range is
   type fred is array(Character) of Character;
   z : fred := (others => 'a');
   type charlie is array(boolean) of boolean;
   W : Charlie := (others => False);
    
  type a_rec is array (1..10,1..10) of integer;
  a_var : a_Rec;  -- line 21

begin
   for i in z'range loop
      put(z(i));
   end loop;
end array_range;