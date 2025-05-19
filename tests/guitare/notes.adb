
--
--  GUITARE Project
--
--  $Id: notes.adb,v 1.8 2000/09/09 15:43:46 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Text_IO;

package body Notes is

   subtype Note_Value is Positive range 1 .. 12;

   ----------------
   -- Note_Index --
   ----------------

   function Note_Index (Note : in Note_Type) return Note_Value is
   begin
      case Note is
         when C =>
            return 1;
         when Cs | Db =>
            return 2;
         when D =>
            return 3;
         when Ds | Eb =>
            return 4;
         when E =>
            return 5;
         when F =>
            return 6;
         when Fs | Gb =>
            return 7;
         when G =>
            return 8;
         when Gs | Ab =>
            return 9;
         when A =>
            return 10;
         when As | Bb =>
            return 11;
         when B =>
            return 12;
      end case;
   end Note_Index;

   ---------------------
   -- Note_From_Index --
   ---------------------

   function Note_From_Index (Index : in Note_Value) return Note_Type is
   begin
      case Index is
         when 1 =>
            return C;
         when 2 =>
            return Cs;
         when 3 =>
            return D;
         when 4 =>
            return Ds;
         when 5 =>
            return E;
         when 6 =>
            return F;
         when 7 =>
            return Fs;
         when 8 =>
            return G;
         when 9 =>
            return Gs;
         when 10 =>
            return A;
         when 11 =>
            return As;
         when 12 =>
            return B;
      end case;
   end Note_From_Index;

   ---------
   -- Get --
   ---------

   procedure Get (From : in     String;
                  Note :    out Note_Type;
                  Last :    out Natural) is
      First_Char, Second_Char : Character;
      K : Natural := From'First;
   begin
      while From (K) = ' ' loop
         K := K + 1;
      end loop;
      First_Char := From (K);
      if K < From'Last then
         Second_Char := From (1+K);
      else
         Second_Char := '*';
      end if;
      if Second_Char = '#' then
         K := K + 2;
         case First_Char is
            when 'A' =>
               Note := As;
            when 'C' =>
               Note := Cs;
            when 'D' =>
               Note := Ds;
            when 'F' =>
               Note := Fs;
            when 'G' =>
               Note := Gs;
            when others =>
               raise Bad_Note_Format;
         end case;
      elsif Second_Char = 'b' then
         K := K + 2;
         case First_Char is
            when 'A' =>
               Note := Ab;
            when 'B' =>
               Note := Bb;
            when 'D' =>
               Note := Db;
            when 'E' =>
               Note := Eb;
            when 'G' =>
               Note := Gb;
            when others =>
               raise Bad_Note_Format;
         end case;
      else
         K := K + 1;
         case First_Char is
            when 'A' =>
               Note := A;
            when 'B' =>
               Note := B;
            when 'C' =>
               Note := C;
            when 'D' =>
               Note := D;
            when 'E' =>
               Note := E;
            when 'F' =>
               Note := F;
            when 'G' =>
               Note := G;
            when others =>
               raise Bad_Note_Format;
         end case;
      end if;
      Last := K;
   end Get;

   -----------
   -- Equal --
   -----------

   function Equal (Note1, Note2 : in Note_Type;
                   Check : in Check_Type := NO_STRICT)
                   return Boolean is
      N1 : Note_Type := Note1;
      N2 : Note_Type := Note2;
   begin
      if Check = NO_STRICT then
         Flat_To_Sharp (N1);
         Flat_To_Sharp (N2);
         return N1 = N2;
      else
         return Note1 = Note2;
      end if;
   end Equal;

   -----------
   -- Image --
   -----------

   function Image (Note : in Note_Type) return String is
   begin
      case Note is
         when C | D | E | F | G | A | B =>
            return Note_Type'Image (Note);
         when Cs =>
            return "C#";
         when Db =>
            return "Db";
         when Ds =>
            return "D#";
         when Eb =>
            return "Eb";
         when Fs =>
            return "F#";
         when Gb =>
            return "Gb";
         when Gs =>
            return "G#";
         when Ab =>
            return "Ab";
         when As =>
            return "A#";
         when Bb =>
            return "Bb";
      end case;
   end Image;

   ---------
   -- Put --
   ---------

   procedure Put (Note : in Note_Type; Width : in Positive := 2) is
      Note_Name : constant String := Image (Note) & ' ';
   begin
      Text_IO.Put (Note_Name (1 .. Width));
   end Put;

   ---------
   -- Put --
   ---------

   procedure Put (Note : in Note_Type; Into : out Note_Name_Type) is
      Note_Name : constant String := Image (Note) & ' ';
   begin
      Into := Note_Name (1 .. 2);
   end Put;

   ------------
   -- Modify --
   ------------

   procedure Modify (Note : in out Note_Type; Ton : in Ton_Modifier) is
      Note_Val : Integer;
      New_Note : Note_Type;
   begin

      if Ton = ZERO then
         return;
      end if;

      --  find new note
      Note_Val := Note_Index (Note);
      case Ton is
         when PLUS_ONE_HALF =>
            Note_Val := Note_Val + 1;
         when PLUS_ONE =>
            Note_Val := Note_Val + 2;
         when MINUS_ONE_HALF =>
            Note_Val := Note_Val - 1;
         when MINUS_ONE =>
            Note_Val := Note_Val - 2;
         when PLUS_THREE_HALF =>
            Note_Val := Note_Val + 3;
         when PLUS_TWO =>
            Note_Val := Note_Val + 4;
         when ZERO =>
            return;
      end case;
      if Note_Val > 12 then
         Note_Val := Note_Val - 12;
      elsif Note_Val < 1 then
         Note_Val := 12 - Note_Val;
      end if;

      --  by default this function return a sharp note
      New_Note := Note_From_Index (Note_Val);

      --
      --  modify the sharp/flat according to theses rules
      --
      --  mode PLUS  --> 1      1/2              mode MINUS --> 1      1/2
      --       note was !                             note was !
      --       ---------------------                  ---------------------
      --        N        N/#    N/b                    N        N/#    N/b
      --        b        N/b    N                      b        N/b    N
      --        #        N/#    N                      #        N/#    N
      --
      --

      if Is_Flat (Note) then
         case Ton is
            when MINUS_ONE | PLUS_ONE =>
               Sharp_To_Flat (New_Note);
            when others =>
               null;
         end case;
      elsif not Is_Sharp (Note) then
         case Ton is
            when MINUS_ONE | PLUS_ONE_HALF =>
               Sharp_To_Flat (New_Note);
            when others =>
               null;
         end case;
      end if;

      Note := New_Note;

   end Modify;

   --------------
   -- Is_Sharp --
   --------------

   function Is_Sharp (Note : in Note_Type) return Boolean is
   begin
      case Note is
         when Cs | Ds | Fs | Gs | As =>
            return True;
         when others =>
            return False;
      end case;
   end Is_Sharp;

   -------------
   -- Is_Flat --
   -------------

   function Is_Flat (Note : in Note_Type) return Boolean is
   begin
      case Note is
         when Db | Eb | Gb | Ab | Bb =>
            return True;
         when others =>
            return False;
      end case;
   end Is_Flat;

   --------------
   -- Is_Whole --
   --------------

   function Is_Whole (Note : in Note_Type) return Boolean is
   begin
      case Note is
         when A | B | C | D | E | F | G =>
            return True;
         when others =>
            return False;
      end case;
   end Is_Whole;

   -----------------------
   -- Semitones_Between --
   -----------------------

   function Semitones_Between (Note1, Note2 : in Note_Type) return Natural is

      type Interval_Type is array (Note_Type, Note_Type) of Natural;

      Semitones : constant Interval_Type := (
      --  C
      (+0,  1,  1,  2,  3,  3,  4,  5,  6,  6,  7,  8,  8,  9, 10, 10, 11),
      --  C# Db
      (11,  0,  0,  1,  2,  2,  3,  4,  5,  5,  6,  7,  7,  8,  9,  9, 10),
      --  D
      (11,  0,  0,  1,  2,  2,  3,  4,  5,  5,  6,  7,  7,  8,  9,  9, 10),
      (10, 11, 11,  0,  1,  1,  2,  3,  4,  4,  5,  6,  6,  7,  8,  8,  9),
      --  D# Eb
      (+9, 10, 10, 11,  0,  0,  1,  2,  3,  3,  4,  5,  5,  6,  7,  7,  8),
      --  E
      (+9, 10, 10, 11,  0,  0,  1,  2,  3,  3,  4,  5,  5,  6,  7,  7,  8),
      (+8,  9,  9, 10, 11, 11,  0,  1,  2,  2,  3,  4,  4,  5,  6,  6,  7),
      --  F
      (+7,  8,  8,  9, 10, 10, 11,  0,  1,  1,  2,  3,  3,  4,  5,  5,  6),
      --  F# Gb
      (+6,  7,  7,  8,  9,  9, 10, 11,  0,  0,  1,  2,  2,  3,  4,  4,  5),
      --  G
      (+6,  7,  7,  8,  9,  9, 10, 11,  0,  0,  1,  2,  2,  3,  4,  4,  5),
      (+5,  6,  6,  7,  8,  8,  9, 10, 11, 11,  0,  1,  1,  2,  3,  3,  4),
      --  G# Ab
      (+4,  5,  5,  6,  7,  7,  8,  9, 10, 10, 11,  0,  0,  1,  2,  2,  3),
      --  A
      (+4,  5,  5,  6,  7,  7,  8,  9, 10, 10, 11,  0,  0,  1,  2,  2,  3),
      (+3,  4,  4,  5,  6,  6,  7,  8,  9,  9, 10, 11, 11,  0,  1,  1,  2),
      --  A# Bb
      (+2,  3,  3,  4,  5,  5,  6,  7,  8,  8,  9, 10, 10, 11,  0,  0,  1),
      --  B
      (+2,  3,  3,  4,  5,  5,  6,  7,  8,  8,  9, 10, 10, 11,  0,  0,  1),
      (+1,  2,  2,  3,  4,  4,  5,  6,  7,  7,  8,  9,  9, 10, 11, 11,  0)
    );

   begin
      return Semitones (Note1, Note2);
   end Semitones_Between;

   -----------------------
   -- Semitones_Between --
   -----------------------

   function Semitones_Between (Note1, Note2 : in Note_Type)
                               return Ton_Modifier is
      Interval : Natural;
   begin
      Interval := Semitones_Between (Note1, Note2);
      case Interval is
      when 0 =>
         return ZERO;
         when 1 =>
            return PLUS_ONE_HALF;
         when 2 =>
            return PLUS_ONE;
         when 3 =>
            return PLUS_THREE_HALF;
         when 4 =>
            return PLUS_TWO;
         when others =>
            raise Constraint_Error;
      end case;
   end Semitones_Between;

   -------------------
   -- Flat_To_Sharp --
   -------------------

   procedure Flat_To_Sharp (Note : in out Note_Type) is
   begin
      case Note is
         when Db =>
            Note := Cs;
         when Eb =>
            Note := Ds;
         when Gb =>
            Note := Fs;
         when Ab =>
            Note := Gs;
         when Bb =>
            Note := As;
         when others =>
            null;
      end case;
   end Flat_To_Sharp;

   -------------------
   -- Sharp_To_Flat --
   -------------------

   procedure Sharp_To_Flat (Note : in out Note_Type) is
   begin
      case Note is
         when Cs =>
            Note := Db;
         when Ds =>
            Note := Eb;
         when Fs =>
            Note := Gb;
         when Gs =>
            Note := Ab;
         when As =>
            Note := Bb;
         when others =>
            null;
      end case;
   end Sharp_To_Flat;

   ---------
   -- Set --
   ---------

   procedure Set (Note : in Note_Type; Into : in out Set_Of_Notes) is
   begin
      Into (Note) := True;
   end Set;

   -----------
   -- Unset --
   -----------

   procedure Unset (Note : in Note_Type; Into : in out Set_Of_Notes) is
   begin
      Into (Note) := False;
   end Unset;

   -----------
   -- Exist --
   -----------

   function Exist (Note : in Note_Type;
                   Into : in Set_Of_Notes;
                   Check : in Check_Type := NO_STRICT)
                   return Boolean
   is
      Note2 : Note_Type := Note;
   begin
      if Check = NO_STRICT then
         if Is_Sharp (Note) then
            Sharp_To_Flat (Note2);
         elsif Is_Flat (Note) then
            Flat_To_Sharp (Note2);
         end if;
         return Into (Note) or else Into (Note2);
      else
         return Into (Note);
      end if;
   end Exist;

   ------------
   -- Adjust --
   ------------

   procedure Adjust (Note : in out Note_Type; Into : in Set_Of_Notes) is
      Note2 : Notes.Note_Type := Note;
   begin
      if Is_Sharp (Note) then
         Sharp_To_Flat (Note2);
      elsif Notes.Is_Flat (Note) then
         Flat_To_Sharp (Note2);
      end if;
      if Into (Note2) then
         Note := Note2;
      end if;
   end Adjust;

   -----------
   -- Count --
   -----------

   function Count (Set : in Set_Of_Notes) return Natural is
      Nb : Natural := 0;
   begin
      for I in Set'Range loop
         if Set (I) then
            Nb := Nb + 1;
         end if;
      end loop;
      return Nb;
   end Count;

   ----------
   -- Set1 --
   ----------

   function "+" (Set1, Set2 : in Set_Of_Notes) return Set_Of_Notes is
   begin
      return Set1 or Set2;
   end "+";

   -----------
   -- Clear --
   -----------

   procedure Clear (Set : out Set_Of_Notes; To : in Boolean := False) is
   begin
      Set := (others => To);
   end Clear;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Set : in Set_Of_Notes) return Boolean is
      Empty_Set : Set_Of_Notes := Set_Of_Notes'(others => False);
   begin
      return Set = Empty_Set;
   end Is_Empty;

   --------------
   -- Included --
   --------------

   function Included (Set, Into : in Set_Of_Notes;
                      Check : in Check_Type := NO_STRICT)
                      return Boolean
   is
      Result : Set_Of_Notes;
   begin
      if Check = STRICT then
         if (Set or Into) = Into then
            return True;
         else
            return False;
         end if;
      else
         for Note in Set'Range loop
            if Set (Note) = True then
               if Is_Sharp (Note) then
                  Result (Note) := Into (Note) or else
                    Into (Note_Type'Succ (Note));
               elsif Is_Flat (Note) then
                  Result (Note) := Into (Note) or else
                    Into (Note_Type'Pred (Note));
               else
                  Result (Note) := Set (Note) and then Into (Note);
               end if;
            else
               Result (Note) := False;
            end if;
         end loop;
         if Result = Set then
            return True;
         else
            return False;
         end if;
      end if;
   end Included;

   ---------
   -- Put --
   ---------

   procedure Put (Set : in Set_Of_Notes) is
      Print_Separator : Boolean := False;
   begin
      for I in Set'Range loop
         if Set (I) then
            if Print_Separator then
               Text_IO.Put (' ');
            end if;
            Put (I, 1);
            Print_Separator := True;
         end if;
      end loop;
   end Put;

end Notes;
