# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/cenkerkaraors/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.5233.144/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/cenkerkaraors/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/193.5233.144/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cenkerkaraors/CLionProjects/CS321_LabHigher

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cenkerkaraors/CLionProjects/CS321_LabHigher/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CS321_LabHigher.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CS321_LabHigher.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CS321_LabHigher.dir/flags.make

CMakeFiles/CS321_LabHigher.dir/main.cpp.o: CMakeFiles/CS321_LabHigher.dir/flags.make
CMakeFiles/CS321_LabHigher.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cenkerkaraors/CLionProjects/CS321_LabHigher/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CS321_LabHigher.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CS321_LabHigher.dir/main.cpp.o -c /home/cenkerkaraors/CLionProjects/CS321_LabHigher/main.cpp

CMakeFiles/CS321_LabHigher.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CS321_LabHigher.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cenkerkaraors/CLionProjects/CS321_LabHigher/main.cpp > CMakeFiles/CS321_LabHigher.dir/main.cpp.i

CMakeFiles/CS321_LabHigher.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CS321_LabHigher.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cenkerkaraors/CLionProjects/CS321_LabHigher/main.cpp -o CMakeFiles/CS321_LabHigher.dir/main.cpp.s

# Object files for target CS321_LabHigher
CS321_LabHigher_OBJECTS = \
"CMakeFiles/CS321_LabHigher.dir/main.cpp.o"

# External object files for target CS321_LabHigher
CS321_LabHigher_EXTERNAL_OBJECTS =

CS321_LabHigher: CMakeFiles/CS321_LabHigher.dir/main.cpp.o
CS321_LabHigher: CMakeFiles/CS321_LabHigher.dir/build.make
CS321_LabHigher: CMakeFiles/CS321_LabHigher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cenkerkaraors/CLionProjects/CS321_LabHigher/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CS321_LabHigher"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CS321_LabHigher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CS321_LabHigher.dir/build: CS321_LabHigher

.PHONY : CMakeFiles/CS321_LabHigher.dir/build

CMakeFiles/CS321_LabHigher.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CS321_LabHigher.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CS321_LabHigher.dir/clean

CMakeFiles/CS321_LabHigher.dir/depend:
	cd /home/cenkerkaraors/CLionProjects/CS321_LabHigher/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cenkerkaraors/CLionProjects/CS321_LabHigher /home/cenkerkaraors/CLionProjects/CS321_LabHigher /home/cenkerkaraors/CLionProjects/CS321_LabHigher/cmake-build-debug /home/cenkerkaraors/CLionProjects/CS321_LabHigher/cmake-build-debug /home/cenkerkaraors/CLionProjects/CS321_LabHigher/cmake-build-debug/CMakeFiles/CS321_LabHigher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CS321_LabHigher.dir/depend

