cd ..\src\lib
csc /t:library /out:mgnatcs.dll /R:..\..\dll\mgnat.dll *.cs
cd ..\..\dll
copy ..\src\lib\mgnatcs.dll  .
gacutil /if mgnatcs.dll
