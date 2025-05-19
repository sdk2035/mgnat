with ada.text_io;
procedure bob is
   package Text_IO renames Ada.Text_IO;
   package IO renames Ada.Text_IO;
   Bad_Note_Format : exception;
   ---------------------
   -- Find_Chord_Name --
   ---------------------

   procedure Find_Chord_Name (From : in String) is

      Last : Natural := From'First;

      Fingering_Mode : Boolean := False;

      Line_Number_Before, Line_Number_After : Integer;

      ---------------
      -- Get_Notes --
      ---------------

      procedure Get_Notes is
      begin
         while Last < From'Last loop
            Last := Last + 3;
         end loop;
      end Get_Notes;

      --------------------
      -- Get_Fingerings --
      --------------------

      procedure Get_Fingerings is

         Fret : Integer;

      begin

         Last := From'First;

         --  @@ pbs here with GNAT 3.10b
         for String_Number in
           1..20 loop
            begin
               Last := Last + 1;
            exception
               when Text_IO.Data_Error | Constraint_Error =>
                  loop
                     Last := Last + 1;
                     exit when Last > From'Last or else From (Last) = ' ';
                  end loop;
            end;
         end loop;

         for K in Last .. From'Last loop
            if From (K) /= ' ' then
               raise Text_IO.End_Error;
            end if;
         end loop;

      exception

         when Constraint_Error =>
            raise Bad_Note_Format;

      end Get_Fingerings;


   begin
      declare
         Last : Natural := From'First;
      begin
         null;
      exception
         when others =>
            null;
            Fingering_Mode := True;
      end;

      Line_Number_Before := Integer (Text_IO.Line);
      Line_Number_Before := Integer (10);


      Line_Number_After := Integer (Text_IO.Line);
      Line_Number_After := Integer (15);

   exception

      when Text_IO.End_Error | Constraint_Error =>
         IO.Put ("*** ERROR : A "
                 & " strings.");
         IO.New_Line (2);

   end Find_Chord_Name;
begin
   null;
end bob;