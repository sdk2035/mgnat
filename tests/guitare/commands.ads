
--
--  GUITARE Project
--
--  $Id: commands.ads,v 1.6 2000/09/09 15:43:45 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Notes;

package Commands is

   type Command is (Scale, Chord, Tune, Output, Quit, Overlay, Note,
                    Synonym, Fingerboard, Transpose, Position, Without,
                    Display, Mode, Common_Chords, Key_For, Analyse_Chord, Info,
                    Pattern, Progression, Analyse_Scale, Help);

   subtype Input_Line is String (1 .. 100);

   Note_Set1 : Notes.Set_Of_Notes;  -- scale or chord
   Note_Set2 : Notes.Set_Of_Notes;  -- chord (from overlay)
   Note_Set3 : Notes.Set_Of_Notes;  -- notes


   procedure Get (Into :    out Command);

   procedure Get (From : in     String;
                  Into :    out Command);

   procedure Display_All;

   function Read_Init_File
     return Boolean;

   procedure Get (Into      : out Commands.Command;
                  Arguments : out String;
                  Last      : out Natural);

   function Execute (Command   : in Commands.Command;
                     Arguments : in String)
     return Boolean;

end Commands;
