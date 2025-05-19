with Ada.Command_Line;
with Ada.Text_IO;
with ada.numerics.elementary_functions;
use ada.numerics.elementary_functions;
with ada.integer_text_io;

procedure echo_args is
begin
   Ada.Text_IO.Put_Line("command name:" & Ada.Command_Line.Command_Name);
   Ada.Text_IO.Put_Line("number of arguments:" &
      integer'image(ada.command_line.argument_count));
   
   for i in 1..Ada.Command_Line.Argument_Count loop
      Ada.Text_IO.Put(" """ & Ada.Command_Line.Argument(i) & """");
   end loop;
   ada.text_io.new_line;
   ada.text_io.put_line("press enter to exit");
   ada.text_io.skip_line;
end echo_args;