with Ada.Strings.Unbounded;

package Test is

private

   subtype Unbounded_String is Ada.Strings.Unbounded.Unbounded_String;

   use type Unbounded_String;

   function "+"
     (S : in String)
     return Unbounded_String
     renames Ada.Strings.Unbounded.To_Unbounded_String;

   function "+"
     (S : in Unbounded_String)
     return String
     renames Ada.Strings.Unbounded.To_String;

   Empty_String : constant Unbounded_String
     := Ada.Strings.Unbounded.Null_Unbounded_String;

end Test;
