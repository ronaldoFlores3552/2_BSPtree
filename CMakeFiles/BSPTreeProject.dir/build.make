# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree

# Include any dependencies generated for this target.
include CMakeFiles/BSPTreeProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BSPTreeProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BSPTreeProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BSPTreeProject.dir/flags.make

CMakeFiles/BSPTreeProject.dir/main.cpp.o: CMakeFiles/BSPTreeProject.dir/flags.make
CMakeFiles/BSPTreeProject.dir/main.cpp.o: main.cpp
CMakeFiles/BSPTreeProject.dir/main.cpp.o: CMakeFiles/BSPTreeProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BSPTreeProject.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BSPTreeProject.dir/main.cpp.o -MF CMakeFiles/BSPTreeProject.dir/main.cpp.o.d -o CMakeFiles/BSPTreeProject.dir/main.cpp.o -c /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/main.cpp

CMakeFiles/BSPTreeProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BSPTreeProject.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/main.cpp > CMakeFiles/BSPTreeProject.dir/main.cpp.i

CMakeFiles/BSPTreeProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BSPTreeProject.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/main.cpp -o CMakeFiles/BSPTreeProject.dir/main.cpp.s

CMakeFiles/BSPTreeProject.dir/Line.cpp.o: CMakeFiles/BSPTreeProject.dir/flags.make
CMakeFiles/BSPTreeProject.dir/Line.cpp.o: Line.cpp
CMakeFiles/BSPTreeProject.dir/Line.cpp.o: CMakeFiles/BSPTreeProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BSPTreeProject.dir/Line.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BSPTreeProject.dir/Line.cpp.o -MF CMakeFiles/BSPTreeProject.dir/Line.cpp.o.d -o CMakeFiles/BSPTreeProject.dir/Line.cpp.o -c /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/Line.cpp

CMakeFiles/BSPTreeProject.dir/Line.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BSPTreeProject.dir/Line.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/Line.cpp > CMakeFiles/BSPTreeProject.dir/Line.cpp.i

CMakeFiles/BSPTreeProject.dir/Line.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BSPTreeProject.dir/Line.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/Line.cpp -o CMakeFiles/BSPTreeProject.dir/Line.cpp.s

CMakeFiles/BSPTreeProject.dir/Plane.cpp.o: CMakeFiles/BSPTreeProject.dir/flags.make
CMakeFiles/BSPTreeProject.dir/Plane.cpp.o: Plane.cpp
CMakeFiles/BSPTreeProject.dir/Plane.cpp.o: CMakeFiles/BSPTreeProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BSPTreeProject.dir/Plane.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BSPTreeProject.dir/Plane.cpp.o -MF CMakeFiles/BSPTreeProject.dir/Plane.cpp.o.d -o CMakeFiles/BSPTreeProject.dir/Plane.cpp.o -c /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/Plane.cpp

CMakeFiles/BSPTreeProject.dir/Plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BSPTreeProject.dir/Plane.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/Plane.cpp > CMakeFiles/BSPTreeProject.dir/Plane.cpp.i

CMakeFiles/BSPTreeProject.dir/Plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BSPTreeProject.dir/Plane.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/Plane.cpp -o CMakeFiles/BSPTreeProject.dir/Plane.cpp.s

CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.o: CMakeFiles/BSPTreeProject.dir/flags.make
CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.o: BSPTree.cpp
CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.o: CMakeFiles/BSPTreeProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.o -MF CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.o.d -o CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.o -c /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/BSPTree.cpp

CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/BSPTree.cpp > CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.i

CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/BSPTree.cpp -o CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.s

# Object files for target BSPTreeProject
BSPTreeProject_OBJECTS = \
"CMakeFiles/BSPTreeProject.dir/main.cpp.o" \
"CMakeFiles/BSPTreeProject.dir/Line.cpp.o" \
"CMakeFiles/BSPTreeProject.dir/Plane.cpp.o" \
"CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.o"

# External object files for target BSPTreeProject
BSPTreeProject_EXTERNAL_OBJECTS =

bin/BSPTreeProject: CMakeFiles/BSPTreeProject.dir/main.cpp.o
bin/BSPTreeProject: CMakeFiles/BSPTreeProject.dir/Line.cpp.o
bin/BSPTreeProject: CMakeFiles/BSPTreeProject.dir/Plane.cpp.o
bin/BSPTreeProject: CMakeFiles/BSPTreeProject.dir/BSPTree.cpp.o
bin/BSPTreeProject: CMakeFiles/BSPTreeProject.dir/build.make
bin/BSPTreeProject: CMakeFiles/BSPTreeProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable bin/BSPTreeProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BSPTreeProject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BSPTreeProject.dir/build: bin/BSPTreeProject
.PHONY : CMakeFiles/BSPTreeProject.dir/build

CMakeFiles/BSPTreeProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BSPTreeProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BSPTreeProject.dir/clean

CMakeFiles/BSPTreeProject.dir/depend:
	cd /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree /home/ronaldo/Escritorio/verano/EDA/laboratorio/2_BSPtree/CMakeFiles/BSPTreeProject.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BSPTreeProject.dir/depend

