
--
--  GUITARE Project
--
--  $Id: page_definition.ads,v 1.8 2000/09/09 15:43:47 obry Exp $
--
--  Copyright 1992-2000 - Pascal Obry
--
--  e-mail : p.obry@wanadoo.fr
--
--  There is no warranty comming with this software, use it at your own risk.
--

with Text_IO;

package Page_Definition is

   --  this value should be 66 for US letter format and 72 for A4 format.
   Page_Length : constant Integer := 66;

   procedure Print_Header (Output : in Text_IO.File_Type);

end Page_Definition;
