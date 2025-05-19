with Pkg.Proc;
package body Pkg is

   procedure dummy is
   begin
      -- generates 'Multiple .entrypoint declarations'
      Pkg.Proc;
   end dummy;

end Pkg;