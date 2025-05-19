-- check the output IL to make sure that it correctly references IO_Exceptions.Device_Error
-- instead of ada.text_io.device_error
-- 
-- bug fix at jx_decl.adb:2525
with ada.text_io;
procedure test_device_error is
begin
   raise Standard'Abort_Signal;
   --  raise ada.text_io.device_error;
   --  raise constraint_error;
end test_device_error;