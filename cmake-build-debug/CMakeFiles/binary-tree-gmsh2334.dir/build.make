# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\binary-tree-gmsh2334.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\binary-tree-gmsh2334.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\binary-tree-gmsh2334.dir\flags.make

CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj: CMakeFiles\binary-tree-gmsh2334.dir\flags.make
CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/binary-tree-gmsh2334.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1413~1.261\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj /FdCMakeFiles\binary-tree-gmsh2334.dir\ /FS -c C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\main.cpp
<<

CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binary-tree-gmsh2334.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1413~1.261\bin\Hostx86\x86\cl.exe > CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\main.cpp
<<

CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binary-tree-gmsh2334.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1413~1.261\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\binary-tree-gmsh2334.dir\main.cpp.s /c C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\main.cpp
<<

CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj.requires:

.PHONY : CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj.requires

CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj.provides: CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\binary-tree-gmsh2334.dir\build.make /nologo -$(MAKEFLAGS) CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj.provides.build
.PHONY : CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj.provides

CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj.provides.build: CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj


# Object files for target binary-tree-gmsh2334
binary__tree__gmsh2334_OBJECTS = \
"CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj"

# External object files for target binary-tree-gmsh2334
binary__tree__gmsh2334_EXTERNAL_OBJECTS =

binary-tree-gmsh2334.exe: CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj
binary-tree-gmsh2334.exe: CMakeFiles\binary-tree-gmsh2334.dir\build.make
binary-tree-gmsh2334.exe: CMakeFiles\binary-tree-gmsh2334.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable binary-tree-gmsh2334.exe"
	"C:\Program Files\JetBrains\CLion 2018.1\bin\cmake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\binary-tree-gmsh2334.dir --manifests  -- C:\PROGRA~2\MICROS~2\2017\BUILDT~1\VC\Tools\MSVC\1413~1.261\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\binary-tree-gmsh2334.dir\objects1.rsp @<<
 /out:binary-tree-gmsh2334.exe /implib:binary-tree-gmsh2334.lib /pdb:C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\cmake-build-debug\binary-tree-gmsh2334.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\binary-tree-gmsh2334.dir\build: binary-tree-gmsh2334.exe

.PHONY : CMakeFiles\binary-tree-gmsh2334.dir\build

CMakeFiles\binary-tree-gmsh2334.dir\requires: CMakeFiles\binary-tree-gmsh2334.dir\main.cpp.obj.requires

.PHONY : CMakeFiles\binary-tree-gmsh2334.dir\requires

CMakeFiles\binary-tree-gmsh2334.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\binary-tree-gmsh2334.dir\cmake_clean.cmake
.PHONY : CMakeFiles\binary-tree-gmsh2334.dir\clean

CMakeFiles\binary-tree-gmsh2334.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334 C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334 C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\cmake-build-debug C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\cmake-build-debug C:\Users\GMSH\Desktop\AED\binary-tree-gmsh2334\cmake-build-debug\CMakeFiles\binary-tree-gmsh2334.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\binary-tree-gmsh2334.dir\depend

