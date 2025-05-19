Changed files:

bindgen.adb 2119,2152 (removed -lgnat and -static -lgnarl)
        removed import ada on booleans for elabs
        422 (change $ to .)
	2169 (change version constants to false)
checks.adb:695 (removed buggy new code??)
exp_attr.adb:1347 change '$' to '.' for MSIL
            1400 (make sure system.address_image is a function, not a package)
exp_ch3.adb:65 (with namet, j_string)
            562 (valuetype exclusion)
            1080 (valuetype exclusion)
            1972 (make sure init_proc is always called)
            2533 (valuetype exclusion)
            3306 (valuetype exclusion)
exp_ch5.adb:56 (with namet)
            1658 (valuetype exclusion)
            1703 (valuetype exclusion)
exp_util.adb DT position being set to a constant for "=" was messing me up
g-os_lib.ad[bs] (object suffix,...)
gnatbind.adb (add compact flag)
gnatlink.adb (add compact flag, change jgnat to mgnat)
gnatmake.adb (Object_List_File_Supported set to constant)
gnatvsn.ads (change version #)
hostparm.ads (change Java_VM to true)
make.adb:3829 (change to mgnat), 6964 (compact flag)
         don't add .EXE always
makeutl.adb
makeutl.ads
mlib.adb (comment out use of Interfaces.C.Strings)
mlib-prj.adb (don't add libgnarl)
opt.ads:244 (compact option), change Optimization_Level to no pragma (773)
osint.adb:387 (registry location)
              (add compact framework parameter)
   delete Relocate_Path body
osint.ads:534 (changed to .il)
sem_ch3.adb:917 (changed assert to if to resolve failure)
           (added code to make sure types are not frozen if being analyzed)
sem_ch4.adb:
            2099 (add auto convert of standard.string to sem_ch5.adb:53 (add with namet)
[mscorlib]system.string)
            4601 (mssyst.string.ref op +)
sem_ch5.adb (valuetype)
            325 (ok to assign to valuetype)
sem_ch6.adb:788,1151
sem_ch8.ads:89 (moved from .adb to .ads)
sem_prag.adb:82,3100,3203,6766,10071,10077,10084
sem_type.adb:44,627
sem_util.adb:(valuetype doesn't require transient scope)
snames.adb: (change 3 occurrences of java to msil)
switch-c.adb:101,123 (add -compact)
switch.adb: add -compact
