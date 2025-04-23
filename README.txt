MGNAT
 
From: Martin C. Carlisle
      United States Air Force Academy
      Department of Computer Science

This tool is based on JGNAT, a no-longer supported GPL Ada to JVM compiler from Ada Core Technologies.  As such, it is also covered by the GNU General Public License.

Direct comments/bug reports to carlislem@acm.org

To register the DLLs:
cd dll
register_mgnat.bat

To build compiler from sources:
mgnat.exe, mgnatbind.exe, mgnatmake.exe, mgnatlink.exe
(edit makefile to reflect your directory structure)

cd src
make mgnat
make mgnatbind
make mgnatmake
make mgnatlink
(can do "make bin", but will fail on mgnatls)

This must be done using a UNIX shell, such as cygwin

To build the DLLs from sources:
(edit both makefile and jMakefile to reflect your directory structure)

cd src\lib
make lib
make lib_compact

To increment version number:
Change gnatvsn.ads in src
Change makefile, jmakefile in src, src\lib
Change a-aaaaaa.il and a-compact.il in src\lib
Change AssemblyInfo.cs in src\lib
build compiler in src (see above)
"make lib_compact lib" in src\lib