# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/clion-2016.3.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion-2016.3.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pilox/CLionProjects/ardumower

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pilox/CLionProjects/ardumower/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ardumower.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ardumower.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ardumower.dir/flags.make

CMakeFiles/ardumower.dir/src/main.cpp.o: CMakeFiles/ardumower.dir/flags.make
CMakeFiles/ardumower.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pilox/CLionProjects/ardumower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ardumower.dir/src/main.cpp.o"
	/home/pilox/.platformio/packages/toolchain-atmelavr/bin/avr-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ardumower.dir/src/main.cpp.o -c /home/pilox/CLionProjects/ardumower/src/main.cpp

CMakeFiles/ardumower.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ardumower.dir/src/main.cpp.i"
	/home/pilox/.platformio/packages/toolchain-atmelavr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pilox/CLionProjects/ardumower/src/main.cpp > CMakeFiles/ardumower.dir/src/main.cpp.i

CMakeFiles/ardumower.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ardumower.dir/src/main.cpp.s"
	/home/pilox/.platformio/packages/toolchain-atmelavr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pilox/CLionProjects/ardumower/src/main.cpp -o CMakeFiles/ardumower.dir/src/main.cpp.s

CMakeFiles/ardumower.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/ardumower.dir/src/main.cpp.o.requires

CMakeFiles/ardumower.dir/src/main.cpp.o.provides: CMakeFiles/ardumower.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/ardumower.dir/build.make CMakeFiles/ardumower.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/ardumower.dir/src/main.cpp.o.provides

CMakeFiles/ardumower.dir/src/main.cpp.o.provides.build: CMakeFiles/ardumower.dir/src/main.cpp.o


# Object files for target ardumower
ardumower_OBJECTS = \
"CMakeFiles/ardumower.dir/src/main.cpp.o"

# External object files for target ardumower
ardumower_EXTERNAL_OBJECTS =

ardumower: CMakeFiles/ardumower.dir/src/main.cpp.o
ardumower: CMakeFiles/ardumower.dir/build.make
ardumower: CMakeFiles/ardumower.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pilox/CLionProjects/ardumower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ardumower"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ardumower.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ardumower.dir/build: ardumower

.PHONY : CMakeFiles/ardumower.dir/build

CMakeFiles/ardumower.dir/requires: CMakeFiles/ardumower.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/ardumower.dir/requires

CMakeFiles/ardumower.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ardumower.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ardumower.dir/clean

CMakeFiles/ardumower.dir/depend:
	cd /home/pilox/CLionProjects/ardumower/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pilox/CLionProjects/ardumower /home/pilox/CLionProjects/ardumower /home/pilox/CLionProjects/ardumower/cmake-build-debug /home/pilox/CLionProjects/ardumower/cmake-build-debug /home/pilox/CLionProjects/ardumower/cmake-build-debug/CMakeFiles/ardumower.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ardumower.dir/depend

