all : test_long_float Makefile

test_long_float : *.adb Makefile
	gnatmake test_long_float -cargs -gnatU -O2 -gnatn -largs -lm
	@echo --------
	@echo GNAT Ada
	@echo --------
	test_long_float
        mgnatmake.exe test_long_float
	@echo --------
	@echo A#
	@echo --------
	test_long_float

clean : 
	rm -f *.ali *.o *.il *.exe *~ b~* *.pdb

zip : clean
	zip test_long_float.zip *
