attrib -r *.a*
del *.ali
del mssyst*.ads
del micro*.ads

rem set fw_dir="c:\Program Files\Microsoft Visual Studio .NET 2003\CompactFrameWorkSDK\v1.0.5000\Windows CE"
set fw_dir="c:\Program Files\Microsoft Visual Studio 8\SmartDevices\SDK\CompactFramework\2.0\v2.0\WindowsCE"

copy/y %fw_dir%\mscorlib.dll" .
copy/y %fw_dir%\system.dll" .
copy/y %fw_dir%\system.xml.dll" .

msil2ada %fw_dir%\System.dll -compact
msil2ada %fw_dir%\System.Windows.Forms.dll -compact
msil2ada compact_mscorlib
msil2ada %fw_dir%\System.Drawing.dll -compact
msil2ada %fw_dir%\Microsoft.Windowsce.Forms.dll -compact
