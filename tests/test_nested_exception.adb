with ada.text_io;
use ada.text_io;
with ada.io_exceptions;
with ada.exceptions;
procedure test_nested_exception is
   function Must_Name_And_Create_Log (
         Log_File_Name : String)
     return Boolean is
      Log_Named_And_Created      : Boolean   := False;
      Is_Log_Open : Boolean;
      Something_Very_Wrong_Error : exception;
   begin  --  Must_Name_and_Create_Log
      Put_Line
         ("Name_and_Create_Log. Properly was not open. Log created");
      --if not Is_Log_Open then
      --   raise Something_Very_Wrong_Error;
      --else
      --   Log_Named_And_Created := True;
      --end if;
      return Log_Named_And_Created;
   exception
      when S : Something_Very_Wrong_Error =>
         --  Assume can not write to file.
         Put_Line ("Something_Very_Wrong_Error in Log.Create_Log."
            );
         --Put_Line ("Could not Open Log.");
         Put_Line (Ada.Exceptions.Exception_Information (S));
         --Put_Line (Ada.Exceptions.Exception_Message (S));
         return not Log_Named_And_Created;
      --  Exit_Process;


      when N : Ada.Io_Exceptions.Name_Error =>
         Put_Line ("Name_Error in Log.Create_Log.");
         --Put_Line (Ada.Exceptions.Exception_Information (N));
         --Put_Line (Ada.Exceptions.Exception_Message (N));
         return not Log_Named_And_Created;
      --  Exit_Process;

      when O : others =>  --  Complete Mystery
         Put_Line ("Others Exception in Log.Create_Log.");
         --Put_Line (Ada.Exceptions.Exception_Name (O));
         --Put_Line (Ada.Exceptions.Exception_Information (O));
         --Put_Line (Ada.Exceptions.Exception_Message (O));
         return not Log_Named_And_Created;
         --  Exit_Process;
   end Must_Name_And_Create_Log;
begin
   begin
      put_line("begin nesting");
      begin
         put_line("should see exception handled");
         raise Constraint_Error;
      exception
         when Numeric_Error => put_line("exception handled");
      end;
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
