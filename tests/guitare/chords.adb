
--
--  GUITARE Project
--
--  $Id: chords.adb,v 1.9 2000/09/09 15:43:45 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Text_IO;
with Ada.Strings.Unbounded;

package body Chords is

   ----------------
   -- Is_Defined --
   ----------------

   function Is_Defined (Chord : in Chord_Type) return Boolean is
   begin
      return Chord.Name /= null;
   end Is_Defined;

   -----------
   -- Parse --
   -----------

   function Parse (From : in String) return Chord_Type is

      type Token_Type is (Min, Maj, Aug, O, Hdim7, Add9, Add,
                          Nroot, N3, N5, N6, N7, N9, N11, N13, Sus4, Sus2,
                          Flat, Sharp, Bassnote, No, Stop, Slash);

      type Mode_Type is (MIN, MAJ, STANDARD, ADD, SUB, DIM, SLASH,
                         FLAT, ADD_FLAT, SHARP, ADD_SHARP);

      Mode : Mode_Type := STANDARD;

      Chord         : Chord_Type;
      Token         : Token_Type;
      Token_Number  : Natural := 0;
      Bracket_Count : Natural := 0;
      K             : Natural := From'First;

      procedure Skip_Separator (Schord : in String; K : in out Natural) is
      begin
         while K <= Schord'Last and then
           (Schord (K) = ' ' or else Schord (K) = ')'
           or else Schord (K) = '(') loop

            if Schord (K) = ')' then
               if Bracket_Count > 0 then
                  Bracket_Count := Bracket_Count - 1;
               else
                  raise Bad_Chord_Format;
               end if;
            elsif Schord (K) = '(' then
               Bracket_Count := Bracket_Count + 1;
            end if;
            K := K + 1;
         end loop;
      end Skip_Separator;

      procedure Get_Root (Schord : in     String;
                          Note   : in out Notes.Note_Type;
                          K      : in out Natural) is
         use Notes;
         L : Natural;
      begin
         Skip_Separator (Schord, K);
         --  initialisation name
         Notes.Get (From => Schord (K .. Schord'Last),
                    Note => Note, Last => L);
         Chord.Name := new String'(Schord (K .. Schord'Last));
         case Note is
            when A | B | C | D | E | F | G =>
               K := K + 1;
            when others =>
               K := K + 2;
         end case;
      end Get_Root;

      procedure Get_Token (Schord : in     String;
                           Token  : in out Token_Type;
                           K      : in out Natural) is
      begin

         Skip_Separator (Schord, K);

         if K + 3 <= Schord'Last then
            declare
               Stoken : String (1 .. 4) := Schord (K .. K + 3);
            begin
               if Stoken = "sus4" then
                  Token := Sus4;
                  K := K + 4;
                  return;
               elsif Stoken = "sus2" then
                  Token := Sus2;
                  K := K + 4;
                  return;
               elsif Stoken = "root" then
                  Token := Nroot;
                  K := K + 4;
                  return;
               elsif Stoken = "11th" then
                  Token := N11;
                  K := K + 4;
                  return;
               elsif Stoken = "13th" then
                  Token := N13;
                  K := K + 4;
                  return;
               end if;
            end;
         end if;

         if K + 2 <= Schord'Last then
            declare
               Stoken : String (1 .. 3) := Schord (K .. K + 2);
            begin
               if Stoken = "min" then
                  Token := Min;
                  K := K + 3;
                  return;
               elsif Stoken = "maj" then
                  Token := Maj;
                  K := K + 3;
                  return;
               elsif Stoken = "dim" then
                  Token := O;
                  K := K + 3;
                  return;
               elsif Stoken = "aug" then
                  Token := Aug;
                  K := K + 3;
                  return;
               elsif Stoken = "add" then
                  Token := Add;
                  K := K + 3;
                  return;
               elsif Stoken = "sus" then
                  Token := Sus4;
                  K := K + 3;
                  return;
               elsif Stoken = "1st" then
                  Token := Nroot;
                  K := K + 3;
                  return;
               elsif Stoken = "3rd" then
                  Token := N3;
                  K := K + 3;
                  return;
               elsif Stoken = "5th" then
                  Token := N5;
                  K := K + 3;
                  return;
               elsif Stoken = "7th" then
                  Token := N7;
                  K := K + 3;
                  return;
               elsif Stoken = "9th" then
                  Token := N9;
                  K := K + 3;
                  return;
               end if;
            end;
         end if;

         if K + 1 <= Schord'Last then
            declare
               Stoken : String (1 .. 2) := Schord (K .. K + 1);
            begin
               if Stoken = "11" then
                  Token := N11;
                  K := K + 2;
                  return;
               elsif Stoken = "13" then
                  Token := N13;
                  K := K + 2;
                  return;
               elsif Stoken = "C#" then
                  Token := Bassnote;
                  Chord.Bass := Notes.Cs;
                  K := K + 2;
                  return;
               elsif Stoken = "Db" then
                  Token := Bassnote;
                  Chord.Bass := Notes.Db;
                  K := K + 2;
                  return;
               elsif Stoken = "D#" then
                  Token := Bassnote;
                  Chord.Bass := Notes.Ds;
                  K := K + 2;
                  return;
               elsif Stoken = "Eb" then
                  Token := Bassnote;
                  Chord.Bass := Notes.Eb;
                  K := K + 2;
                  return;
               elsif Stoken = "F#" then
                  Token := Bassnote;
                  Chord.Bass := Notes.Fs;
                  K := K + 2;
                  return;
               elsif Stoken = "Gb" then
                  Token := Bassnote;
                  Chord.Bass := Notes.Gb;
                  K := K + 2;
                  return;
               elsif Stoken = "G#" then
                  Token := Bassnote;
                  Chord.Bass := Notes.Gs;
                  K := K + 2;
                  return;
               elsif Stoken = "Ab" then
                  Token := Bassnote;
                  Chord.Bass := Notes.Ab;
                  K := K + 2;
                  return;
               elsif Stoken = "A#" then
                  Token := Bassnote;
                  Chord.Bass := Notes.As;
                  K := K + 2;
                  return;
               elsif Stoken = "Bb" then
                  Token := Bassnote;
                  Chord.Bass := Notes.Bb;
                  K := K + 2;
                  return;
               elsif Stoken = "no" then
                  Token := No;
                  K := K + 2;
                  return;
               end if;
            end;
         end if;

         if K <= Schord'Last then
            declare
               Stoken : Character := Schord (K);
            begin
               if Stoken = 'M' then
                  Token := Maj;
                  K := K + 1;
                  return;
               elsif Stoken = 'm' then
                  Token := Min;
                  K := K + 1;
                  return;
               elsif Stoken = '-' then
                  Token := Min;
                  K := K + 1;
                  return;
               elsif Stoken = '+' then
                  Token := Aug;
                  K := K + 1;
                  return;
               elsif Stoken = '9' then
                  Token := N9;
                  K := K + 1;
                  return;
               elsif Stoken = '7' then
                  Token := N7;
                  K := K + 1;
                  return;
               elsif Stoken = '6' then
                  Token := N6;
                  K := K + 1;
                  return;
               elsif Stoken = '5' then
                  Token := N5;
                  K := K + 1;
                  return;
               elsif Stoken = '3' then
                  Token := N3;
                  K := K + 1;
                  return;
               elsif Stoken = '2' then
                  Token := Add9;
                  K := K + 1;
                  return;
               elsif Stoken = 'O' then
                  Token := O;
                  K := K + 1;
                  return;
               elsif Stoken = '%' then
                  Token := Hdim7;
                  K := K + 1;
                  return;
               elsif Stoken = 'b' then
                  Token := Flat;
                  K := K + 1;
                  return;
               elsif Stoken = '#' then
                  Token := Sharp;
                  K := K + 1;
                  return;
               elsif Stoken = 'A' then
                  Token := Bassnote;
                  Chord.Bass := Notes.A;
                  K := K + 1;
                  return;
               elsif Stoken = 'B' then
                  Token := Bassnote;
                  Chord.Bass := Notes.B;
                  K := K + 1;
                  return;
               elsif Stoken = 'C' then
                  Token := Bassnote;
                  Chord.Bass := Notes.C;
                  K := K + 1;
                  return;
               elsif Stoken = 'D' then
                  Token := Bassnote;
                  Chord.Bass := Notes.D;
                  K := K + 1;
                  return;
               elsif Stoken = 'E' then
                  Token := Bassnote;
                  Chord.Bass := Notes.E;
                  K := K + 1;
                  return;
               elsif Stoken = 'F' then
                  Token := Bassnote;
                  Chord.Bass := Notes.F;
                  K := K + 1;
                  return;
               elsif Stoken = 'G' then
                  Token := Bassnote;
                  Chord.Bass := Notes.G;
                  K := K + 1;
                  return;
               elsif Stoken = '/' then
                  Token := Slash;
                  K := K + 1;
                  return;
               end if;
            end;
         else
            Token := Stop;
            return;
         end if;

         K := Schord'Last + 1;
         raise Bad_Chord_Format;

      end Get_Token;

      procedure Flatter (Loc_State : in out State) is
      begin
         if Loc_State = Unset then
            Loc_State := Flat;
         else
            Loc_State := State'Pred (Loc_State);
         end if;
      end Flatter;

      procedure Sharper (Loc_State : in out State) is
      begin
         if Loc_State = Unset then
            Loc_State := Sharp;
         else
            Loc_State := State'Succ (Loc_State);
         end if;
      end Sharper;


   begin

      Get_Root (From, Chord.Root, K);

      --  initialize the chord structure
      declare
         Scale : Scales.Scale_Type;
      begin
         Scales.Create (Base => Chord.Root, Into => Scale);
         Chord.Scale := Scales.Get_Scale_Notes (Scale);
      end;

      Chord.Scale_State := Scale_State_Type'(1 | 3 | 5 => Normal,
                                             others => Unset);

      loop
         Get_Token (From, Token, K);
         Token_Number := Token_Number + 1;

         case Token is

            when Min =>
               case Mode is
                  when STANDARD =>
                     Flatter (Chord.Scale_State (3));
                     Mode := MIN;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Maj =>
               case Mode is
                  when STANDARD | MIN | SLASH =>
                     Mode := MAJ;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Nroot =>
               case Mode is
                  when SUB =>
                     Chord.Scale_State (1) := Unset;
                  when others =>
                     raise Bad_Chord_Format;
               end case;
               Mode := STANDARD;

            when N3 =>
               case Mode is
                  when SUB =>
                     Chord.Scale_State (3) := Unset;
                  when others =>
                     raise Bad_Chord_Format;
               end case;
               Mode := STANDARD;

            when N5 =>
               case Mode is
                  when STANDARD | SUB =>
                     Chord.Scale_State (3) := Unset;
                  when FLAT =>
                     Flatter (Chord.Scale_State (5));
                  when SHARP =>
                     Sharper (Chord.Scale_State (5));
                  when others =>
                     raise Bad_Chord_Format;
               end case;
               Mode := STANDARD;

            when N6 =>
               case Mode is
                  when STANDARD | MIN | MAJ =>
                     Chord.Scale_State (6) := Normal;
                  when FLAT =>
                     Flatter (Chord.Scale_State (6));
                  when others =>
                     raise Bad_Chord_Format;
               end case;
               Mode := STANDARD;

            when N7 =>
               case Mode is
                  when STANDARD | MIN =>
                     Chord.Scale_State (7) := Flat;
                  when MAJ =>
                     Chord.Scale_State (7) := Normal;
                  when DIM =>
                     Chord.Scale_State (7) := Double_Flat;
                  when SHARP =>
                     Chord.Scale_State (7) := Normal;
                  when SUB =>
                     Chord.Scale_State (7) := Unset;
                  when others =>
                     raise Bad_Chord_Format;
               end case;
               Mode := STANDARD;

            when N9 =>
               case Mode is
                  when STANDARD | MIN =>
                     Chord.Scale_State (7) := Flat;
                     Chord.Scale_State (9) := Normal;
                  when MAJ =>
                     Chord.Scale_State (7) := Normal;
                     Chord.Scale_State (9) := Normal;
                  when FLAT =>
                     if Chord.Scale_State (9) = Unset then
                        Chord.Scale_State (7) := Flat;
                        Chord.Scale_State (9) := Flat;
                     else
                        Flatter (Chord.Scale_State (9));
                     end if;
                  when SHARP =>
                     if Chord.Scale_State (9) = Unset then
                        Chord.Scale_State (7) := Flat;
                        Chord.Scale_State (9) := Sharp;
                     else
                        Sharper (Chord.Scale_State (9));
                     end if;
                  when ADD | DIM | SLASH =>
                     Chord.Scale_State (9) := Normal;
                  when ADD_FLAT =>
                     Flatter (Chord.Scale_State (9));
                  when ADD_SHARP =>
                     Sharper (Chord.Scale_State (9));
                  when SUB =>
                     Chord.Scale_State (9) := Unset;
               end case;
               Mode := STANDARD;

            when N11 =>
               case Mode is
                  when STANDARD | MIN =>
                     Chord.Scale_State (7)  := Flat;
                     Chord.Scale_State (9)  := Normal;
                     Chord.Scale_State (11) := Normal;
                  when MAJ =>
                     Chord.Scale_State (7)  := Normal;
                     Chord.Scale_State (9)  := Normal;
                     Chord.Scale_State (11) := Normal;
                  when FLAT =>
                     if Chord.Scale_State (11) = Unset then
                        Chord.Scale_State (7)  := Flat;
                        Chord.Scale_State (9)  := Normal;
                        Chord.Scale_State (11) := Flat;
                     else
                        Flatter (Chord.Scale_State (11));
                     end if;
                  when SHARP =>
                     if Chord.Scale_State (11) = Unset then
                        Chord.Scale_State (7)  := Flat;
                        Chord.Scale_State (9)  := Normal;
                        Chord.Scale_State (11) := Sharp;
                     else
                        Sharper (Chord.Scale_State (11));
                     end if;
                  when ADD | DIM | SLASH =>
                     Chord.Scale_State (11) := Normal;
                  when ADD_FLAT =>
                     Flatter (Chord.Scale_State (11));
                  when ADD_SHARP =>
                     Sharper (Chord.Scale_State (11));
                  when SUB =>
                     Chord.Scale_State (11) := Unset;
               end case;
               Mode := STANDARD;

            when N13 =>
               case Mode is
                  when STANDARD | MIN =>
                     Chord.Scale_State (7)  := Flat;
                     Chord.Scale_State (9)  := Normal;
                     Chord.Scale_State (11) := Normal;
                     Chord.Scale_State (13) := Normal;
                  when MAJ =>
                     Chord.Scale_State (7)  := Normal;
                     Chord.Scale_State (9)  := Normal;
                     Chord.Scale_State (11) := Normal;
                     Chord.Scale_State (13) := Normal;
                  when FLAT =>
                     if Chord.Scale_State (13) = Unset then
                        Chord.Scale_State (7)  := Flat;
                        Chord.Scale_State (9)  := Normal;
                        Chord.Scale_State (11) := Normal;
                        Chord.Scale_State (13) := Flat;
                     else
                        Flatter (Chord.Scale_State (13));
                     end if;
                  when SHARP =>
                     if Chord.Scale_State (13) = Unset then
                        Chord.Scale_State (7)  := Flat;
                        Chord.Scale_State (9)  := Normal;
                        Chord.Scale_State (11) := Normal;
                        Chord.Scale_State (13) := Sharp;
                     else
                        Sharper (Chord.Scale_State (13));
                     end if;
                  when ADD | DIM | SLASH =>
                     Chord.Scale_State (13) := Normal;
                  when ADD_FLAT =>
                     Flatter (Chord.Scale_State (13));
                  when ADD_SHARP =>
                     Sharper (Chord.Scale_State (13));
                  when SUB =>
                     Chord.Scale_State (13) := Unset;
               end case;
               Mode := STANDARD;

            when Sus4 =>
               case Mode is
                  when STANDARD =>
                     Chord.Scale_State (3) := Unset;
                     Chord.Scale_State (4) := Normal;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Sus2 =>
               case Mode is
                  when STANDARD =>
                     Chord.Scale_State (3) := Unset;
                     Chord.Scale_State (2) := Normal;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Add9 =>
               case Mode is
                  when STANDARD =>
                     Chord.Scale_State (9) := Normal;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Aug =>
               case Mode is
                  when STANDARD =>
                     Sharper (Chord.Scale_State (5));
                  when others =>
                     raise Bad_Chord_Format;
               end case;
               Mode := STANDARD;

            when O =>
               case Mode is
                  when STANDARD =>
                     Flatter (Chord.Scale_State (3));
                     Flatter (Chord.Scale_State (5));
                     Mode := DIM;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Hdim7 =>
               case Mode is
                  when STANDARD =>
                     Flatter (Chord.Scale_State (3));
                     Flatter (Chord.Scale_State (5));
                     Chord.Scale_State (7) := Flat;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Flat =>
               case Mode is
                  when STANDARD | MIN | MAJ | DIM =>
                     Mode := FLAT;
                  when ADD | SLASH =>
                     Mode := ADD_FLAT;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Sharp =>
               case Mode is
                  when STANDARD | MIN | MAJ | DIM =>
                     Mode := SHARP;
                  when ADD | SLASH =>
                     Mode := ADD_SHARP;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Add =>
               case Mode is
                  when STANDARD | SLASH | MIN | MAJ | DIM =>
                     Mode := ADD;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when No =>
               case Mode is
                  when STANDARD =>
                     Mode := SUB;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Slash =>
               case Mode is
                  when STANDARD | MIN | MAJ | DIM =>
                     Mode := SLASH;
                  when others =>
                     raise Bad_Chord_Format;
               end case;

            when Bassnote =>
               if Mode = SLASH then
                  Chord.Kind := Altered_Bass;
               else
                  raise Bad_Chord_Format;
               end if;

            when Stop =>
               exit;

         end case;

      end loop;

      if Bracket_Count /= 0 then
         raise Bad_Chord_Format;
      end if;

      --  reorganization of the chord
      --  a sharp note flattened become a whole note.
      --  a flat note augmented become a whole note
      --  a Fb become a E, a E# become a F
      --  a Cb become a B, a B# become a C
      for I in Note_Number_Type loop

         if Chord.Scale_State (I) = Flat or else
           Chord.Scale_State (I) = Double_Flat then

            if Notes.Is_Sharp (Chord.Scale (I)) then
               Notes.Modify (Chord.Scale (I), Notes.MINUS_ONE_HALF);
               Sharper (Chord.Scale_State (I));
            elsif Chord.Scale (I) = Notes.F then
               --  Fb become E
               Chord.Scale (I) := Notes.E;
               Sharper (Chord.Scale_State (I));
            elsif Chord.Scale (I) = Notes.C then
               --  Cb become a B
               Chord.Scale (I) := Notes.B;
               Sharper (Chord.Scale_State (I));
            end if;

         elsif Chord.Scale_State (I) = Sharp then

            if Notes.Is_Flat (Chord.Scale (I))  then
               Notes.Modify (Chord.Scale (I), Notes.PLUS_ONE_HALF);
               Flatter (Chord.Scale_State (I));
            elsif Chord.Scale (I) = Notes.E then
               --  E# become a F
               Chord.Scale (I) := Notes.F;
               Flatter (Chord.Scale_State (I));
            elsif Chord.Scale (I) = Notes.B then
               --  B# become a C
               Chord.Scale (I) := Notes.C;
               Flatter (Chord.Scale_State (I));
            end if;

         end if;

      end loop;

      --  check if the type is altered_bass or inversion
      if Chord.Kind = Altered_Bass then

         declare
            Ni : Natural := 0;
         begin
            for I in Note_Number_Type loop
               if Chord.Scale_State (I) /= Unset then
                  Ni := Ni + 1;
                  if Chord.Scale (I) = Chord.Bass then
                     Chord.Kind := Inversion;
                     Chord.Inversion  := Ni - 1;
                  end if;
               end if;
            end loop;
         end;

      end if;

      return Chord;

   end Parse;

   ---------------
   -- Get_Notes --
   ---------------

   function Get_Notes (From    : in Chord_Type;
                       Without : in Without_Note_Type := ELEVENTH)
                       return Notes.Set_Of_Notes is

      Chord : Chord_Type := From;
      Set   : Notes.Set_Of_Notes;
      Note  : Notes.Note_Type;

   begin

      Notes.Clear (Set);

      for I in Note_Number_Type loop

         if Chord.Scale_State (I) /= Unset then
            --  get the note
            Note := Chord.Scale (I);
            --  apply modification
            case Chord.Scale_State (I) is
               when Double_Flat =>
                  Notes.Modify (Note, Ton => Notes.MINUS_ONE);
                  Notes.Sharp_To_Flat (Note);
               when Flat =>
                  Notes.Modify (Note, Ton => Notes.MINUS_ONE_HALF);
                  Notes.Sharp_To_Flat (Note);
               when Sharp =>
                  Notes.Modify (Note, Ton => Notes.PLUS_ONE_HALF);
                  Notes.Flat_To_Sharp (Note);
               when others =>
                  null;
            end case;

            Notes.Set (Note => Note, Into => Set);
         end if;

      end loop;

      if From.Kind = Altered_Bass then
         Notes.Set (Note => From.Bass, Into => Set);
      end if;

      --  if it is a full 13th chord (7 notes)
      if Notes.Count (Set) = 7 then
         case Without is
            when THIRD =>
               Chord.Scale_State (3) := Unset;
            when SEVENTH =>
               Chord.Scale_State (7) := Unset;
            when NINTH =>
               Chord.Scale_State (9) := Unset;
            when ELEVENTH =>
               Chord.Scale_State (11) := Unset;
            when NO =>
               null;
         end case;
      end if;

      return Set;

   end Get_Notes;

   ---------------------
   -- Is_Bass_Defined --
   ---------------------

   function Is_Bass_Defined (From : in Chord_Type) return Boolean is
   begin
      return From.Kind /= Regular;
   end Is_Bass_Defined;

   --------------
   -- Get_Bass --
   --------------

   function Get_Bass (From : in Chord_Type) return Notes.Note_Type is
   begin
      return From.Bass;
   end Get_Bass;

   --------------
   -- Get_Root --
   --------------

   function Get_Root (From : in Chord_Type) return Notes.Note_Type is
   begin
      return From.Root;
   end Get_Root;

   -----------
   -- Image --
   -----------

   function Image (Chord : in Chord_Type) return String is

      use Ada.Strings.Unbounded;

      Chord_Name : Unbounded_String;
   begin

      Chord_Name := To_Unbounded_String (Chord.Name.all & " : ");

      if Chord.Kind = Altered_Bass then
         Chord_Name := Chord_Name & Notes.Image (Chord.Bass) & ' ';
      end if;

      for I in Note_Number_Type loop
         if Chord.Scale_State (I) /= Unset then
            Chord_Name := Chord_Name & Notes.Image (Chord.Scale (I));

            case Chord.Scale_State (I) is
               when Double_Flat =>
                  Chord_Name := Chord_Name & "bb";
               when Flat =>
                  Chord_Name := Chord_Name & 'b';
               when Sharp =>
                  Chord_Name := Chord_Name & '#';
               when others =>
                  null;
            end case;

            Chord_Name := Chord_Name & ' ';
         end if;
      end loop;

      if Chord.Kind = Altered_Bass then
         Chord_Name := Chord_Name & "(altered bass)";
      elsif Chord.Kind = Inversion and then Chord.Inversion > 0 then
         Chord_Name := Chord_Name & '(' & Natural'Image (Chord.Inversion);
         case Chord.Inversion is
            when 1 =>
               Chord_Name := Chord_Name & "st";
            when 2 =>
               Chord_Name := Chord_Name & "nd";
            when 3 =>
               Chord_Name := Chord_Name & "rd";
            when others =>
               Chord_Name := Chord_Name & "th";
         end case;
         Chord_Name := Chord_Name & " inversion)";
      end if;

      return To_String (Chord_Name);
   end Image;

   ---------
   -- Put --
   ---------

   procedure Put (Chord : in Chord_Type) is
   begin
      Text_IO.Put (Image (Chord));
   end Put;

   --------------
   -- Is_Triad --
   --------------

   function Is_Triad (First_Interval, Second_Interval : in Positive)
                      return Triad_Type is

   begin
      if First_Interval = 5 then
         if Second_Interval = 2 then
            return SUS4;
         else
            return NO;
         end if;
      elsif First_Interval = 4 then
         if Second_Interval = 4 then
            return AUGMENTED;
         elsif Second_Interval = 3 then
            return MAJOR;
         else
            return NO;
         end if;
      elsif First_Interval = 3 then
         if Second_Interval = 4 then
            return MINOR;
         elsif Second_Interval = 3 then
            return DIMINISHED;
         else
            return NO;
         end if;
      elsif First_Interval = 2 then
         if Second_Interval = 5 then
            return SUS2;
         else
            return NO;
         end if;
      else
         return NO;
      end if;

   end Is_Triad;

   --------------
   -- Is_Triad --
   --------------

   function Is_Triad (Root, Third, Fifth  : in Notes.Note_Type)
                      return Triad_Type is

      First_Interval, Second_Interval : Natural;

   begin
      First_Interval  := Notes.Semitones_Between (Root,  Third);
      Second_Interval := Notes.Semitones_Between (Third, Fifth);

      return Is_Triad (First_Interval, Second_Interval);

   end Is_Triad;

end Chords;
