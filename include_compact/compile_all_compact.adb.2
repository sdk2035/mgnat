with Gnat.Directory_Operations;
with Ada.Command_Line;
use Ada.Command_Line;
with Gnat.Os_Lib;
with Ada.Text_Io;
use ada.Text_IO;

procedure Compile_All_Compact is 
   Directory   : Gnat.Directory_Operations.Dir_Type;  
   Command     : String                             := Ada.Command_Line.Command_Name;  
   Name        : String (1 .. 256);  
   Last        : Natural;  
   Attrib_Args : Gnat.Os_Lib.Argument_List (1 .. 2);  
   Success     : Boolean;  
   Args        : Gnat.Os_Lib.Argument_List (1 .. 4);  
begin
   Put_Line("clearing read-only bit");
   Attrib_Args(1) := new String'("-r");
   Attrib_Args(2) := new String'("*.ali");
   Gnat.Os_Lib.Spawn(
      Program_Name => "attrib.exe", 
      Args         => Attrib_Args,        
      Success      => Success);
   Args(1) := new String'("-c");
   Args(2) := new String'("-gnatX");
   Args(3) := new String'("-compact");
   Gnat.Directory_Operations.Open(
      Dir      => Directory,                                   
      Dir_Name => Gnat.Directory_Operations.Dir_Name (Command));
   loop
      Gnat.Directory_Operations.Read(
         Dir  => Directory, 
         Str  => Name,      
         Last => Last);
      exit when Last = 0;
      if Last>4 and then Name(Last-3..Last)=".ads" then
         Put_Line("compiling: " & Name(1..Last));
         Args(Args'Last) := new String'(Name(1..Last));
         Gnat.Os_Lib.Spawn(
            Program_Name => "mgnat.exe", 
            Args         => Args,        
            Success      => Success);
      end if;
   end loop;
   Put_Line("setting read-only bit");
   Attrib_Args(1) := new String'("+r");
   Gnat.Os_Lib.Spawn(
      Program_Name => "attrib.exe", 
      Args         => Attrib_Args,        
      Success      => Success);
end Compile_All_Compact;

