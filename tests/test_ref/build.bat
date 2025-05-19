cd test_ref_cs/bin/debug
msil2ada test_ref_cs.dll
cd ../../..
cp test_ref_cs/bin/debug/test_ref_cs.dll  .
..\..\bin\mgnat.exe -Itest_ref_cs/bin/debug -c test_access_int.adb
..\..\bin\mgnatmake.exe -Itest_ref_cs/bin/debug test_access_int
