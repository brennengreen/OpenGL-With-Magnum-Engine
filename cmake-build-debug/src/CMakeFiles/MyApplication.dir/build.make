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

# Include any dependencies generated for this target.
include src/CMakeFiles/MyApplication.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/MyApplication.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/MyApplication.dir/flags.make

src/resource_TexturedTriangle_RESOURCES.cpp: /usr/bin/corrade-rc
src/resource_TexturedTriangle_RESOURCES.cpp: src/resource_TexturedTriangle_RESOURCES.depends
src/resource_TexturedTriangle_RESOURCES.cpp: ../src/TexturedTriangleShader.frag
src/resource_TexturedTriangle_RESOURCES.cpp: ../src/TexturedTriangleShader.vert
src/resource_TexturedTriangle_RESOURCES.cpp: ../src/stone.tga
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling data resource file /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src/resource_TexturedTriangle_RESOURCES.cpp"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/src && /usr/bin/corrade-rc TexturedTriangle_RESOURCES resources.conf /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src/resource_TexturedTriangle_RESOURCES.cpp

src/CMakeFiles/MyApplication.dir/MyApplication.cpp.o: src/CMakeFiles/MyApplication.dir/flags.make
src/CMakeFiles/MyApplication.dir/MyApplication.cpp.o: ../src/MyApplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/MyApplication.dir/MyApplication.cpp.o"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyApplication.dir/MyApplication.cpp.o -c /home/drey/Extra-Bin/magnum-bootstrap-base/src/MyApplication.cpp

src/CMakeFiles/MyApplication.dir/MyApplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyApplication.dir/MyApplication.cpp.i"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/drey/Extra-Bin/magnum-bootstrap-base/src/MyApplication.cpp > CMakeFiles/MyApplication.dir/MyApplication.cpp.i

src/CMakeFiles/MyApplication.dir/MyApplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyApplication.dir/MyApplication.cpp.s"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/drey/Extra-Bin/magnum-bootstrap-base/src/MyApplication.cpp -o CMakeFiles/MyApplication.dir/MyApplication.cpp.s

src/CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.o: src/CMakeFiles/MyApplication.dir/flags.make
src/CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.o: ../src/TexturedTriangleShader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.o"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.o -c /home/drey/Extra-Bin/magnum-bootstrap-base/src/TexturedTriangleShader.cpp

src/CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.i"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/drey/Extra-Bin/magnum-bootstrap-base/src/TexturedTriangleShader.cpp > CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.i

src/CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.s"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/drey/Extra-Bin/magnum-bootstrap-base/src/TexturedTriangleShader.cpp -o CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.s

src/CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.o: src/CMakeFiles/MyApplication.dir/flags.make
src/CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.o: src/resource_TexturedTriangle_RESOURCES.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.o"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.o -c /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src/resource_TexturedTriangle_RESOURCES.cpp

src/CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.i"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src/resource_TexturedTriangle_RESOURCES.cpp > CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.i

src/CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.s"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src/resource_TexturedTriangle_RESOURCES.cpp -o CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.s

# Object files for target MyApplication
MyApplication_OBJECTS = \
"CMakeFiles/MyApplication.dir/MyApplication.cpp.o" \
"CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.o" \
"CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.o"

# External object files for target MyApplication
MyApplication_EXTERNAL_OBJECTS =

src/MyApplication: src/CMakeFiles/MyApplication.dir/MyApplication.cpp.o
src/MyApplication: src/CMakeFiles/MyApplication.dir/TexturedTriangleShader.cpp.o
src/MyApplication: src/CMakeFiles/MyApplication.dir/resource_TexturedTriangle_RESOURCES.cpp.o
src/MyApplication: src/CMakeFiles/MyApplication.dir/build.make
src/MyApplication: /usr/lib/libMagnumSdl2Application.a
src/MyApplication: /usr/lib/libMagnumGL.so
src/MyApplication: /usr/lib/libMagnum.so
src/MyApplication: /usr/lib/libMagnumTrade.so
src/MyApplication: /usr/lib/x86_64-linux-gnu/libSDL2-2.0.so
src/MyApplication: /usr/lib/x86_64-linux-gnu/libGLX.so
src/MyApplication: /usr/lib/x86_64-linux-gnu/libOpenGL.so
src/MyApplication: /usr/lib/libMagnum.so
src/MyApplication: /usr/lib/libCorradePluginManager.so
src/MyApplication: /usr/lib/libCorradeUtility.so
src/MyApplication: src/CMakeFiles/MyApplication.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable MyApplication"
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MyApplication.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/MyApplication.dir/build: src/MyApplication

.PHONY : src/CMakeFiles/MyApplication.dir/build

src/CMakeFiles/MyApplication.dir/clean:
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/MyApplication.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/MyApplication.dir/clean

src/CMakeFiles/MyApplication.dir/depend: src/resource_TexturedTriangle_RESOURCES.cpp
	cd /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drey/Extra-Bin/magnum-bootstrap-base /home/drey/Extra-Bin/magnum-bootstrap-base/src /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src /home/drey/Extra-Bin/magnum-bootstrap-base/cmake-build-debug/src/CMakeFiles/MyApplication.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/MyApplication.dir/depend

