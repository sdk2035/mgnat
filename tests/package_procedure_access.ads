package package_procedure_access is
   type proc_ptr is access procedure (x : in integer; z : in string);

   procedure tim(x : in integer; z : in string);
end package_procedure_access;