------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--                             S W I T C H - B                              --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--          Copyright (C) 2001-2006, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the  Free Software Foundation,  51  Franklin  Street,  Fifth  Floor, --
-- Boston, MA 02110-1301, USA.                                              --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

with Debug; use Debug;
with Osint; use Osint;
with Opt;   use Opt;

with System.WCh_Con; use System.WCh_Con;

package body Switch.B is

   --------------------------
   -- Scan_Binder_Switches --
   --------------------------

   procedure Scan_Binder_Switches (Switch_Chars : String) is
      Max : constant Integer := Switch_Chars'Last;
      Ptr : Integer          := Switch_Chars'First;
      C   : Character        := ' ';

      function Get_Stack_Size (S : Character) return Int;
      --  Used for -d and -D to scan stack size including handling k/m.
      --  S is set to 'd' or 'D' to indicate the switch being scanned.

      --------------------
      -- Get_Stack_Size --
      --------------------

      function Get_Stack_Size (S : Character) return Int is
         Result : Int;

      begin
         Scan_Pos (Switch_Chars, Max, Ptr, Result, S);

         --  In the following code, we enable overflow checking since the
         --  multiplication by K or M may cause overflow, which is an error.

         declare
            pragma Unsuppress (Overflow_Check);

         begin
            --  Check for additional character 'k' (for kilobytes) or 'm'
            --  (for Megabytes), but only if we have not reached the end
            --  of the switch string. Note that if this appears before the
            --  end of the string we will get an error when we test to make
            --  sure that the string is exhausted (at the end of the case).

            if Ptr <= Max then
               if Switch_Chars (Ptr) = 'k' then
                  Result := Result * 1024;
                  Ptr := Ptr + 1;

               elsif Switch_Chars (Ptr) = 'm' then
                  Result := Result * (1024 * 1024);
                  Ptr := Ptr + 1;
               end if;
            end if;

         exception
            when Constraint_Error =>
               Osint.Fail
                 ("numeric value out of range for switch: ", (1 => S));
         end;

         return Result;
      end Get_Stack_Size;

   --  Start of processing for Scan_Binder_Switches

   begin
      --  Skip past the initial character (must be the switch character)

      if Ptr = Max then
         Bad_Switch (Switch_Chars);
      else
         Ptr := Ptr + 1;
      end if;

      --  A little check, "gnat" at the start of a switch is not allowed
      --  except for the compiler

      if Switch_Chars'Last >= Ptr + 3
        and then Switch_Chars (Ptr .. Ptr + 3) = "gnat"
      then
         Osint.Fail ("invalid switch: """, Switch_Chars, """"
            & " (gnat not needed here)");
      end if;

      --  Loop to scan through switches given in switch string

      Check_Switch : begin
         C := Switch_Chars (Ptr);

         case C is

         --  Processing for a switch

         when 'a' =>
            Ptr := Ptr + 1;
            Use_Pragma_Linker_Constructor := True;

         --  Processing for A switch

         when 'A' =>
            Ptr := Ptr + 1;
            Ada_Bind_File := True;

         --  Processing for b switch

         when 'b' =>
            Ptr := Ptr + 1;
            Brief_Output := True;

         --  Processing for c switch

         when 'c' =>
            Ptr := Ptr + 1;

            Check_Only := True;

         --  Processing for C switch

         when 'C' =>
            Ptr := Ptr + 1;

            Ada_Bind_File := False;

         --  Processing for d switch

         when 'd' =>

            if Ptr = Max then
               Bad_Switch (Switch_Chars);
            end if;

            Ptr := Ptr + 1;
            C := Switch_Chars (Ptr);

            --  Case where character after -d is a digit (default stack size)

            if C in '0' .. '9' then

               --  In this case, we process the default primary stack size

               Default_Stack_Size := Get_Stack_Size ('d');

            --  Case where character after -d is not digit (debug flags)

            else
               --  Note: for the debug switch, the remaining characters in this
               --  switch field must all be debug flags, since all valid switch
               --  characters are also valid debug characters. This switch is
               --  not documented on purpose because it is only used by the
               --  implementors.

               --  Loop to scan out debug flags

               loop
                  C := Switch_Chars (Ptr);

                  if C in 'a' .. 'z' or else C in 'A' .. 'Z' then
                     Set_Debug_Flag (C);
                  else
                     Bad_Switch (Switch_Chars);
                  end if;

                  Ptr := Ptr + 1;
                  exit when Ptr > Max;
               end loop;
            end if;

         --  Processing for D switch

         when 'D' =>
            if Ptr = Max then
               Bad_Switch (Switch_Chars);
            end if;

            Ptr := Ptr + 1;
            Default_Sec_Stack_Size := Get_Stack_Size ('D');

         --  Processing for e switch

         when 'e' =>
            Ptr := Ptr + 1;
            Elab_Dependency_Output := True;

         --  Processing for E switch

         when 'E' =>
            Ptr := Ptr + 1;
            Exception_Tracebacks := True;

         --  Processing for F switch

         when 'F' =>
            Ptr := Ptr + 1;
            Force_Checking_Of_Elaboration_Flags := True;

         --  Processing for g switch

         when 'g' =>
            Ptr := Ptr + 1;

            if Ptr <= Max then
               C := Switch_Chars (Ptr);

               if C in '0' .. '3' then
                  Debugger_Level :=
                    Character'Pos
                      (Switch_Chars (Ptr)) - Character'Pos ('0');
                  Ptr := Ptr + 1;
               end if;

            else
               Debugger_Level := 2;
            end if;

         --  Processing for h switch

         when 'h' =>
            Ptr := Ptr + 1;
            Usage_Requested := True;

         --  Processing for i switch

         when 'i' =>
            if Ptr = Max then
               Bad_Switch (Switch_Chars);
            end if;

            Ptr := Ptr + 1;
            C := Switch_Chars (Ptr);

            if C in  '1' .. '5'
              or else C = '8'
              or else C = 'p'
              or else C = 'f'
              or else C = 'n'
              or else C = 'w'
            then
               Identifier_Character_Set := C;
               Ptr := Ptr + 1;
            else
               Bad_Switch (Switch_Chars);
            end if;

         --  Processing for K switch

         when 'K' =>
            Ptr := Ptr + 1;
            Output_Linker_Option_List := True;

         --  Processing for l switch

         when 'l' =>
            Ptr := Ptr + 1;
            Elab_Order_Output := True;

         --  Processing for m switch

         when 'm' =>
            if Ptr = Max then
               Bad_Switch (Switch_Chars);
            end if;

            Ptr := Ptr + 1;
            Scan_Pos (Switch_Chars, Max, Ptr, Maximum_Errors, C);

         --  Processing for n switch

         when 'n' =>
            Ptr := Ptr + 1;
            Bind_Main_Program := False;

            --  Note: The -L option of the binder also implies -n, so
            --  any change here must also be reflected in the processing
            --  for -L that is found in Gnatbind.Scan_Bind_Arg.

         --  Processing for o switch

         when 'o' =>
            Ptr := Ptr + 1;

            if Output_File_Name_Present then
               Osint.Fail ("duplicate -o switch");

            else
               Output_File_Name_Present := True;
            end if;

         --  Processing for O switch

         when 'O' =>
            Ptr := Ptr + 1;
            Output_Object_List := True;

         --  Processing for p switch

         when 'p' =>
            Ptr := Ptr + 1;
            Pessimistic_Elab_Order := True;

         --  Processing for q switch

         when 'q' =>
            Ptr := Ptr + 1;
            Quiet_Output := True;

         --  Processing for r switch

         when 'r' =>
            Ptr := Ptr + 1;
            List_Restrictions := True;

         --  Processing for s switch

         when 's' =>
            Ptr := Ptr + 1;
            All_Sources := True;
            Check_Source_Files := True;

         --  Processing for t switch

         when 't' =>
            Ptr := Ptr + 1;
            Tolerate_Consistency_Errors := True;

         --  Processing for T switch

         when 'T' =>
            if Ptr = Max then
               Bad_Switch (Switch_Chars);
            end if;

            Ptr := Ptr + 1;
            Time_Slice_Set := True;
            Scan_Nat (Switch_Chars, Max, Ptr, Time_Slice_Value, C);
            Time_Slice_Value := Time_Slice_Value * 1_000;

         --  Processing for u switch

         when 'u' =>
            if Ptr = Max then
               Bad_Switch (Switch_Chars);
            end if;

            Ptr := Ptr + 1;
            Dynamic_Stack_Measurement := True;
            Scan_Nat
              (Switch_Chars,
               Max,
               Ptr,
               Dynamic_Stack_Measurement_Array_Size,
               C);

         --  Processing for v switch

         when 'v' =>
            Ptr := Ptr + 1;
            Verbose_Mode := True;

         --  Processing for w switch

         when 'w' =>
            if Ptr = Max then
               Bad_Switch (Switch_Chars);
            end if;

            --  For the binder we only allow suppress/error cases

            Ptr := Ptr + 1;

            case Switch_Chars (Ptr) is

               when 'e' =>
                  Warning_Mode  := Treat_As_Error;

               when 's' =>
                  Warning_Mode  := Suppress;

               when others =>
                  Bad_Switch (Switch_Chars);
            end case;

            Ptr := Ptr + 1;

         --  Processing for W switch

         when 'W' =>
            if Ptr = Max then
               Bad_Switch (Switch_Chars);
            end if;

            Ptr := Ptr + 1;

            for J in WC_Encoding_Method loop
               if Switch_Chars (Ptr) = WC_Encoding_Letters (J) then
                  Wide_Character_Encoding_Method := J;
                  exit;

               elsif J = WC_Encoding_Method'Last then
                  Bad_Switch (Switch_Chars);
               end if;
            end loop;

            Upper_Half_Encoding :=
              Wide_Character_Encoding_Method in
                WC_Upper_Half_Encoding_Method;

            Ptr := Ptr + 1;

         --  Processing for x switch

         when 'x' =>
            Ptr := Ptr + 1;
            All_Sources := False;
            Check_Source_Files := False;

         --  Processing for X switch

         when 'X' =>
            if Ptr = Max then
               Bad_Switch (Switch_Chars);
            end if;

            Ptr := Ptr + 1;
            Scan_Pos (Switch_Chars, Max, Ptr, Default_Exit_Status, C);

         --  Processing for z switch

         when 'z' =>
            Ptr := Ptr + 1;
            No_Main_Subprogram := True;

         --  Processing for --RTS

         when '-' =>

            if Ptr + 4 <= Max and then
              Switch_Chars (Ptr + 1 .. Ptr + 3) = "RTS"
            then
               Ptr := Ptr + 4;

               if Switch_Chars (Ptr) /= '=' or else Ptr = Max then
                  Osint.Fail ("missing path for --RTS");

               else
                  --  valid --RTS switch

                  Opt.No_Stdinc := True;
                  Opt.RTS_Switch := True;

                  declare
                     Src_Path_Name : constant String_Ptr :=
                                       Get_RTS_Search_Dir
                                         (Switch_Chars
                                           (Ptr + 1 .. Switch_Chars'Last),
                                          Include);
                     Lib_Path_Name : constant String_Ptr :=
                                       Get_RTS_Search_Dir
                                         (Switch_Chars
                                           (Ptr + 1 .. Switch_Chars'Last),
                                          Objects);

                  begin
                     if Src_Path_Name /= null and then
                       Lib_Path_Name /= null
                     then
                        --  Set the RTS_*_Path_Name variables, so that the
                        --  correct directories will be set when
                        --  Osint.Add_Default_Search_Dirs will be called later.

                        RTS_Src_Path_Name := Src_Path_Name;
                        RTS_Lib_Path_Name := Lib_Path_Name;

                        Ptr := Max + 1;

                     elsif  Src_Path_Name = null
                       and then Lib_Path_Name = null
                     then
                        Osint.Fail ("RTS path not valid: missing " &
                                    "adainclude and adalib directories");
                     elsif Src_Path_Name = null then
                        Osint.Fail ("RTS path not valid: missing " &
                                    "adainclude directory");
                     elsif  Lib_Path_Name = null then
                        Osint.Fail ("RTS path not valid: missing " &
                                    "adalib directory");
                     end if;
                  end;
               end if;

            else
               Bad_Switch (Switch_Chars);
            end if;

         --  Anything else is an error (illegal switch character)

         when others =>
            Bad_Switch (Switch_Chars);
         end case;

         if Ptr <= Max then
            Bad_Switch (Switch_Chars);
         end if;
      end Check_Switch;
   end Scan_Binder_Switches;

end Switch.B;
