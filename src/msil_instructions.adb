with Ada.Characters.Handling;
use  Ada.Characters.Handling;
with Ada.Strings.Fixed;
use  Ada.Strings.Fixed;
with Ada.Strings.Maps;
use  Ada.Strings.Maps;

package body Msil_Instructions is

   -----------
   -- Image --
   -----------

   function Image (X : in Opcodes) return String is
      function Keyword_Translate(X : in String) return String is
      begin
         if X(X'Last-1..X'Last)="_k" then
            return X(X'First..X'Last-2);
         else
            return X;
         end if;
      end Keyword_Translate;
   begin
      return Keyword_Translate(Translate(
            Source  => To_Lower(Opcodes'Image(X)),
            Mapping => To_Mapping("_",".")));
   end Image;

end JVM.Msil_Instructions;

