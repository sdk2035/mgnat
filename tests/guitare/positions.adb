
--
--  GUITARE Project
--
--  $Id: positions.adb,v 1.11 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with Text_IO;

with Notes;
with Instrument;
with Positions_IO;
with Fingerings;
with Defines;
with IO;

package body Positions is

   use Notes;
   use Fingerings;

   Chord_Notes : Notes.Set_Of_Notes;
   Bass_Note   : Notes.Note_Type;
   Bass_Set    : Boolean;

   Fingerboard : Fingerboard_Data.Fingerboard_Type;
   Level       : Fingerings.Level_Type;

   ----------------
   -- Initialise --
   ----------------

   procedure Initialise (Chord       : in Chords.Chord_Type;
                         Fingerboard : in Fingerboard_Data.Fingerboard_Type;
                         Level       : in Fingerings.Level_Type;
                         Without     : in Chords.Without_Note_Type) is
   begin
      Chord_Notes := Chords.Get_Notes (From => Chord, Without => Without);
      if Chords.Is_Bass_Defined (Chord) then
         Bass_Note := Chords.Get_Bass (Chord);
         Bass_Set := True;
      else
         Bass_Set := False;
      end if;
      Positions.Level := Level;
      Positions.Fingerboard := Fingerboard;
   end Initialise;

   ---------------
   -- Get_Level --
   ---------------

   function Get_Level return Fingerings.Level_Type is
   begin
      return Level;
   end Get_Level;

   -------------
   -- Display --
   -------------

   procedure Display is

      use type Defines.Switch;

      type Mode_Gene is (ALL_STRING, SOME_STRING);
      type Nb_Chord_Type is array (Fingerings.Level_Type) of Integer;

      subtype Rank_Range is Integer range 0 .. 11;

      Nb_Chord                : Nb_Chord_Type := (others => 0);
      Current_Fingering       : Fingerings.Fingering_Type;
      One_Found_For_This_Rank : Boolean;

      -------------------
      -- Find_Position --
      -------------------

      procedure Find_Position
        (Rank          : in     Rank_Range;
         String_Number : in     Instrument.String_Numbers;
         Fingering     : in out Fingerings.Fingering_Type;
         Mode          : in     Mode_Gene) is

         subtype String_Range is Instrument.String_Numbers range
           Instrument.Info.First_String .. Instrument.Info.Last_String;

         -------------
         -- Analyse --
         -------------

         procedure Analyse (Fingering : in Fingerings.Fingering_Type;
                            Rank      : in Rank_Range) is

            Local_Fingering : Fingerings.Fingering_Type := Fingering;
            Level           : Level_Type;
            Min_Fret        : Fingerings.Fretted_Position
                            := Fingerings.Fretted_Position'Last;
            Exist           : Boolean;

            -----------------
            -- Check_Notes --
            -----------------

            function Check_Notes return Boolean is

               Notes_Set  : Notes.Set_Of_Notes;
               First_Note : Boolean := True;
               Note       : Notes.Note_Type;

            begin
               Notes.Clear (Notes_Set);

               for String_Number in String_Range loop

                  if Fingerings.Get_Fret (Fingering, String_Number) /= -1 then

                     Note := Fingerings.Get_Note (Fingering, String_Number);

                     --  check if we beggin by the bass, if it is defined
                     if First_Note
                       and then Bass_Set
                       and then Bass_Note /= Note then
                        return False;
                     end if;
                     First_Note := False;

                     Notes.Set (Note => Note,  Into => Notes_Set);
                  end if;
               end loop;

               if Notes_Set = Chord_Notes then
                  return True;
               else
                  return False;
               end if;
            end Check_Notes;

         begin

            FIND_MIN_FRET :
            declare
               Fret : Fingerings.Fretted_Position;
            begin

               for String_Number in String_Range loop

                  Fret := Fingerings.Get_Fret (Fingering, String_Number);
                  if Fret /= -1 and then Min_Fret > Fret then
                     Min_Fret := Fret;
                  end if;

               end loop;
            end FIND_MIN_FRET;

            if Min_Fret = Rank and then Check_Notes then

               case Instrument.Get is
                  when Instrument.GUITAR =>
                     Fingerings.Analyse (Local_Fingering, Exist, Level);
                  when Instrument.MANDOLINE | Instrument.BASS =>
                     Exist := True;
               end case;

               if Exist then
                  Nb_Chord (Level) := Nb_Chord (Level) + 1;
                  if Level <= Positions.Level then
                     Positions_IO.Put (Local_Fingering, Rank);
                     One_Found_For_This_Rank := True;
                  end if;
               end if;

            end if;

         end Analyse;

      begin
         Fingerings.Set (Fingering, String_Number);

         for I in Rank .. Rank + Instrument.Info.Fret_Range - 1 loop
            if Fingerboard (String_Number)(I).Set then
               Fingerings.Set (Fingering, String_Number,
                               Fret => I,
                               Note => Fingerboard (String_Number)(I).Note);
               if String_Number = String_Range'Last then
                  Analyse (Fingering, Rank);
               else
                  Find_Position (Rank, 1+String_Number, Fingering, Mode);
               end if;
            end if;
         end loop;

         if Mode = SOME_STRING then
            if String_Number = String_Range'Last then
               Fingerings.Set (Fingering, String_Number);
               Analyse (Fingering, Rank);
            else
               Fingerings.Set (Fingering, String_Number);
               Find_Position (Rank, 1+String_Number, Fingering, SOME_STRING);
            end if;
         end if;

      end Find_Position;

   begin

      IO.Clear_Lower;

      for Rank in Rank_Range loop
         One_Found_For_This_Rank := False;
         Find_Position (Rank, Instrument.Info.First_String,
                        Current_Fingering, ALL_STRING);
         if not One_Found_For_This_Rank then
            Find_Position (Rank, Instrument.Info.First_String,
                           Current_Fingering, SOME_STRING);
         end if;
      end loop;

      Positions_IO.Flush;

      IO.New_Line (15);

      if Defines.Is_GUI_Mode = Defines.OFF then
         declare
            package Level_IO is
              new Text_IO.Enumeration_IO (Fingerings.Level_Type);
         begin
            for Other_Level in Level_Type loop
               Text_IO.Put ("mode ");
               Level_IO.Put (Other_Level, Set => Text_IO.Lower_Case);
               Text_IO.Put (Natural'Image (Nb_Chord (Other_Level)));
               Text_IO.Put (" positions.   ");
            end loop;
            Text_IO.New_Line (2);
         exception
            when others =>
               null;
         end;
      end if;

   end Display;

end Positions;
