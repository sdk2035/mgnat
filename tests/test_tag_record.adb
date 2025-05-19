with Ada.Tags;
with Ada.Text_Io;

procedure Test_Tag_Record is

   type Bug is abstract tagged
      record
         A_Tag : Ada.Tags.Tag;
         Legs  : Natural;
      end record;

   type Fly is new Bug with record
      Wings : Natural;
   end record;

   Mosquito : fly;

begin
   -- This program will cause a GNAT exception window
   -- It crashes the compiler in jvm.adb:3143
   Ada.Text_Io.Put_Line ("Test tag record");
end Test_Tag_Record;
