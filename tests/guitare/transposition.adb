
--
--  GUITARE Project
--
--  $Id: transposition.adb,v 1.7 2000/09/09 15:43:48 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--


with Text_IO;


package body Transposition is

   use Notes;

   type String_Ptr is access String;

   type Transpose_Type is
      record
         From_Key : Scales.Scale_Type;
         To_Key   : Scales.Scale_Type;
         Mode     : Transpose_Mode;
         Chords   : String_Ptr;
      end record;

   Transpose_Record : Transpose_Type;

   -----------
   -- Store --
   -----------

   procedure Store (In_Key : in Notes.Note_Type;
                    Mode   : in Transpose_Mode;
                    Chords : in String) is
   begin
      Scales.Create (Base => In_Key,
                     Mode => Mode,
                     Into => Transpose_Record.From_Key);
      Transpose_Record.Mode   := Mode;
      Transpose_Record.Chords := new String'(Chords);
   end Store;

   ---------------
   -- Transpose --
   ---------------

   procedure Transpose (To : in Notes.Note_Type) is
   begin
      Scales.Create (Base => To,
                     Mode => Transpose_Record.Mode,
                     Into => Transpose_Record.To_Key);
   end Transpose;

   ---------
   -- Put --
   ---------

   procedure Put is

      From_Note, To_Note : Notes.Note_Type;
      Current : Natural;
      Chords  : String_Ptr renames Transpose_Record.Chords;
      From_Scale, To_Scale : Scales.Scale_Notes_Type;

      Accidental_Note : exception;

      function Get_To_Note (From : in Notes.Note_Type)
                            return Notes.Note_Type is
      begin
         for Pos in From_Scale'Range loop
            if From_Scale (Pos) = From then
               return To_Scale (Pos);
            end if;
         end loop;
         raise Accidental_Note;
      end Get_To_Note;

   begin
      --  no transposition chords have been defined
      if Transpose_Record.Chords = null then
         raise Text_IO.Data_Error;
      end if;

      Text_IO.Set_Col (11);
      Text_IO.Put_Line ("Transpose");
      Text_IO.New_Line;
      Text_IO.Set_Col (11);
      Text_IO.Put ("from ");
      Scales.Put_Name (Transpose_Record.From_Key);
      Text_IO.Put_Line (" : " & Transpose_Record.Chords.all);
      Text_IO.Set_Col (11);
      Text_IO.Put ("to   ");
      Scales.Put_Name (Transpose_Record.To_Key);
      Text_IO.Put (" : ");

      --  initialisation for printing new chord (after transposing)
      Current    := Chords'First;
      From_Scale := Scales.Get_Scale_Notes (Transpose_Record.From_Key);
      To_Scale   := Scales.Get_Scale_Notes (Transpose_Record.To_Key);

      loop
         Notes.Get (From => Chords (Current .. Chords'Last),
                    Note => From_Note,
                    Last => Current);
         To_Note := Get_To_Note (From => From_Note);
         Notes.Put (To_Note, Width => 1);

         declare
            End_Accord : Natural := Current;
         begin
            while End_Accord < Chords'Last
              and then Chords (End_Accord) /= ' ' loop
               End_Accord := End_Accord + 1;
            end loop;
            if End_Accord <= Chords'Last then
               Text_IO.Put (Chords (Current .. End_Accord));
               Current := End_Accord;
            end if;
         end;

         exit when Current >= Chords'Last;

         Current := Current + 1;
      end loop;

      Text_IO.New_Line (2);

   exception

      when Accidental_Note =>
         Text_IO.Put_Line (" ** accidental chord (not yet implemented) ** ");
         Text_IO.New_Line;

   end Put;

end Transposition;
