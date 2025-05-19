with Ada.Text_Io;
with Log;
with Ada.Direct_Io;
procedure Test_Direct_Io is
   Package_Name : constant String := "Test_Direct_Io";
   -----------------Table of Contents--------------------
   package T_Io renames Ada.Text_Io;
   -------------End Table of Contents--------------------
   Log_File_Named_And_Created : Boolean := Log.Must_Name_And_Create_Log (Log_File_Name => "Test_Direct_Io");
   --Must Do
   package Integer_Io is new Ada.Direct_Io(Integer);

   subtype Positive_Count_Type is Integer_Io.Positive_Count;
   subtype Integer_File_Type is Integer_Io.File_Type;
   subtype Index_Type is Integer_Io.Positive_Count;
   ----------------------------------------------------------------------------
   --In_Pixel_File,   
   Integer_File      : Integer_File_Type;
   Integer_File_Name : String               := "Integer_File.Io";
   Location          : String               := Package_Name;
   Test              : Boolean              := True;
begin--Test_Direct_Io
   T_Io.Put_Line ("Test_Direct_Io Began.");
   T_Io.Put_Line ("Log_File_Named_And_Created is " & Boolean'Image(
         Log_File_Named_And_Created));
   Log.Put_Line_F("Log_File_Named_And_Created is " & Boolean'Image(
         Log_File_Named_And_Created));

   --   Log.Put_Line_F ("This Log File was created at "
   --      & Time_Types.Strings_Bd.Create_Dd_Mmm_Yy & ":" &
   --      Time_Types.Strings_Bd.Create_Hr_Min_Sec &".");
   Log.Log_To_Crt := True;
   --When true,this forces dual output to the log & CRT
   Log.Set_Line_Length(To => 70);
   Log.Put_Line_F("Starting Test_Direct_Io");
   Log.Put_Line_F("Log And_Crt_Setting is "
      & Boolean'Image(Log.Log_To_Crt));

   Integer_Io.Create(Integer_File, Mode => Integer_Io.Inout_File, Name =>  Integer_File_Name);
   if Test then
      Log.Put_Line_F("In " & Location);
      Log.Put_Line_F("Integer_File_Name = "
         & Integer_File_Name);
      T_Io.Put_Line("In " & Location);
      T_Io.Put_Line ("Integer_File_Name = "
         & Integer_File_Name);
   end if;
   if not Integer_Io.Is_Open(Integer_File) then
      Log.Put_Line_F("Integer_File is, as expected, not open. Will now open");
      if Test then
         T_Io.Put_Line("Integer_File is, as expected, not open. Will now open");
      end if;

      Integer_Io.Open(Integer_File, Integer_Io.In_File, Name => Integer_File_Name
         );
      --raises ADA.IO_EXCEPTIONS.STATUS_ERROR
      Log.Put_Line_F("Opened Integer_File");
      T_Io.Put_Line("Opened Integer_File");
   else
      Log.Put_Line_F("Integer_File was already open.");
      T_Io.Put_Line("Integer_File was already open.");
   end if;
   Integer_Io.Write(Integer_File, Item => 1); --Line 63 error
   T_Io.Put("A 1 has been writen to the Integer_File.");
   Log.Put_Line_F("A 1 has been writen to the Integer_File.");
   T_Io.Put("The size of the Integer_File is " & Positive_Count_Type'image(Integer_Io.Size (Integer_File)));
   Log.Put_Line_F("The size of the Integer_File is "& Positive_Count_Type'image(Integer_Io.Size (Integer_File)));
   Integer_Io.Set_Index(Integer_File, To => 1);
   Integer_Io.Close (Integer_File);

   Log.Put_Line_F("Will now close Log file.");
   Log.Close_Log;
   -----------------------------------------------------------------
   T_Io.New_Line;
   T_Io.Put_Line(
      "Log file written; program will now end.");
exception
   when E: Integer_Io.End_Error =>
      Log.Log_Exception(
         The_Exception_Occurrence => E,
         Error_Message            => "End_Error in " & Package_Name);


   when S:Integer_Io.Status_Error => --Ada.Io_Exceptions.Status_Error =>
      Log.Log_Exception(
         The_Exception_Occurrence => S,
         Error_Message            => "Status in " & Package_Name);


   when N:Integer_Io.Name_Error =>
      Log.Log_Exception(
         The_Exception_Occurrence => N,
         Error_Message            => "Name_Error in " & Package_Name);


   when M:Integer_Io.Mode_Error =>
      Log.Log_Exception(
         The_Exception_Occurrence => M,
         Error_Message            => "Mode_Error in " & Package_Name);


   when U:Integer_Io.Use_Error =>
      Log.Log_Exception(
         The_Exception_Occurrence => U,
         Error_Message            => "Use_Error in " & Package_Name);


   when D:Integer_Io.Device_Error =>
      Log.Log_Exception(
         The_Exception_Occurrence => D,
         Error_Message            => "Device_Error in " & Package_Name);


   when A:Integer_Io.Data_Error =>
      Log.Log_Exception(
         The_Exception_Occurrence => A,
         Error_Message            => "Data_Error in " & Package_Name);


   when O: others =>
      Log.Log_Exception(
         The_Exception_Occurrence => O,
         Error_Message            => "Others_Error in " & Package_Name & ".");

      Log.Put_Line_F("Will now close Log file.");
      Log.Close_Log;

end Test_Direct_Io;
