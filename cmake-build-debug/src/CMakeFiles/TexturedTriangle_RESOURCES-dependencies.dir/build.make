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
CMAKE_COMMAND = /home/drey/clion-2020.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/drey/clion-2020.1.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/drey/Extra-Bin/magnum-bootstrap-base

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug

# Utility rule file for TexturedTriangle_RESOURCES-dependencies.

# Include the progress variables for this target.
include src/CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/progress.make

TexturedTriangle_RESOURCES-dependencies: src/CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/build.make

.PHONY : TexturedTriangle_RESOURCES-dependencies

# Rule to build all files generated by this target.
src/CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/build: TexturedTriangle_RESOURCES-dependencies

.PHONY : src/CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/build

src/CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/clean:
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/clean

src/CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/depend:
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drey/Extra-Bin/magnum-bootstrap-base /home/drey/Extra-Bin/magnum-bootstrap-base/src /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src/CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/TexturedTriangle_RESOURCES-dependencies.dir/depend
