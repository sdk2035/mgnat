
--
--  GUITARE Project
--
--  $Id: guitare.adb,v 1.16 2000/09/09 15:44:54 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Ada.Text_IO;
with Commands;
with Notes;
with Defines;

procedure Guitare is

   use type Defines.Switch;

   Command_Input : Commands.Command;
   Arguments     : Commands.Input_Line;
   Last          : Natural;
   End_Batch     : Boolean := False;

begin

   --  Console mode
   Defines.Set_GUI (Defines.OFF);

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("GUITARE " & Defines.Version &
                     "  -  Pascal Obry - 1992-2000");
   Ada.Text_IO.New_Line;

   --  some initialisations
   Notes.Clear (Commands.Note_Set1);
   Notes.Clear (Commands.Note_Set2);
   Notes.Clear (Commands.Note_Set3);

   --  read guitare.ini and execute the commands
   End_Batch := Commands.Read_Init_File;

   if not End_Batch then

      loop

         Ada.Text_IO.Put ("command : ");
         Ada.Text_IO.Flush;

         begin

            Commands.Get (Command_Input, Arguments, Last);
            Ada.Text_IO.New_Line;

            exit when Commands.Execute (Command_Input, Arguments (1 .. Last));

         exception

            when Ada.Text_IO.Data_Error =>
               Ada.Text_IO.Skip_Line;
               Ada.Text_IO.New_Line;
               Ada.Text_IO.Put_Line ("*** ERROR : unknown command.");

               Commands.Display_All;
         end;

      end loop;

   end if;

   Ada.Text_IO.New_Line;
   Ada.Text_IO.Put_Line ("Bye, thanks for using GUITARE " &
                   Defines.Version & '.');
   Ada.Text_IO.New_Line;

end Guitare;
