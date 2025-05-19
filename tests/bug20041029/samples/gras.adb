with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Generic_Elementary_Functions;
use Ada.Numerics;

with Numerics;

procedure Gras is

   type Real is digits 15;

   package Math       is new Ada.Numerics.Generic_Elementary_Functions (Real);
   package Real_IO    is new Ada.Text_IO.Float_IO (Real);
   package R_Numerics is new Numerics (Real);
   use Math; use Real_IO; use R_Numerics;

   Sigma : Real;

   function F (Sigma : Real) return Real is
   begin
      return Sigma * (1.0 - Sigma ** 2) + (1.0 - 2.0 * Sigma ** 2) *
        Arccos (Sigma) - Pi / 4.0;
   end F;

   function Guess is new Regula_Falsi (F);

begin
   Sigma := Guess (0.5, 0.6, Real'Model_Epsilon);
   Put (Sigma, 2, 9, 2);
   Put ("   ");
   Put (F (Sigma), 2, 9, 2);
   New_Line;
end Gras;



