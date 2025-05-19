package body Test.Text_IO is

   procedure Create
     (File : in out File_Type;
      Mode : in     File_Mode := Test.Text_IO.Out_File;
      Name : in     String    := "";
      Form : in     String    := "") is
   begin
      Ada.Text_IO.Create
        (File,
         Ada.Text_IO.File_Mode (Mode),
         Name,
         Form);
   end Create;

   procedure Open
     (File      : in out File_Type;
      Mode      : in     File_Mode;
      Name      : in     String;
      Form      : in     String    := "")
   is
      Bob : File_Type;
   begin
      Ada.Text_IO.Open
        (Bob,
         Ada.Text_IO.File_Mode (Mode),
         Name,
         Form);
   end Open;

   procedure Open_Silent
     (File      : in out File_Type;
      Mode      : in     File_Mode;
      Name      : in     String;
      Form      : in     String    := "")
   is
      Bob : File_Type;
   begin
      Ada.Text_IO.Open
        (Bob,
         Ada.Text_IO.File_Mode (Mode),
         Name,
         Form);
   end Open_Silent;

end Test.Text_IO;
