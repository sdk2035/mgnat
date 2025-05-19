package Test_Exports is
   function Open_Graph_Window(Size : in Integer) return Integer;
   
   pragma Export(Stdcall,Open_Graph_Window,
      "[adagraph2001.dll]CreateGraphWindow");
      
end Test_Exports;

