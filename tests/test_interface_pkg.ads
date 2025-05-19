package test_interface_pkg is
   x : integer; -- so we need this pkg

   type Int1 is interface;
   procedure Op1(This : in Int1) is abstract;
   procedure Op2(This : in Int1) is abstract;
   procedure Op3(This : in Int1) is abstract;
   type int1_ptr is access all int1'class;

   type T is tagged null record;
   type t_ptr is access all t'class;
   type T1 is new T and Int1 with record
      x : integer;
   end record;
   type T1_Ptr is access all T1'class;
   procedure Op1(This : in T1);
   procedure Op2(This : in T1);
   procedure Op3(This : in T1);

end test_interface_pkg;