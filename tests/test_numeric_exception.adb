with ada.text_io;
use ada.text_io;
with ada.io_exceptions;
procedure test_numeric_exception is
begin
   begin
      put_line("should see exception handled");
      raise Constraint_Error;
   exception
      when Numeric_Error => put_line("exception handled");
   end;
   begin
      put_line("should see another exception handled");
      raise ada.text_io.data_error;
   exception 
      when end_error =>
         put_line("never raised");
      when ada.io_exceptions.data_error =>
         put_line("another exception handled");
      when constraint_error =>
         put_line("hard to see how this could happen");
   end;
end;
