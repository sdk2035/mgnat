with J_String; use J_String;
with Ada.Text_IO;  use Ada.Text_IO;
with JVM.Code; use JVM.Code;
with JVM.Info; use JVM.Info;
with JVM.Pool; use JVM.Pool;
with JVM_File; use JVM_File;
with Lib;      use Lib;
with Namet;    use Namet;
with Opt;
with Sinput;   use Sinput;
with Stringt;  use Stringt;
with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;
with Ada.Strings;           use Ada.Strings;
with Ada.Strings.Fixed;     use Ada.Strings.Fixed;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Characters.Handling; use Ada.Characters.Handling;

package body JVM.MSIL_Emit is
   --  this way we can put all of the classes in the same assembly
   --  file, which will make it easier to do the linking later
   First_Class_Opened : Boolean := True;

   function Params_String (Method : Method_Id;
      Names : Boolean := True) return String;
   function Params_String_Helper (Params : Local_Var_Id;
      Names : Boolean := True) return String;
   function External_Name (Class : Class_Id) return String;
   function External_Name (Name : Name_Id) return String;
   function Translate_File_Name (Name : Name_Id) return String;
   procedure Generate_Handler_Entries
     (File : Ada.Text_IO.File_Type; Method   : Method_Id);
   procedure Generate_External_Assemblies
     (File : in Ada.Text_IO.File_Type);

   Assembly_Names : Unbounded_String := Null_Unbounded_String;

   ------------------
   -- Add_Assembly --
   ------------------
   procedure Add_Assembly (Name : in String) is
      Rbracket : constant Natural := Index (Name, "]");
      Pound    : constant Natural := Index (Name, "#");
   begin
      --  we use $ to mark the beginning so that it is easier to
      --  check if this already is present (we don't have to worry
      --  about prefixes or suffixes)

      if Name (Name'First + 1 .. Rbracket - 1) /= "mscorlib" and then
            Name (Name'First + 1 .. Rbracket - 1) /= "mgnat" and then
            Name (Name'First + 1 .. Rbracket - 1) /= "vjslib" then
         --  if there isn't version info
         if Pound < Name'First and then
            Index (Assembly_Names,
            "$" & Name (Name'First + 1 .. Rbracket - 1) & ",") = 0 then
            Assembly_Names := Assembly_Names & '$' &
               Name (Name'First + 1 .. Rbracket - 1) & ",";
         elsif Pound > Name'First and then Index (Assembly_Names,
               "$" & Name (Name'First + 1 .. Rbracket - 1) &
               Name (Pound .. Name'Last) & ",") = 0 then
            Assembly_Names := Assembly_Names & '$' &
               Name (Name'First + 1 .. Rbracket - 1) &
               Name (Pound .. Name'Last) & ",";
         end if;
      end if;
   end Add_Assembly;

   procedure Add_Assembly (Version : in String; Name : in String_Id) is
      Copy_Version : constant String := Version;
   begin
      --  because Version is an in parameter, GNAT does pass by reference
      --  but the following call will overwrite it, so we make a copy
      --  of version
      String_To_Name_Buffer (Name);
      --  here we piggy-back on the code above, and add a '#' as the
      --  separator between the version info and the assembly name
      Add_Assembly (Name_Buffer (1 .. Name_Len) & '#' & Copy_Version);
   end Add_Assembly;

   ----------------------------------
   -- Generate_External_Assemblies --
   ----------------------------------
   procedure Generate_External_Assemblies (File : in Ada.Text_IO.File_Type) is
      Names  : constant String  := To_String (Assembly_Names);
      Start  : Natural := Names'First;
      Finish : Natural;
      Middle : Natural;
   begin
      loop
         Finish := Index (Names (Start .. Names'Last), ",");
         exit when Finish < Start;
         Middle := Index (Names (Start .. Finish), "#");
         if Middle > Start then
            Put_Line (File, ".assembly extern " &
               Names (Start + 1 .. Middle - 1) &
               " { " &
               Names (Middle + 1 .. Finish - 1) &
               " }");
         else
            Put_Line (File, ".assembly extern " &
               Names (Start + 1 .. Finish - 1) &
               " { }");
         end if;
         Start := Finish + 1;
      end loop;
   end Generate_External_Assemblies;

   -------------------------
   -- Translate_File_Name --
   -------------------------

   function Translate_File_Name (Name : Name_Id) return String is
      Input_Name : constant String := Name_String (Name);
      Result     : String (1 .. Input_Name'Length * 2);
      Count      : Natural := 0;
      Slash_Seen : Boolean := False;
   begin
      --  translate all '.' to '-' (following the GNAT naming convention
      --  for filenames.  Will probably break in the presence of
      --  non-conforming filenames using pragmas) unless it is the
      --  .adb or .ads file extension.  Only do this in the filename
      --  part (do in reverse up until first \)
      --
      --  also, for MSIL, '\' needs to be replaced with "\\" in the
      --  .line directives
      for I in Input_Name'Range loop
         if Input_Name (I) = '\' then
            Count := Count + 1;
            Result (Count) := '\';
            Count := Count + 1;
            Result (Count) := '\';
         else
            Count := Count + 1;
            Result (Count) := Input_Name (I);
         end if;
      end loop;
      for I in reverse 1 .. Count loop
         if Result (I) = '.' and then
               not Slash_Seen and then
               (I /= Count - 3 or else
               (Result (I .. Count) /= ".adb" and
                Result (I .. Count) /= ".ads")) then
            Result (I) := '-';
         elsif Result (I) = '\' then
            Slash_Seen := True;
         end if;
      end loop;
      return Result (1 .. Count);
   end Translate_File_Name;

   -------------------
   -- External_Name --
   -------------------

   function Check_Reserved (Name : in String) return String;
   function Check_Reserved (Name : in String) return String is
   begin
      if Name = "date" then
         return "'date'";
      elsif Name = "assert" then
         return "'assert'";
      elsif Name = "decimal" then
         return "'decimal'";
      elsif Name = "value" then
         return "'value'";
      elsif Name = "to" then
         return "'to'";
      elsif Name = "char" then
         return "'char'";
      elsif Name = "int" then
         return "'int'";
      elsif Name = "dup" then
         return "'dup'";
      elsif Name = "pop" then
         return "'pop'";
      elsif Name = "ret" then
         return "'ret'";
      elsif Name = "box" then
         return "'box'";
      elsif Name = "unbox" then
         return "'unbox'";
      elsif Name = "throw" then
         return "'throw'";
      elsif Name = "family" then
         return "'family'";
      elsif Name = "class" then
         return "'class'";
      elsif Name = "public" then
         return "'public'";
      elsif Name = "static" then
         return "'static'";
      elsif Name = "namespace" then
         return "'namespace'";
      elsif Name = "handler" then
         return "'handler'";
      elsif Name = "instance" then
         return "'instance'";
      elsif Name = "wrapper" then
         return "'wrapper'";
      elsif Name = "object" then
         return "'object'";
      elsif Name = "div" then
         return "'div'";
      elsif Name = "isinst" then
         return "'isinst'";
      elsif Name = "br" then
         return "'br'";
      elsif Name = "beq" then
         return "'beq'";
      elsif Name = "bge" then
         return "'bge'";
      elsif Name = "ble" then
         return "'ble'";
      elsif Name = "blt" then
         return "'blt'";
      elsif Name = "switch" then
         return "'switch'";
      elsif Name = "alignment" then
         return "'alignment'";
      elsif Name = "default" then
         return "'default'";
      elsif Name = "jmp" then
         return "'jmp'";
      elsif Name = "ldnull" then
         return "'ldnull'";
      elsif Name = "stream" then
         return "'stream'";
      elsif Name = "call" then
         return "'call'";
      elsif Name = "calli" then
         return "'calli'";
      elsif Name = "add" then
         return "'add'";
      elsif Name = "sub" then
         return "'sub'";
      elsif Name = "neg" then
         return "'neg'";
      elsif Name = "fixed" then
         return "'fixed'";
      elsif Name = "error" then
         return "'error'";
      elsif Name = "algorithm" then
         return "'algorithm'";
      elsif Name = "method" then
         return "'method'";
      elsif Name = "vector" then
         return "'vector'";
      elsif Name = "any" then
         return "'any'";
      elsif Name = "on" then
         return "'on'";
      elsif Name = "off" then
         return "'off'";
      elsif Name = "init" then
         return "'init'";
      elsif Name = "request" then
         return "'request'";
      elsif Name = "enum" then
         return "'enum'";
      --  mcc: added 06/17/05
      elsif Name = "float64" then
         return "'float64'";
      elsif Name = "float32" then
         return "'float32'";
      elsif Name = "void" then
         return "'void'";
      elsif Name = "bool" then
         return "'bool'";
      elsif Name = "char" then
         return "'char'";
      elsif Name = "int64" then
         return "'int64'";
      elsif Name = "int32" then
         return "'int32'";
      elsif Name = "int8" then
         return "'int8'";
      elsif Name = "int16" then
         return "'int16'";
      elsif Name = "flags" then
         return "'flags'";
      --  mcc: added 02/09/06
      elsif Name = "as" then
         return "'as'";
      elsif Name = "variant" then
         return "'variant'";
      --  mcc: added 04/09/06
      elsif Name = "filter" then
         return "'filter'";
      else
         return Name;
      end if;
   end Check_Reserved;

   function External_Name (Name : Name_Id) return String is
      Result : constant String := Name_String (Name);
   begin
      --  make sure that the appropriate prefix is added
      --  for the built-in library packages.  Perhaps this
      --  is a stopgap measure until they are redone (instead
      --  of just being translated using jbimp and then modified
      --  by hand)
      if Result'Length > 4 and then
         Result (Result'First .. Result'First + 3) = "ada." then
         return "[mgnat]" & Result;
      elsif Result'Length > 5 and then
         Result (Result'First .. Result'First + 4) = "gnat." then
         return "[mgnat]" & Result;
      elsif Result'Length > 11 and then
         Result (Result'First .. Result'First + 10) = "interfaces." then
         return "[mgnat]" & Result;
      elsif Result'Length > 7 and then
         Result (Result'First .. Result'First + 6) = "system." then
         return "[mgnat]" & Result;
      elsif Result = "mgnat.adalib.GNAT_libc" then
         return "[mgnatcs]mgnat.adalib.GNAT_libc";
      elsif Result = "ada_pkg" then
         return "[mgnat]ada_pkg";
      elsif Result = "gnat_pkg" then
         return "[mgnat]gnat_pkg";
      elsif Result = "interfaces_pkg" then
         return "[mgnat]interfaces_pkg";
      elsif Result = "system_pkg" then
         return "[mgnat]system_pkg";
      else
         return Check_Reserved (Result);
      end if;
   end External_Name;

   function External_Name (Class : Class_Id) return String is
      Pkg : constant String := Str (Pkg_Name (Class));
   begin
      --  because some references are generated outside of jvm-api
      --  make sure the assembly prefix is added if needed
      if Pkg /= "" then
         declare
            Result : constant String :=
               Check_Reserved (Name_String (Name (Class)));
         begin
            if Pkg'Length >= 12 and then
               Pkg (Pkg'First .. Pkg'First + 11) = "mgnat.adalib" then
               return "[mgnatcs]" & Pkg & "." & Result;
            elsif Pkg'Length >= 4 and then
               Pkg (Pkg'First .. Pkg'First + 3) = "ada." then
               return "[mgnat]" & Pkg & "." & Result;
            elsif Pkg'Length >= 5 and then
               Pkg (Pkg'First .. Pkg'First + 4) = "gnat." then
               return "[mgnat]" & Pkg & "." & Result;
            elsif Pkg'Length >= 11 and then
               Pkg (Pkg'First .. Pkg'First + 10) = "interfaces." then
               return "[mgnat]" & Pkg & "." & Result;
            elsif Pkg'Length >= 7 and then
               Pkg (Pkg'First .. Pkg'First + 6) = "system." then
               return "[mgnat]" & Pkg & "." & Result;
            elsif Pkg = "mgnat.adalib" then
               return "[mgnatcs]mgnat.adalib." & Result;
            elsif Pkg = "ada" then
               return "[mgnat]ada." & Result;
            elsif Pkg = "system" then
               return "[mgnat]system." & Result;
            elsif Pkg = "gnat" then
               return "[mgnat]gnat." & Result;
            elsif Pkg = "interfaces" then
               return "[mgnat]interfaces." & Result;
            else
               return Pkg & "." & Result;
            end if;
         end;
      else
         declare
            Result : constant String := External_Name (Name (Class));
         begin
            return Result;
         end;
      end if;
   end External_Name;

   -----------------
   -- Type_String --
   -----------------

   function Type_String (Typ : Type_Id) return String is
   begin
      case Type_Kind (Typ) is
         when Boolean_Kind | Byte_Kind  | Char_Kind | Short_Kind =>
            pragma Assert (False);
            return "";

         when Int_Kind =>
            return Name_String (Name (Typ));

         when Void_Kind | Long_Kind | Float_Kind | Double_Kind =>
            return Name_String (Name (Typ));

         when Array_Kind =>
            return Type_String (Element_Type (Typ))  &
               (Positive (Dimensions (Typ)) * "[]");

         when Class_Kind =>
            if External_Name (Name (Class (Typ))) = "string" then
               return "string";
            elsif Superclass (Class (Typ)) /= 0 and then
               Name_String (Name (Superclass (Class (Typ)))) =
               "ValueType" then
               return
                  "valuetype " & External_Name (Class (Typ));
            else
               return
                  "class " & External_Name (Class (Typ));
            end if;

         when Return_Addr_Kind =>
            pragma Assert (False);
            return Name_String (Name (Typ));
      end case;
   end Type_String;

   -------------------
   -- Params_String --
   -------------------

   function Params_String_Helper (Params : Local_Var_Id;
      Names : Boolean := True) return String is
   begin
      if Params = Null_Local_Var or else not Is_Param (Params) then
         return "";
      else
         --  Recursively apply the function to the remainder of the
         --  parameters in the list, concatenating the type descriptors
         --  of the parameters.
         if Names then
            declare
               Rest : constant String := Params_String_Helper (
                  Next_Local_Var (Params), Names);
               This : constant String := Type_String (Type_Of (Params)) &
                  " " & External_Name (Name (Params));
            begin
               if Rest = "" then
                  return This;
               else return This & ", " & Rest;
               end if;
            end;
         else
            declare
               Rest : constant String := Params_String_Helper (
                  Next_Local_Var (Params), Names);
               This : constant String := Type_String (Type_Of (Params));
            begin
               if Rest = "" then
                  return This;
               else return This & ", " & Rest;
               end if;
            end;
         end if;
      end if;
   end Params_String_Helper;

   function Params_String (Method : Method_Id;
         Names : Boolean := True) return String is
      First_Param    : Local_Var_Id := First_Local_Var (Method);
   begin
      if not Is_Static (Method) then
         First_Param := Next_Local_Var (First_Param);
      end if;
      return "(" & Params_String_Helper (First_Param, Names) & ")";
   end Params_String;

   procedure Emit_Field (File : Ada.Text_IO.File_Type; Field : Field_Id);
   procedure Emit_Method (File : Ada.Text_IO.File_Type; Method : Method_Id);
   procedure Emit_Code (File : Ada.Text_IO.File_Type; Method : Method_Id);
   procedure Emit_Code_Sequence
     (File : Ada.Text_IO.File_Type; Method : Method_Id;
      Method_Seq : Code_Sequence);
   procedure Emit_CP_Float (File : Ada.Text_IO.File_Type; Value : Ureal);
   procedure Emit_CP_Double (File : Ada.Text_IO.File_Type; Value : Ureal);

   procedure Emit_Field (File : Ada.Text_IO.File_Type; Field : Field_Id) is
   begin
      Put (File, "   .field public ");
      if Is_Static (Field) then
         Put (File, "static ");
      end if;
      Put (File, Type_String (
         Type_Of (Field)) & " ");
      Put_Line (File, External_Name (Name (Field)));
   end Emit_Field;

   -------------------
   -- Emit_CP_Float --
   -------------------

   procedure Emit_CP_Float (File : Ada.Text_IO.File_Type; Value : Ureal) is
      Num      : Long_Long_Float := 0.0;
      Den      : Long_Long_Float := 0.0;
      Sign     : Long_Long_Float := 1.0;
      Tmp      : Uint;
      Index    : Integer;
      Answer   : U4;
   begin
      if UR_Is_Negative (Value) then
         Sign := -1.0;
      end if;

      --  In the following calculus, we consider numbers modulo 2 ** 31,
      --  so that we don't have problems with signed Int...

      Tmp := abs (Numerator (Value));
      Index := 0;
      while Tmp > 0 loop
         Num := Num
           + Long_Long_Float (UI_To_Int (Tmp mod (Uint_2 ** 31)))
           * (2.0 ** Index);
         Tmp := Tmp / Uint_2 ** 31;
         Index := Index + 31;
      end loop;

      Tmp := abs (Denominator (Value));
      if Rbase (Value) /= 0 then
         Tmp := Rbase (Value) ** Tmp;
      end if;

      Index := 0;
      while Tmp > 0 loop
         Den := Den
           + Long_Long_Float (UI_To_Int (Tmp mod (Uint_2 ** 31)))
           * (2.0 ** Index);
         Tmp := Tmp / Uint_2 ** 31;
         Index := Index + 31;
      end loop;

      --  If the denominator denotes a negative power of Rbase,
      --  then multiply by the denominator.

      if Rbase (Value) /= 0 and then Denominator (Value) < 0 then
         Answer := To_U4 (IEEE_Float_32 (Sign * Num * Den));
      --  Otherwise compute the quotient

      else
         Answer := To_U4 (IEEE_Float_32 (Sign * Num / Den));
      end if;
      declare
         package U4_IO is new Ada.Text_IO.Modular_IO (U4);
         Answer_String : String (1 .. 12);
         First : Natural;
         Last  : Natural;
      begin
         U4_IO.Put (To => Answer_String, Item => Answer, Base => 16);
         First := Ada.Strings.Fixed.Index (Answer_String, "#");
         Last  := Ada.Strings.Fixed.Index (Answer_String, "#",
            Backward);
         Put (File, "float32(0x" & Answer_String (First + 1 .. Last - 1) &
            ")");
      end;

   end Emit_CP_Float;

   --------------------
   -- Emit_CP_Double --
   --------------------

   procedure Emit_CP_Double (File : Ada.Text_IO.File_Type; Value : Ureal) is
      Num      : Long_Long_Float := 0.0;
      Den      : Long_Long_Float := 0.0;
      Sign     : Long_Long_Float := 1.0;
      Tmp      : Uint;
      Index    : Integer;
      Answer   : U8;
   begin
      if UR_Is_Negative (Value) then
         Sign := -1.0;
      end if;

      --  In the following calculus, we consider numbers modulo 2 ** 31,
      --  so that we don't have problems with signed Int...

      Tmp := abs (Numerator (Value));
      Index := 0;
      while Tmp > 0 loop
         Num := Num
           + Long_Long_Float (UI_To_Int (Tmp mod (Uint_2 ** 31)))
           * (2.0 ** Index);
         Tmp := Tmp / Uint_2 ** 31;
         Index := Index + 31;
      end loop;

      Tmp := abs (Denominator (Value));
      if Rbase (Value) /= 0 then
         Tmp := Rbase (Value) ** Tmp;
      end if;

      Index := 0;
      while Tmp > 0 loop
         Den := Den
           + Long_Long_Float (UI_To_Int (Tmp mod (Uint_2 ** 31)))
           * (2.0 ** Index);
         Tmp := Tmp / Uint_2 ** 31;
         Index := Index + 31;
      end loop;

      --  If the denominator denotes a negative power of Rbase,
      --  then multiply by the denominator.

      if Rbase (Value) /= 0 and then Denominator (Value) < 0 then
         Answer := To_U8 (IEEE_Float_64 (Sign * Num * Den));
      --  Otherwise compute the quotient

      else
         Answer := To_U8 (IEEE_Float_64 (Sign * Num / Den));
      end if;
      declare
         package U8_IO is new Ada.Text_IO.Modular_IO (U8);
         Answer_String : String (1 .. 20);
         First : Natural;
         Last  : Natural;
      begin
         U8_IO.Put (To => Answer_String, Item => Answer, Base => 16);
         First := Ada.Strings.Fixed.Index (Answer_String, "#");
         Last  := Ada.Strings.Fixed.Index (Answer_String, "#",
            Backward);
         Put (File, "float64(0x" & Answer_String (First + 1 .. Last - 1) &
            ")");
      end;

   end Emit_CP_Double;
   ----------------------------------------------------
   --  Add_Slashes
   --
   --  in case the string contains quotation marks,
   --  or slashes, precede them with slashes
   ----------------------------------------------------
   function To_Hex (C : Character) return String;

   function To_Hex (C : Character) return String is
      Result : String (1 .. 6);
   begin
      Put (To => Result, Item => Character'Pos (C), Base => 16);
      if Result (4) = '#' then
         Result (4) := '0';
      end if;
      return Result (4 .. 5);
   end To_Hex;

   function Byte_Array (Str : String) return String;

   function Byte_Array (Str : String) return String is
      Result : String (1 .. Str'Length * 6);
      Counter : Natural := 1;
   begin
      for I in Str'Range loop
         Result (Counter .. Counter + 5) := To_Hex (Str (I)) & " 00 ";
         Counter := Counter + 6;
      end loop;
      return Result;
   end Byte_Array;

   function Add_Slashes (Str : String) return String;

   function Add_Slashes (Str : String) return String is
      Result : String (1 .. Str'Length * 2);
      Last   : Natural := 0;
      Is_Binary : Boolean := False;
   begin
      for I in Str'Range loop
         if not (Is_Graphic (Str (I))) and Str (I) /= ASCII.LF and
            Str (I) /= ASCII.CR and Str (I) /= ASCII.HT then
            Is_Binary := True;
         end if;
      end loop;
      for I in Str'Range loop
         if Str (I) = '"' or Str (I) = '\' or Str (I) = ''' or
            Str (I) = '?' then
            Last := Last + 1;
            Result (Last) := '\';
            Last := Last + 1;
            Result (Last) := Str (I);
         elsif Str (I) = ASCII.HT then
            Last := Last + 1;
            Result (Last) := '\';
            Last := Last + 1;
            Result (Last) := 't';
         elsif Str (I) = ASCII.LF then
            Last := Last + 1;
            Result (Last) := '\';
            Last := Last + 1;
            Result (Last) := 'n';
         elsif Str (I) = ASCII.CR then
            Last := Last + 1;
            Result (Last) := '\';
            Last := Last + 1;
            Result (Last) := 'r';
         elsif Is_Graphic (Str (I)) then
            Last := Last + 1;
            Result (Last) := Str (I);
         end if;
      end loop;
      if not Is_Binary then
         return '"' & Result (1 .. Last) & '"';
      else
         return "bytearray(" & Byte_Array (Str) & ") // " & Result (1 .. Last);
      end if;
   end Add_Slashes;

   procedure Emit_Code_Sequence
     (File : Ada.Text_IO.File_Type; Method : Method_Id;
      Method_Seq : Code_Sequence)
   is
      Instr        : Instr_Id          := First (Method_Seq);
      MSIL_Instr   : JVM.Code.Instruction;
      pragma Warnings (Off, Method);
   begin
      while Instr /= Null_Instr loop
         MSIL_Instr := Get (Instr);
         if MSIL_Instr.Op = NOP then
            if MSIL_Instr.Line_Number /= No_Location then
               Put (File, "      .line");
               Put (File, Integer'Image (Integer (
                  Sinput.Get_Physical_Line_Number (
                           MSIL_Instr.Line_Number))));
               Put_Line (File, " '" & Translate_File_Name (Full_File_Name (
                  Get_Source_File_Index (MSIL_Instr.Line_Number))) & "'");
            end if;
            if MSIL_Instr.Label_Def /= Null_Label then
               Put (File, "   L");
               Put (File, Label_Number (MSIL_Instr.Label_Def), 0);
               Put_Line (File, ":");
            end if;
         end if;
         if MSIL_Instr.Op /= NOP then
            Put (File, "      ");
         end if;

         --  these instructions need to be output after something, or
         --  may be changed altogether (as a multi-dimensional array
         --  is done by a call to a class constructor)
         if MSIL_Instr.Op /= NEWARR and MSIL_Instr.Op /= SWITCH and
            MSIL_Instr.Op /= NOP and MSIL_Instr.Op /= CALL and
            MSIL_Instr.Op /= LDFLD and MSIL_Instr.Op /= STFLD and
            MSIL_Instr.Op /= LDFLDA and
            MSIL_Instr.Op /= MONITORENTER and MSIL_Instr.Op /= MONITOREXIT and
            MSIL_Instr.Op /= LDSFLD and MSIL_Instr.Op /= STSFLD then
            Put (File, Image (MSIL_Instr.Op));
         end if;

         case MSIL_Instr.Op is
            when NOP =>
               null;
            when BREAK .. STLOC_3 =>
               New_Line (File); --  no parameters
            when LDARG_S .. STLOC_S =>
               Put (File, Integer'Image (
                  Integer (Local_Index (MSIL_Instr.Local))));
               New_Line (File); --  uint8 parameter
            when LDNULL .. LDC_I4_8 =>
               New_Line (File); --  no parameter
            when LDC_I4_S =>
               Put (File, " " & Integer'Image (
                  Integer (MSIL_Instr.Sint)));
               New_Line (File); --  int8 parameter
            when LDC_I4 =>
               Uintp.UI_Image (Pool_Integer (MSIL_Instr.Pool_Item), Decimal);
               Put (File, " " &
                  Uintp.UI_Image_Buffer (1 .. UI_Image_Length));
               New_Line (File); --  int32 parameter
            when LDC_I8 =>
               Uintp.UI_Image (Pool_Integer (MSIL_Instr.Pool_Item), Decimal);
               Put (File, " " &
                  Uintp.UI_Image_Buffer (1 .. UI_Image_Length));
               New_Line (File); --  int64 parameter
            when LDC_R4 =>
               Put (File, " ");
               Emit_CP_Float (File, Pool_Float (MSIL_Instr.Pool_Item));
               New_Line (File); --  float32 parameter
            when LDC_R8 =>
               Put (File, " ");
               Emit_CP_Double (File, Pool_Double (MSIL_Instr.Pool_Item));
               New_Line (File); --  float64 parameter
            when DUP .. POP =>
               New_Line (File); --  no parameter
            when JMP =>
               Put (File, " ");
               Put (File, External_Name (Name (MSIL_Instr.Target)));
               New_Line (File); --  method parameter (target)
            when CALL =>
               if External_Name (Name (Ref_Method (
                           MSIL_Instr.Pool_Item))) = "+" then
                  Put (File, "add ");
               else
                  Put (File, "call ");
                  if not Is_Static (Ref_Method (MSIL_Instr.Pool_Item)) then
                     Put (File, "instance ");
                  end if;
                  Put (File, Type_String (Result_Type (Ref_Method (
                       MSIL_Instr.Pool_Item))) & " ");
                  --  mcc: 05/17/06
                  --  Put (File, External_Name (Class (Ref_Method (
                  Put (File, Type_String (Type_Of (Class (Ref_Method (
                       MSIL_Instr.Pool_Item)))) & "::");
                  Put (File, External_Name (Name (Ref_Method (
                       MSIL_Instr.Pool_Item))));
                  Put (File, Params_String (Ref_Method (
                     MSIL_Instr.Pool_Item),
                     False));
               end if;
               New_Line (File); --  method parameter (pool)
            when CALLI =>
               pragma Assert (False);  --  requires fn pointer
               Put (File, " ");
               Put (File, Type_String (Result_Type (Ref_Method (
                    MSIL_Instr.Pool_Item))) & " ");
               Put (File, Type_String (Type_Of (Class (Ref_Method (
               --  mcc: 05/17/06
               --  Put (File, External_Name (Class (Ref_Method (
                    MSIL_Instr.Pool_Item)))) & "::");
               Put (File, External_Name (Name (Ref_Method (
                    MSIL_Instr.Pool_Item))));
               Put (File, Params_String (Ref_Method (MSIL_Instr.Pool_Item),
                  False));
               New_Line (File); --  signature parameter
            when RET =>
               New_Line (File); --  no parameter
            when BR_S .. BLT_UN_S =>
               pragma Assert (False);
               New_Line (File); --  int8 parameter
            when BR .. BLT_UN =>
               Put (File, " L");
               Put (File, Label_Number (MSIL_Instr.Target), 0);
               New_Line (File); --  label parameter
            when SWITCH =>
               declare
                  Switch_Pair    : Switch_Pair_Id;
                  This_Value     : Int_32;
                  Previous_Value : Int_32;
               begin
                  Switch_Pair := First_Pair (MSIL_Instr.Switch_Pairs);
                  Put_Line (File, "ldc.i4 " & Image (
                        Match_Value (Switch_Pair)));
                  Put_Line (File, "      sub");
                  Put_Line (File, "      switch (");
                  Put (File, "              L");
                  Put (File, Label_Number (Match_Label (
                     Switch_Pair)), 0);
                  Previous_Value := Match_Value (Switch_Pair);
                  loop
                     Switch_Pair := Next_Pair (Switch_Pair);
                     exit when Switch_Pair = Null_Switch_Pair;
                     This_Value := Match_Value (Switch_Pair);
                     --  mcc: fix on 3 Dec 2002
                     --  we have switch pairs for all values, so if
                     --  something is missing, it should go to the default
                     --  label
                     for i in 1 .. This_Value - Previous_Value - 1 loop
                        Put_Line (File, ",");
                        Put (File, "              L");
                        Put (File, Label_Number (MSIL_Instr.Default_Label),
                            0);
                     end loop;
                     Put_Line (File, ",");
                     Put (File, "              L");
                     Put (File, Label_Number (Match_Label (
                        Switch_Pair)), 0);
                     Previous_Value := This_Value;
                  end loop;
               end;
               Put_Line (File, ")");
               Free_Switch_List (MSIL_Instr.Switch_Pairs);
               Put (File, "      br L");
               Put (File, Label_Number (MSIL_Instr.Default_Label), 0);
               New_Line (File); --  bunch of label parameters
            when LDIND_I1 .. CONV_U8 =>
               New_Line (File); --  no parameter
            when CALLVIRT =>
               Put (File, " instance ");
               Put (File, Type_String (Result_Type (Ref_Method (
                    MSIL_Instr.Pool_Item))) & " ");
               --  mcc: 05/17/06
               --  Put (File, External_Name (Class (Ref_Method (
               Put (File, Type_String (Type_Of (Class (Ref_Method (
                    MSIL_Instr.Pool_Item)))) & "::");
               Put (File, External_Name (Name (Ref_Method (
                    MSIL_Instr.Pool_Item))));
               Put (File, Params_String (Ref_Method (MSIL_Instr.Pool_Item),
                  False));
               New_Line (File); --  method parameter
            when CPOBJ .. LDOBJ =>
               Put (File, " " & External_Name (Ref_Class (
                  MSIL_Instr.Pool_Item)));
               New_Line (File); --  class (valuetype) parameter
            when LDSTR =>
               Put (File, " ");
               Put_Line (File, Add_Slashes (
                  Str (Pool_String (MSIL_Instr.Pool_Item))));
               --  string parameter, quotes added by Add_Slashes if needed
               --  or maybe will by bytearray
            when NEWOBJ =>
               Put (File, " ");
               Put (File, " instance ");
               Put (File, Type_String (Result_Type (Ref_Method (
                    MSIL_Instr.Pool_Item))) & " ");
               --  mcc: 05/17/06
               --  Put (File, External_Name (Class (Ref_Method (
               Put (File, Type_String (Type_Of (Class (Ref_Method (
                    MSIL_Instr.Pool_Item)))) & "::");
               Put (File, External_Name (Name (Ref_Method (
                    MSIL_Instr.Pool_Item))));
               Put (File, Params_String (Ref_Method (MSIL_Instr.Pool_Item),
                  False));
               New_Line (File); --  method parameter
            when CASTCLASS .. ISINST | UNBOX =>
               Put (File, " ");
               if Is_Array_Type (MSIL_Instr.Pool_Item) then
                  Put (File, Type_String (Ref_Type (
                       MSIL_Instr.Pool_Item)));
               else
                  Put (File, External_Name (Ref_Class (
                       MSIL_Instr.Pool_Item)));
               end if;
               New_Line (File); --  type parameter
            when CONV_R_UN | THROW  =>
               New_Line (File); --  no parameter
            when LDFLD .. STSFLD =>
               if External_Name (Name (
                     MSIL_Instr.Field)) = "all" and then
                  External_Name (
                     MSIL_Instr.Class) = "[mgnat]mgnat.adalib.Acc" then
                  if MSIL_Instr.Op = LDFLD then
                     Put (File, "ldnull");
                  end if;
                  --  Put (File, Image (MSIL_Instr.Op));
                  --  Put (File, " object " &
                  --   "[mgnat]mgnat.adalib.Acc::all");
               else
                  Put (File, Image (MSIL_Instr.Op));
                  Put (File, " " & Type_String (Field_Type (
                     MSIL_Instr.Field)));
                  Put (File, " " & External_Name (
                     MSIL_Instr.Class));
                  Put (File, "::" & External_Name (Name (
                     MSIL_Instr.Field)));
               end if;
               New_Line (File); --  field parameter
            when STOBJ =>
               Put (File, " " & External_Name (Ref_Class (
                  MSIL_Instr.Pool_Item)));
               New_Line (File); --  type parameter
            when CONV_OVF_I1_UN .. CONV_OVF_U_UN =>
               New_Line (File); --  no parameter
            when BOX =>
               pragma Assert (False); -- not used
               null;
            when LDELEMA =>
               Put (File, " ");
               declare
                  X : Class_Id;
               begin
                  X := Class_Of_Type (Ref_Type (MSIL_Instr.Pool_Item));
                  Put (File, External_Name (X));
               exception when others =>
                  Put (File, External_Name (Name (Ref_Type (
                       MSIL_Instr.Pool_Item))));
               end;
               New_Line (File); --  no parameter
            when NEWARR =>
               if MSIL_Instr.Dimensions > 1 then
                  --  Put (File, "newobj instance void ");
                  --  put the type name on the stack and store it
                  --  in the array_constructor class
                  Put (File, "ldstr """);
                  declare
                     X : Class_Id;
                  begin
                     X := Class_Of_Type (MSIL_Instr.Element_Type);
                     declare
                        Y : constant String := External_Name (X);
                     begin
                        if Y = "Standard.String" then
                           Put (File, "System.Byte[]");
                        elsif Y = "unsigned int8[]" then
                           Put (File, "System.Byte[]");
                        else
                           Put (File, Y);
                        end if;
                     end;
                  exception when others =>
                     declare
                        Y : constant String := Type_String (
                          MSIL_Instr.Element_Type);
                     begin
                        if Y = "Standard.String" then
                           Put (File, "System.Byte[]");
                        elsif Y = "bool" then
                           Put (File, "System.Boolean");
                        elsif Y = "char" then
                           Put (File, "System.Char");
                        elsif Y = "int16" then
                           Put (File, "System.Int16");
                        elsif Y = "int32" then
                           Put (File, "System.Int32");
                        elsif Y = "float32" then
                           Put (File, "System.Single");
                        elsif Y = "float64" then
                           Put (File, "System.Double");
                        elsif Y = "unsigned int8" then
                           Put (File, "System.Byte");
                        elsif Y = "unsigned int8[]" then
                           Put (File, "System.Byte[]");
                        else
                           Put (File, Y);
                        end if;
                     end;
                  end;
                  Put_Line (File, """");
                  Put (File, "      ");
                  Put (File, "call void [mgnatcs]mgnat.adalib.");
                  Put (File, "array_constructor::set_type_name(string)");
                  New_Line (File);
                  Put (File, "      ");
                  Put (File, "call class [mscorlib]System.Array ");
                  Put (File, "[mgnatcs]mgnat.adalib.");
                  Put (File, "array_constructor::make_array(");
                  Put (File, Integer (MSIL_Instr.Dimensions - 1) * "int32,");
                  Put (File, "int32)");
                  New_Line (File);
                  Put (File, "      ");
                  Put (File, "castclass ");
                  declare
                     X : Class_Id;
                  begin
                     X := Class_Of_Type (MSIL_Instr.Element_Type);
                     Put (File, "class ");
                     declare
                        Y : constant String := External_Name (X);
                     begin
                        if Y /= "Standard.String" then
                           Put (File, Y);
                        else
                           Put (File, "unsigned int8[]");
                        end if;
                     end;
                  exception when others =>
                     declare
                        Y : constant String := Type_String (
                          MSIL_Instr.Element_Type);
                     begin
                        if Y /= "Standard.String" then
                           Put (File, Y);
                        else
                           Put (File, "unsigned int8[]");
                        end if;
                     end;
                  end;
                  Put (File, Integer (MSIL_Instr.Dimensions) * "[]");
                  New_Line (File);
                  --  Put (File, "::.ctor(");
                  --  Put (File, Integer (MSIL_Instr.Dimensions - 1) *
                  --     "int32,");
                  --  Put (File, "int32)");
               else
                  Put (File, "newarr ");
                  --  mcc: 2004-Apr-17
                  --  using an "if" here reduces extraneous assertion
                  --  failures which simplifies debugging
                  if Type_Kind (MSIL_Instr.Element_Type) = Class_Kind then
                     declare
                        X : Class_Id;
                     begin
                        X := Class_Of_Type (MSIL_Instr.Element_Type);
                        declare
                           Y : constant String := External_Name (X);
                        begin
                           if Y /= "Standard.String" then
                              Put (File, Y);
                           else
                              Put (File, "unsigned int8[]");
                           end if;
                        end;
                     end;
                  else
                     declare
                        Y : constant String := Type_String (
                             MSIL_Instr.Element_Type);
                     begin
                        if Y /= "Standard.String" then
                           Put (File, Y);
                        else
                           Put (File, "unsigned int8[]");
                        end if;
                     end;
                  end if;
               end if;
               New_Line (File); --  type parameter
            when LDLEN | LDELEM_I1 .. CONV_OVF_U8 | CKFINITE =>
               New_Line (File); --  no parameter
            when REFANYVAL | MKREFANY =>
               Put (File, " ");
               Put (File, External_Name (Ref_Class (
                    MSIL_Instr.Pool_Item)));
               New_Line (File); --  type parameter
            when LDTOKEN =>
               pragma Assert (False);
               New_Line (File); --  type/field/method parameter
            when CONV_U2 .. ENDFINALLY | STIND_I .. CLT_UN =>
               New_Line (File); --  no parameter
            when LEAVE =>
               if MSIL_Instr.Target /= Null_Label then
                  Put (File, " L");
                  Put (File, Label_Number (MSIL_Instr.Target), 0);
               else
                  Put (File, " Return");
               end if;
               New_Line (File); --  int32 parameter
            when LEAVE_S =>
               pragma Assert (False);
               New_Line (File); --  int8 parameter
            when LDFTN .. LDVIRTFTN =>
               if not Is_Static (Ref_Method (MSIL_Instr.Pool_Item)) then
                  Put (File, " instance ");
               else
                  Put (File, " ");
               end if;
               Put (File, Type_String (Result_Type (Ref_Method (
                    MSIL_Instr.Pool_Item))) & " ");
               Put (File, External_Name (Class (Ref_Method (
                    MSIL_Instr.Pool_Item))) & "::");
               Put (File, External_Name (Name (Ref_Method (
                    MSIL_Instr.Pool_Item))));
               Put (File, Params_String (Ref_Method (MSIL_Instr.Pool_Item),
                  False));
               New_Line (File); --  method parameter
            when LDARG .. STLOC =>
               Put (File, Integer'Image (
                  Integer (Local_Index (MSIL_Instr.Local))));
               New_Line (File); --  uint32 parameter
            when LOCALLOC .. ENDFILTER | VOLATILE .. TAIL |
               CPBLK .. RETHROW | REFANYTYPE =>
               New_Line (File); --  no parameter
            when UNALIGNED =>
               pragma Assert (False);
               New_Line (File); --  uint8 parameter
            when INITOBJ =>
               Put (File, " " & External_Name (Ref_Class (
                  MSIL_Instr.Pool_Item)));
               New_Line (File); --  type parameter
            when SIZEOF =>
               Put (File, " " & Type_String (Ref_Type (
                  MSIL_Instr.Pool_Item)));
               New_Line (File); --  type parameter
            when MONITORENTER =>
               Put (File,
                  "call void [mscorlib]System.Threading." &
                  "Monitor::Enter(object)");
               New_Line (File); --  object parameter
            when MONITOREXIT =>
               Put (File,
                  "call void [mscorlib]System.Threading." &
                  "Monitor::Exit(object)");
               New_Line (File); --  object parameter
            when others =>
               pragma Assert (False);
               New_Line (File); --  no parameter
         end case;
         Instr := MSIL_Instr.Next;
      end loop;
   end Emit_Code_Sequence;

   procedure Emit_Code
     (File : Ada.Text_IO.File_Type; Method : Method_Id)
   is
      Method_Seq  : Code_Sequence := Method_Code (Method);
      Local_Count : Integer := 0;
   begin
      --  mcc: 11/14/2004
      --  need to skip this for an Export Stdcall method
      if Exported_Stdcall (Method) /= No_String then
         Free_Sequence (Method_Seq);
         return;
      end if;

      Put_Line (File, "      .maxstack " &
         Integer'Image (Integer (Max_Stack_Depth (Method))));

      declare
         Param          : Local_Var_Id := First_Local_Var (Method);
         Is_First_Local : Boolean      := True;
      begin
         if not Is_Static (Method) then
            Param := Next_Local_Var (Param);
         end if;
         loop
            exit when Param = Null_Local_Var;

            if not Is_Param (Param) then
               if Is_First_Local then
                  Put (File, "      .locals init(");
                  Is_First_Local := False;
               else
                  Put (File, "      ");
               end if;

               --  On the JVM, the parameters are treated just like
               --  local variables, so the counter is offset by
               --  the number of parameters.  In MSIL, you need
               --  to restart the counter at zero, so I reset
               --  all of the local variable indices here
               Set_Local_Index (Param, Local_Variable_Index (Local_Count));
               Local_Count := Local_Count + 1;

               Put (File, "[");
               Put (File, Integer (Local_Index (Param)), 0);
               Put (File, "]");
               Put (File, Type_String (Type_Of (Param)));
               Put (File, " ");
               Put (File, External_Name (Name (Param)));
            end if;

            Param := Next_Local_Var (Param);

            if Param /= Null_Local_Var and then
               not Is_First_Local then
               Put_Line (File, ",");
            elsif not Is_First_Local then
               Put_Line (File, ")");
            end if;
         end loop;
      end;

      Emit_Code_Sequence (File, Method, Method_Seq);

      Generate_Handler_Entries (File, Method);

      --  Set the Line number attribute table and the Local_Variable
      --  table. This has to be done after the Generate_Code function

      --  Emit_Line_Numbers (Code_Info.Attributes, Method);
      --  Emit_Local_Variables (Code_Info, Method);

      Free_Sequence (Method_Seq);
   end Emit_Code;

   ------------------------------
   -- Generate_Handler_Entries --
   ------------------------------

   procedure Generate_Handler_Entries
     (File   : Ada.Text_IO.File_Type;
      Method : Method_Id)
   is
      Handler_Seq : Handler_Sequence := Method_Handlers (Method);
      Hdlr_Id     : Handler_Id       := First (Handler_Seq);
      Hdlr_Entry  : Handler_Entry;
   begin
      while Hdlr_Id /= Null_Handler loop
         Hdlr_Entry := Get (Hdlr_Id);

         Put (File, "      .try L");
         Put (File, Label_Number (Hdlr_Entry.Start_Lbl), 0);
         Put (File, " to L");
         Put (File, Label_Number (Hdlr_Entry.End_Lbl), 0);
         New_Line (File);
         if Hdlr_Entry.Kind = Non_Filter then
            Put (File, "         catch ");
            if Hdlr_Entry.Exc_Class = Null_Pool_Item then
               Put_Line (File, "[mscorlib]System.Exception");
            else
               Put_Line (File,
                  External_Name (Ref_Class (Hdlr_Entry.Exc_Class)));
            end if;
         else
            Put (File, "            filter L");
            Put (File, Label_Number (Hdlr_Entry.Filter_Lbl), 0);
         end if;
         Put (File, "            handler L");
         Put (File, Label_Number (Hdlr_Entry.Handler_Lbl), 0);
         Put (File, " to L");
         Put (File, Label_Number (Hdlr_Entry.End_Handler_Lbl), 0);
         New_Line (File);
         Hdlr_Id := Hdlr_Entry.Next;
      end loop;

      if First (Handler_Seq) /= Null_Handler then
         Put_Line (File, "Return:");
         if Result_Type (Method) /= Void_Type then
            Put_Line (File, "      ldloc _retval");
         end if;
         Put_Line (File, "      ret");
      end if;
      Free_Sequence (Handler_Seq);
   end Generate_Handler_Entries;

   function Extract_Library (Subp : in String) return String;
   --  get the library of [library]subprogram

   function Extract_Library (Subp : in String) return String is
      Loc1, Loc2 : Integer;
   begin
      Loc1 := Index (Subp, "[");
      Loc2 := Index (Subp, "]");
      return Subp (Loc1 + 1 .. Loc2 - 1);
   end Extract_Library;

   procedure Emit_Method (File : Ada.Text_IO.File_Type; Method : Method_Id) is
      --  Method_Info : Member_Info;

   begin

      Put (File, "   .method ");

      case Access_Mode (Method) is
         when Public_Access =>
            Put (File, "public ");
         when Package_Access =>
            Put (File, "assembly ");
         when Protected_Access =>
            Put (File, "famorassem ");
         when Private_Access =>
            Put (File, "private ");
      end case;

      --  mcc: 11/14/04
      if Exported_Stdcall (Method) /= No_String then
         Put (File, "hidebysig ");
      end if;

      if Is_Abstract (Method) then
         Put (File, "abstract ");
      end if;

      if Is_Static (Method) then
         Put (File, "static ");
      elsif Name_String (Name (Method)) = ".ctor" then
         Put (File, "specialname instance ");
      else
         Put (File, "virtual instance ");
      end if;

      if Is_Final (Method) then
         Put (File, "final ");
      end if;

      if Is_Synchronized (Method) then
         Put (File, "synchronized ");
      end if;

      --  mcc: 11/14/04
      if Exported_Stdcall (Method) /= No_String then
         Put (File, "pinvokeimpl(""" &
            Extract_Library (Str (Exported_Stdcall (Method))) &
            """ winapi) ");
      end if;

      Put (File, Type_String (Result_Type (Method)) & " ");
      Put (File, Check_Reserved (Name_String (Name (Method))));

      Put (File, Params_String (Method));

      --  mcc: 11/14/04
      if Exported_Stdcall (Method) /= No_String then
         Put (File, " cil managed preservesig");
      end if;

      Put_Line (File, " { ");

      if Name_String (Name (Method)) = "main" then
         Put_Line (File, "      .entrypoint");
      end if;

      if Is_Abstract (Method) then
         null;
      --  Nonabstract methods have two attributes: one for their associated
      --  bytecode and the other to indicate the set of exceptions that are
      --  thrown by the method (which we currently treat as empty and which
      --  is not enforced by the JVM in any case).

      else
         Emit_Code (File, Method);
         null;

      end if;
      Put_Line (File, "   }");
   end Emit_Method;

   function Needs_Namespace (X : in String) return Boolean;
   function Namespace_Of (X : in String) return String;
   function Trim_Namespace (X : in String) return String;

   function Needs_Namespace (X : in String) return Boolean is
   begin
      return Index (X, ".") >= X'First;
   end Needs_Namespace;

   function Namespace_Of (X : in String) return String is
      Where : Natural;
   begin
      Where := Index (X, ".", Backward);
      return X (X'First .. Where - 1);
   end Namespace_Of;

   function Trim_Namespace (X : in String) return String is
      Where : Natural;
   begin
      Where := Index (X, ".", Backward);
      return X (Where + 1 .. X'Last);
   end Trim_Namespace;

   --------------------------------------------------------------------------
   --  code provided by Rob Veenker
   --------------------------------------------------------------------------
   procedure Emit_Assembly_Info (To_File      : in Ada.Text_IO.File_Type;
                                 AssemblyName : in String);
   procedure Emit_Assembly_Info (To_File      : in Ada.Text_IO.File_Type;
                                 AssemblyName : in String) is
   begin
      declare
         Info_File : Ada.Text_IO.File_Type;
         Line      : String (1 .. 500);
         Last      : Natural;
         Fullspec  : Boolean := False;
      begin
         Open (Info_File, In_File, "assemblyinfo");
         Get_Line (Info_File, Line, Last);
         --  The first line should be ".assembly ....."
         if Last > 9 and then
           Line (1 .. 9) = ".assembly"
         then
            Fullspec := True;
         else
            --  No full assemblyspec (just contents)
            --  Create a default assembly header
            Put_Line (To_File, ".assembly " & AssemblyName & " {");
         end if;

         while not End_Of_File (Info_File) loop
            Put_Line (To_File, Line (1 .. Last));
            Get_Line (Info_File, Line, Last);
         end loop;

         Put_Line (To_File, Line (1 .. Last));
         if not Fullspec then
            Put_Line (To_File, " }");
         end if;

         Close (Info_File);
      exception
         when Name_Error
            | Mode_Error
            | Use_Error =>
            Put_Line (To_File, ".assembly " & AssemblyName & " {");
            Put_Line (To_File, "  .ver 0:0:0:0");
            Put_Line (To_File, " }");
      end;

   end Emit_Assembly_Info;

   procedure Produce_Class_File (Class : Class_Id) is
      C_Name   : constant String := Translate_File_Name (
         Unit_File_Name (Main_Unit));
      File : Ada.Text_IO.File_Type;
      Version_File : Ada.Text_IO.File_Type;
      Version_String : String (1 .. 30);
      Version_Length : Natural;
   begin
      begin
         Open (File => Version_File, Mode => In_File, Name =>
            "mscorlib_version.txt");
         Get_Line (File => Version_File, Item => Version_String,
            Last => Version_Length);
         Close (File => Version_File);
      exception when others =>
         Version_String (1 .. 12) := ".ver 2:0:0:0";
         Version_Length := 12;
      end;

      if First_Class_Opened then
         Create (File => File, Mode => Out_File, Name =>
            C_Name (C_Name'First .. C_Name'Last - 4) & ".il");
         First_Class_Opened := False;
      else
         Open (File => File, Mode => Append_File, Name =>
            C_Name (C_Name'First .. C_Name'Last - 4) & ".il");
      end if;

      Generate_External_Assemblies (File);

      if Opt.Compact_Framework = False then
         Put_Line (File, ".assembly extern mscorlib");
         Put_Line (File, "{");
         Put_Line (File, "  .publickeytoken = (B7 7A 5C 56 19 34 E0 89)");
      else
         Put_Line (File, ".assembly extern mscorlib");
         Put_Line (File, "{");
         Put_Line (File, "  .publickeytoken = (96 9D B8 05 3D 33 22 AC)");
      end if;
      --  Put_Line (File, "  .ver 1:0:5000:0");
      Put_Line (File, "   " & Version_String (1 .. Version_Length));
      Put_Line (File, "}");
      if not Opt.GNAT_Mode then
         Put_Line (File, ".assembly extern mgnat { ");
         Put_Line (File,
                ".publickeytoken = (71 3d 01 75 fa 8f be f8)");
         Put_Line (File,
          ".ver 3:02:0:0");
         Put_Line (File, " }");
      end if;
      Put_Line (File, ".assembly extern mgnatcs { ");
      Put_Line (File,
                ".publickeytoken = (71 3d 01 75 fa 8f be f8)");
      Put_Line (File,
          ".ver 3:02:0:0");
      Put_Line (File, " }");
--      Put_Line (File, ".assembly extern vjslib { ");
--      Put_Line (File,
--         ".publickey = (00 24 00 00 04 80 00 00 94 00 00 00 06 02 00 00");
--      Put_Line (File,
--         "       00 24 00 00 52 53 41 31 00 04 00 00 01 00 01 00  ");
--      Put_Line (File,
--         "       07 D1 FA 57 C4 AE D9 F0 A3 2E 84 AA 0F AE FD 0D  ");
--      Put_Line (File,
--         "       E9 E8 FD 6A EC 8F 87 FB 03 76 6C 83 4C 99 92 1E  ");
--      Put_Line (File,
--         "       B2 3B E7 9A D9 D5 DC C1 DD 9A D2 36 13 21 02 90  ");
--      Put_Line (File,
--         "       0B 72 3C F9 80 95 7F C4 E1 77 10 8F C6 07 77 4F  ");
--      Put_Line (File,
--         "       29 E8 32 0E 92 EA 05 EC E4 E8 21 C0 A5 EF E8 F1  ");
--      Put_Line (File,
--         "       64 5C 4C 0C 93 C1 AB 99 28 5D 62 2C AA 65 2C 1D  ");
--      Put_Line (File,
--         "       FA D6 3D 74 5D 6F 2D E5 F1 7E 5E AF 0F C4 96 3D  ");
--      Put_Line (File,
--         "       26 1C 8A 12 43 65 18 20 6D C0 93 34 4D 5A D2 93 )");
--      Put_Line (File,
--         ".ver 1:0:3300:0 }");
      if C_Name'Length > 4 and then
        C_Name (C_Name'First .. C_Name'First + 1) = "b~" then
         Emit_Assembly_Info (File,
                             C_Name (C_Name'First + 2 .. C_Name'Last - 4));
      end if;
      if Needs_Namespace (Name_String (Name (Class))) then
         Put_Line (File, ".namespace " & Namespace_Of (
            Name_String (Name (Class))) & " {");
      end if;
      Put (File, ".class ");
      if Is_Public (Class) then
         Put (File, "public ");
      end if;

      if Is_Final (Class) then
         Put (File, "sealed ");
      end if;

      if Is_Interface (Class) then
         Put (File, "interface ");
      end if;

      if Is_Abstract (Class) then
         Put (File, "abstract ");
      end if;

      Put (File, "serializable ");

      Put_Line (File, Check_Reserved (Trim_Namespace
         (Name_String (Name (Class)))));

      --  mcc: 08/29/05 interfaces don't extend anything
      if not Is_Interface (Class) then
         Put (File, "   extends " &
            External_Name (Superclass (Class)));
      end if;

      --  Step: Establish references to all implemented interfaces

      declare
         Interface_Ref : JVM_Entity_Ref := First_Interface_Ref (Class);

      begin
         if Interface_Ref /= Null_Entity_Ref then
            New_Line (File);
            Put (File, "   implements ");
            --  Add a reference to interfaces implemented by this class
            Put (File, External_Name (Get_Interface (Interface_Ref)));

            loop
               Interface_Ref := Next_Interface_Ref (Interface_Ref);
               exit when Interface_Ref = Null_Entity_Ref;
               Put_Line (File, ",");
               Put (File, "         " &
                     External_Name (Get_Interface (Interface_Ref)));
            end loop;
            New_Line (File);
         end if;
      end;
      Put_Line (File, " {");

      Put_Line (File,
         "   .language '{DC5FBC71-139A-4072-826F-E87E4E42CD5F}'");
      --  Step: Emit fields

      declare
         Field : Field_Id := First_Field (Class);

      begin
         --  mcc: (08/31/05) interfaces don't have fields
         --  the front end will add a tag to them
         --  and I probably should try to fix it there
         --  but it is much easier to do here.
         while Field /= Null_Field and not Is_Interface (Class) loop
            Emit_Field (File => File, Field => Field);
            Field := Next_Field (Field);
         end loop;

      end;

      --  Step 7: Emit method info

      declare
         Method : Method_Id := First_Method (Class);

      begin

         while Method /= Null_Method loop
            --  Takes care of emitting code and exception tables
            --  for each method.

            Emit_Method (File, Method);
            Method := Next_Method (Method);
         end loop;

      end;

      Put_Line (File, "}");
      if Needs_Namespace (Name_String (Name (Class))) then
         Put_Line (File, "}");
      end if;
      Close (File => File);
   end Produce_Class_File;
end JVM.MSIL_Emit;
