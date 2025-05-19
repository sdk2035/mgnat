
--
--  GUITARE Project
--
--  $Id: page_definition.adb,v 1.10 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with Defines;

package body Page_Definition is

   ------------------
   -- Print_Header --
   ------------------

   procedure Print_Header (Output : in Text_IO.File_Type) is
   begin
      Text_IO.New_Line (Output);
      Text_IO.Put (Output,
                   "GUITARE " & Defines.Version &
                   "  -  Pascal Obry - 1992-2000");
      Text_IO.Set_Col (Output, 72);
      Text_IO.Put (Output, "Page " &
                   Text_IO.Positive_Count'Image (Text_IO.Page (Output)));
      Text_IO.New_Line (Output, 3);
   end Print_Header;

end Page_Definition;
