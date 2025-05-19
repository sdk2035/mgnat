
--
--  GUITARE Project
--
--  $Id: fingerings.adb,v 1.10 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with Text_IO;
with Search_Utilities;

package body Fingerings is

   type Position is array (1 .. 6) of Fretted_Position;
   type Array_Of_Position is array (Positive range <>) of Position;
   type Array_Of_Position_Ptr is access Array_Of_Position;

   type Positions_Type is array (Level_Type) of Array_Of_Position_Ptr;

   Positions : constant Positions_Type :=
     (Easy      => new Array_Of_Position'((
                     (-1, -1,  1,  2,  3,  3),
                     (-1, -1,  1,  3,  1,  2),
                     (-1, -1,  1,  3,  3,  3),
                     (-1, -1,  2,  2,  1,  3),
                     (-1, -1,  2,  3,  1,  3),
                     (-1, -1,  2,  4,  4,  1),
                     (-1, -1,  3,  3,  2,  1),
                     (-1, -1,  4,  3,  1,  2),
                     (-1, -1,  4,  3,  2,  1),
                     (-1,  0,  1,  0,  1,  3),
                     (-1,  1,  1,  0,  1, -1),
                     (-1,  1,  1,  1,  1,  3),
                     (-1,  1,  1,  1,  3,  2),
                     (-1,  1,  1,  3,  3,  3),
                     (-1,  1,  1,  3,  4,  2),
                     (-1,  1,  2,  2,  3, -1),
                     (-1,  1,  2,  3,  3, -1),
                     (-1,  1,  3,  1,  4,  1),            -- 7sus4
                     (-1,  1,  3,  2,  3, -1),            -- M7
                     (-1,  2,  2,  1,  3,  1),
                     (-1,  2,  3,  1,  3,  1),
                     (-1,  3,  1,  2,  3, -1),
                     (-1,  3,  2,  1,  3, -1),
                     (+0,  0,  2,  2,  2,  0),            -- A
                     (+0,  2,  2,  1,  0,  0),            -- E
                     (+0,  3,  2,  0,  1,  0),            -- C
                     (+1,  1,  1,  1,  2,  3),
                     (+1,  1,  1,  2,  1,  3),
                     (+1,  1,  1,  2,  2,  3),
                     (+1,  1,  3,  1,  2,  1),
                     (+1,  1,  3,  1,  3,  1),            -- 7
                     (+1,  1,  3,  3,  1,  1),            -- sus4
                     (+1,  1,  3,  3,  3,  1),            -- maj
                     (+1,  1,  3,  3,  3,  3),
                     (+1,  1,  3,  3,  4,  1),            -- sus4
                     (+1,  2,  2,  1,  1,  1),
                     (+1,  2,  3,  1,  3,  1),
                     (+1,  3, -1,  2,  3,  1),            -- 6
                     (+1,  3,  1,  1,  1,  1),            -- min7
                     (+1,  3,  1,  1,  1,  3),            -- 9
                     (+1,  3,  1,  2, -1, -1),
                     (+1,  3,  1,  2,  1,  1),
                     (+1,  3,  1,  3,  1,  1),            -- 7sus4
                     (+1,  3,  3,  1,  1,  1),            -- min
                     (+1,  3,  3,  2,  1,  1),
                     (+2,  3,  1,  3, -1, -1),
                     (+3,  2,  1,  4, -1, -1),
                     (+3,  3,  0,  0,  1,  3),
                     (+3,  3,  1,  2,  1,  1),
                     (+3,  3,  1,  3, -1, -1),
                     (+3,  3,  1,  3,  3,  3),            -- m9
                     (+3,  3,  2,  0,  1,  0),
                     (+4,  3,  1,  1,  1,  4)
               )),

      Medium    => new Array_Of_Position'((
                     (-1, -1,  1,  1,  1,  4),
                     (-1, -1,  1,  2,  2,  3),
                     (-1, -1,  1,  3,  1,  2),
                     (-1, -1,  1,  4,  2,  3),
                     (-1, -1,  2,  3,  1,  2),
                     (-1, -1,  2,  3,  1,  4),
                     (-1, -1,  3,  2,  2,  1),
                     (-1, -1,  4,  2,  2,  1),
                     (-1, -1,  4,  3,  1,  1),
                     (-1, -1,  4,  3,  3,  1),
                     (-1,  1,  1,  3,  2,  3),
                     (-1,  1,  2,  1,  3, -1),
                     (-1,  1,  2,  1,  3,  2),
                     (-1,  1,  2,  2,  2,  3),
                     (-1,  1,  2,  3,  3,  3),
                     (-1,  1,  3,  2,  2, -1),
                     (-1,  2,  1,  3,  2,  2),
                     (-1,  2,  1,  4,  4,  4),
                     (-1,  2,  2,  1,  3, -1),
                     (-1,  2,  2,  1,  3,  3),
                     (-1,  2,  2,  1,  4,  2),
                     (-1,  2,  3,  1,  3, -1),
                     (-1,  2,  3,  1,  4, -1),
                     (-1,  3,  1,  1,  1,  3),
                     (-1,  3,  1,  3,  1,  3),
                     (-1,  3,  2,  0,  1,  3),
                     (-1,  3,  2,  2,  1, -1),
                     (-1,  3,  3,  1,  1,  4),
                     (-1,  3,  3,  1,  3, -1),
                     (-1,  3,  3,  1,  4, -1),
                     (-1,  4,  3,  1,  1,  1),
                     (+1,  1,  1,  3,  2,  3),
                     (+1,  1,  1,  3,  3,  3),
                     (+1,  1,  3,  2,  3,  1),
                     (+1,  1,  3,  3,  2,  3),
                     (+1,  1,  3,  3,  3,  4),
                     (+1,  1,  4,  3,  2,  1),
                     (+1,  2,  1,  2,  1,  3),
                     (+1,  2,  1,  4,  4,  4),
                     (+1,  2,  2,  1,  4,  4),
                     (+1,  2,  3,  2, -1, -1),
                     (+1,  3,  1,  1, -1, -1),
                     (+1,  3,  1,  1,  4,  1),
                     (+1,  3,  1,  2,  1,  3),
                     (+1,  3,  2,  2, -1, -1),
                     (+1,  3,  2,  2,  1,  1),
                     (+1,  3,  4,  2,  1,  1),
                     (+1,  4,  1,  2,  2,  1),
                     (+1,  4,  2,  2, -1, -1),
                     (+1,  4,  3,  1,  2,  1),
                     (+2,  1,  1,  3,  4, -1),
                     (+2,  1,  2,  1,  3, -1),
                     (+2,  2,  1,  1,  4, -1),
                     (+2,  2,  1,  2,  1,  4),
                     (+2,  2,  1,  2,  2,  4),
                     (+2,  2,  1,  3, -1, -1),
                     (+2,  3,  1,  1,  1, -1),
                     (+2,  3,  1,  2, -1, -1),
                     (+3,  2, -1,  1,  3,  1),
                     (+4,  3,  1,  1,  1,  1),
                     (+4,  3,  1,  1,  1,  4),
                     (+4,  3,  1,  2,  1,  1),
                     (+4,  3,  3,  1, -1, -1)
               )),

      Difficult => new Array_Of_Position'((
                     (-1, -1,  1,  3,  1,  3),
                     (-1, -1,  1,  3,  2,  2),
                     (-1, -1,  1,  3,  2,  3),
                     (-1, -1,  1,  3,  3,  2),
                     (-1, -1,  2,  1,  1,  4),
                     (-1, -1,  3,  1,  2,  4),
                     (-1, -1,  3,  2,  3,  1),
                     (-1, -1,  4,  1,  1,  4),
                     (-1, -1,  4,  1,  3,  2),
                     (-1, -1,  4,  1,  3,  4),
                     (-1,  1,  1,  3,  4,  3),
                     (-1,  1,  3,  1,  2, -1),
                     (-1,  1,  3,  1,  2,  3),
                     (-1,  1,  3,  1,  3, -1),
                     (-1,  1,  3,  2,  3, -1),
                     (-1,  1,  4,  1,  3,  2),
                     (-1,  1,  4,  2,  3, -1),
                     (-1,  1,  4,  3,  4, -1),
                     (-1,  2,  1,  1,  4, -1),
                     (-1,  2,  1,  1,  4,  2),
                     (-1,  2,  1,  1,  5, -1),
                     (-1,  2,  1,  2,  2,  3),
                     (-1,  2,  1,  2,  3,  2),
                     (-1,  2,  1,  4,  4,  4),
                     (-1,  2,  2,  1,  3,  2),
                     (-1,  2,  2,  1,  4,  4),
                     (-1,  2,  3,  1,  3,  3),
                     (-1,  3,  1,  2,  3,  3),
                     (-1,  3,  3,  2,  3,  1),
                     (-1,  3,  4,  1,  4, -1),
                     (-1,  3,  4,  2,  1, -1),
                     (-1,  3,  4,  3,  1, -1),
                     (-1,  4,  1,  2,  4, -1),
                     (-1,  4,  2,  1,  3,  1),
                     (+1, -1,  1,  2,  2,  3),
                     (+1,  1,  1,  5,  2,  3),
                     (+1,  1,  3,  1,  2,  4),
                     (+1,  1,  4,  1,  2,  1),
                     (+1,  3,  1,  2,  1,  2),
                     (+1,  3,  1,  2,  3,  3),
                     (+1,  3,  1,  2,  4,  1),
                     (+1,  3,  1,  3,  3,  4),
                     (+1,  3,  2,  3,  3,  3),
                     (+1,  3,  3,  2,  3,  1),
                     (+2,  1,  1,  3,  2, -1),
                     (+2,  1,  2,  2,  2,  3),
                     (+2,  1,  2,  3,  2, -1),
                     (+2,  3,  2,  1, -1, -1),
                     (+3,  1,  1,  3,  4, -1),
                     (+3,  2,  1,  2, -1, -1),
                     (+3,  2,  2,  1,  3,  1),
                     (+3,  2,  2,  2,  3,  1),
                     (+3,  3,  2,  3,  1,  0),
                     (+3,  4,  1,  2, -1, -1),
                     (+3,  4,  1,  2,  2,  1),
                     (+4,  1,  1,  3,  1,  2),
                     (+4,  3,  2,  1,  1, -1),
                     (+4,  3,  2,  1,  1,  0)
               )));

   Current_Mode : Kind_Type := Common;

   ---------------------
   -- Search_Position --
   ---------------------

   package Search_Position is
     new Search_Utilities (Component_Type => Position,
                           Index_Type     => Positive,
                           Array_Type     => Array_Of_Position);

   Search_Mode : Search_Position.Data_Order_Type := Search_Position.Ordered;

   -------------
   -- Analyse --
   -------------

   procedure Analyse (Fingering : in     Fingering_Type;
                      Exist     :    out Boolean;
                      Level     :    out Level_Type) is

      Local_Fingering  : Fingering_Type := Fingering;
      Current_Position : Position;

      Number_Of_Fret           : Positive;
      Number_Of_Fretted_String : Natural := 0;
      Is_Common                : Boolean := True;

      procedure Normalise (Fingering : in out Fingering_Type) is

         type State_Type is (Out_Of,  Into,  Exit_From);

         State : State_Type := Out_Of;

         Min0 : Fretted_Position := Fretted_Position'Last;
         Min  : Fretted_Position := Fretted_Position'Last;
         Max  : Fretted_Position := Fretted_Position'First;

      begin

         --  fin min, max and compute the number of fretted string
         for I in Fingering'Range loop

            if Fingering (I).Fret /= -1 then

               if Min0 > Fingering (I).Fret then
                  Min0 := Fingering (I).Fret;
               end if;

               if Fingering (I).Fret /= 0 then
                  Number_Of_Fretted_String := Number_Of_Fretted_String + 1;
                  if Min > Fingering (I).Fret then
                     Min := Fingering (I).Fret;
                  end if;
               end if;

               if Fingering (I).Fret > Max then
                  Max := Fingering (I).Fret;
               end if;

               if State = Exit_From then
                  Is_Common := False;
               elsif State = Out_Of then
                  State := Into;
               end if;

            else

               if State = Into then
                  State := Exit_From;
               end if;

            end if;

         end loop;

         --  compute the number of fret used for the chord

         if Min = Fretted_Position'Last
           or else Max = Fretted_Position'First then
            return;
         else
            Number_Of_Fret := Max - Min + 1;
         end if;

         --  we don't normalize the not bar-chord.
         if Min0 > 1 then
            --  normalise (the min become 1)
            for I in Fingering'Range loop
               if Fingering (I).Fret /= -1 then
                  Fingering (I).Fret := Fingering (I).Fret - Min0 + 1;
               end if;
            end loop;
         end if;

      end Normalise;

      procedure Seek_For (My_Position : in Position) is

         Exist : Boolean;

      begin
         Fingerings.Analyse.Exist := False;

         Scan_Level :
         for Level in Level_Type loop

            Exist := Search_Position.Search (My_Position,
                                             Positions (Level) . all,
                                             Search_Mode);
            if Exist then
               Fingerings.Analyse.Level := Level;
               Fingerings.Analyse.Exist := True;
               exit Scan_Level;
            end if;

         end loop Scan_Level;
      end Seek_For;

   begin
      Normalise (Local_Fingering);

      if Current_Mode = Common and then not Is_Common then
         Exist := False;
      elsif Number_Of_Fret <= 2 or else
        (Number_Of_Fret <= 3 and then Number_Of_Fretted_String <= 3) then
         Level := Easy;
         Exist := True;
      else
         for I in Current_Position'Range loop
            Current_Position (I) := Local_Fingering (I) . Fret;
         end loop;
         Seek_For (Current_Position);
      end if;
   end Analyse;

   ---------
   -- Set --
   ---------

   procedure Set (Fingering     : in out Fingering_Type;
                  String_Number : in     Instrument.String_Numbers;
                  Fret          : in     Fretted_Position := -1;
                  Note          : in     Notes.Note_Type := Notes.C)  is
   begin
      Fingering (String_Number).Fret := Fret;
      Fingering (String_Number).Note := Note;
   end Set;

   ---------
   -- Set --
   ---------

   procedure Set (Kind : in Kind_Type) is
   begin
      Current_Mode := Kind;
   end Set;

   --------------
   -- Get_Kind --
   --------------

   function Get_Kind return Kind_Type is
   begin
      return Current_Mode;
   end Get_Kind;

   --------------
   -- Get_Fret --
   --------------

   function Get_Fret (Fingering     : in Fingering_Type;
                      String_Number : in Instrument.String_Numbers)
                      return Fretted_Position is
   begin
      return Fingering (String_Number).Fret;
   end Get_Fret;

   --------------
   -- Get_Note --
   --------------

   function Get_Note (Fingering     : in Fingering_Type;
                      String_Number : in Instrument.String_Numbers)
                      return Notes.Note_Type is
   begin
      return Fingering (String_Number).Note;
   end Get_Note;

begin

   --  test if the fingerings are ordered or not.

   LEVEL_LOOP :
   for Level in Level_Type loop
      for K in Positions (Level)'First + 1 .. Positions (Level)'Last loop
         if Positions (Level) (K - 1) > Positions (Level) (K) then
            Search_Mode := Search_Position.Not_Ordered;

            --  ??? using IO here raise an elaboration order problem (raised
            --  by gnatbind)

            Text_IO.Put_Line ("*** fingerings not ordered ****");
            Text_IO.Put_Line ("*** I'll use a linear search instead of " &
                              "a binary one ***");
            Text_IO.Put_Line ("Level " & Level_Type'Image (Level) &
                              " index " & Positive'Image (K));
            Text_IO.New_Line (2);
            exit LEVEL_LOOP;
         end if;
      end loop;
   end loop LEVEL_LOOP;

end Fingerings;
