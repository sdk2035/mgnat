with Ada.Text_IO;
with Ada.Strings.Unbounded.Text_IO;

package Test.Text_IO is

   subtype File_Type is Ada.Text_IO.File_Type;
   type File_Mode is new Ada.Text_IO.File_Mode;
   subtype Positive_Count is Ada.Text_IO.Positive_Count
     range Ada.Text_IO.Positive_Count'First .. Ada.Text_IO.Positive_Count'Last;

   procedure Create
     (File : in out File_Type;
      Mode : in     File_Mode := Test.Text_IO.Out_File;
      Name : in     String    := "";
      Form : in     String    := "");

   procedure Open
     (File      : in out File_Type;
      Mode      : in     File_Mode;
      Name      : in     String;
      Form      : in     String    := "");

   procedure Open_Silent
     (File      : in out File_Type;
      Mode      : in     File_Mode;
      Name      : in     String;
      Form      : in     String    := "");

   procedure Close
     (File : in out File_Type)
     renames Ada.Text_IO.Close;

   function Standard_Input  return File_Type
     renames Ada.Text_IO.Standard_Input;

   function Standard_Output return File_Type
     renames Ada.Text_IO.Standard_Output;

   function Standard_Error  return File_Type
     renames Ada.Text_IO.Standard_Error;

   function Current_Error   return File_Type
     renames Ada.Text_IO.Current_Error;

   procedure Put_Line
     (File : in File_Type;
      Item : in String)
     renames Ada.Text_IO.Put_Line;

   procedure Put_Line
     (Item : in String)
     renames Ada.Text_IO.Put_Line;

   procedure Put
     (File : in File_Type;
      Item : in String)
     renames Ada.Text_IO.Put;

   procedure Put
     (Item : in String)
     renames Ada.Text_IO.Put;

   procedure New_Line
     (File    : in File_Type;
      Spacing : in Positive_Count := 1)
     renames Ada.Text_IO.New_Line;

   procedure New_Line
     (Spacing : in Positive_Count := 1)
     renames Ada.Text_IO.New_Line;

   function Get_Line (File : File_Type)
     return Ada.Strings.Unbounded.Unbounded_String
     renames Ada.Strings.Unbounded.Text_IO.Get_Line;

   procedure Get_Line (File : File_Type;
                       Line : out String;
                       Last : out Natural)
     renames Ada.Text_IO.Get_Line;

   function End_Of_File
     (File : in File_Type)
     return Boolean
     renames Ada.Text_IO.End_Of_File;

   procedure Delete
     (File : in out File_Type)
     renames Ada.Text_IO.Delete;

   procedure Reset
     (File : in out File_Type)
     renames Ada.Text_IO.Reset;

   function Name
     (File : in File_Type)
     return String
     renames Ada.Text_IO.Name;


   procedure Set_Col (File : in File_Type; To : in Positive_Count)
     renames Ada.Text_IO.Set_Col;
   procedure Set_Col (To   : in Positive_Count)
     renames Ada.Text_IO.Set_Col;

   procedure Set_Input (File : in File_Type)
     renames Ada.Text_IO.Set_Input;
   procedure Set_Output (File : in File_Type)
     renames Ada.Text_IO.Set_Output;
   procedure Set_Error (File : in File_Type)
     renames Ada.Text_IO.Set_Error;

end Test.Text_IO;
