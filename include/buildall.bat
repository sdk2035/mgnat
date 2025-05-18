attrib -r *.a*
del *.ali 
del mssyst*.ads
del micro*.ads

rem set fw_dir="c:\winnt\microsoft.net\framework\v1.1.4322"
set fw_dir="c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727"

msil2ada %fw_dir%\system.dll
msil2ada %fw_dir%\System.Windows.Forms.dll
msil2ada %fw_dir%\mscorlib.dll
msil2ada %fw_dir%\System.Drawing.dll