# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/naci/uorg/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/naci/uorg/build

# Utility rule file for uorg_gennodejs.

# Include the progress variables for this target.
include uorg/CMakeFiles/uorg_gennodejs.dir/progress.make

uorg_gennodejs: uorg/CMakeFiles/uorg_gennodejs.dir/build.make

.PHONY : uorg_gennodejs

# Rule to build all files generated by this target.
uorg/CMakeFiles/uorg_gennodejs.dir/build: uorg_gennodejs

.PHONY : uorg/CMakeFiles/uorg_gennodejs.dir/build

uorg/CMakeFiles/uorg_gennodejs.dir/clean:
	cd /home/naci/uorg/build/uorg && $(CMAKE_COMMAND) -P CMakeFiles/uorg_gennodejs.dir/cmake_clean.cmake
.PHONY : uorg/CMakeFiles/uorg_gennodejs.dir/clean

uorg/CMakeFiles/uorg_gennodejs.dir/depend:
	cd /home/naci/uorg/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/naci/uorg/src /home/naci/uorg/src/uorg /home/naci/uorg/build /home/naci/uorg/build/uorg /home/naci/uorg/build/uorg/CMakeFiles/uorg_gennodejs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : uorg/CMakeFiles/uorg_gennodejs.dir/depend

