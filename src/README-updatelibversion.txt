To update library version:

1) Edit jvm-msil_emit.adb to replace 2:01:0:0 (e.g.) with the new version 
number for both mgnat and mgnatcs
2) make mgnat
3) cd lib
4) edit a-aaaaaa.il and a-compact.il to change version number
5) edit AssemblyInfo.cs to change version number
6) make lib lib_compact
7) make sure mgnat.exe is in the right place in the path before step 8
8) Recompile include folder

Other steps:
1) Rebuild msil2ada 
2) Rebuild RAPTOR (1st copy DLLs to RAPTOR folder, then open VS .NET)
3) Rebuild RAPID
