with AI302.Containers;
with AI302.Containers.Vectors;

package body Ada_Dot_Net_DLL_Package is

   package My_Int_Vector_Package is new AI302.Containers.Vectors (Index_Type => Natural, Element_Type => Natural);
   subtype My_Vector_Type is My_Int_Vector_Package.Vector_Type;
   
   Vector : My_Vector_Type;
   
   ---------
   -- Foo --
   ---------

   function Foo return Integer is
   begin
      return 69;
   end Foo;

end Ada_Dot_Net_DLL_Package;

