# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/hayden/personal/ZMQ+ProtoMessageBasics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hayden/personal/ZMQ+ProtoMessageBasics/build

# Include any dependencies generated for this target.
include CMakeFiles/zmqsub.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/zmqsub.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/zmqsub.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/zmqsub.dir/flags.make

message.pb.h: /home/hayden/personal/ZMQ+ProtoMessageBasics/message.proto
message.pb.h: /usr/bin/protoc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/hayden/personal/ZMQ+ProtoMessageBasics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running cpp protocol buffer compiler on /home/hayden/personal/ZMQ+ProtoMessageBasics/message.proto"
	/usr/bin/protoc --cpp_out :/home/hayden/personal/ZMQ+ProtoMessageBasics/build -I /home/hayden/personal/ZMQ+ProtoMessageBasics /home/hayden/personal/ZMQ+ProtoMessageBasics/message.proto

message.pb.cc: message.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate message.pb.cc

enum.pb.h: /home/hayden/personal/ZMQ+ProtoMessageBasics/enum.proto
enum.pb.h: /usr/bin/protoc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/hayden/personal/ZMQ+ProtoMessageBasics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Running cpp protocol buffer compiler on /home/hayden/personal/ZMQ+ProtoMessageBasics/enum.proto"
	/usr/bin/protoc --cpp_out :/home/hayden/personal/ZMQ+ProtoMessageBasics/build -I /home/hayden/personal/ZMQ+ProtoMessageBasics /home/hayden/personal/ZMQ+ProtoMessageBasics/enum.proto

enum.pb.cc: enum.pb.h
	@$(CMAKE_COMMAND) -E touch_nocreate enum.pb.cc

CMakeFiles/zmqsub.dir/zmqsub.cc.o: CMakeFiles/zmqsub.dir/flags.make
CMakeFiles/zmqsub.dir/zmqsub.cc.o: /home/hayden/personal/ZMQ+ProtoMessageBasics/zmqsub.cc
CMakeFiles/zmqsub.dir/zmqsub.cc.o: CMakeFiles/zmqsub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hayden/personal/ZMQ+ProtoMessageBasics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/zmqsub.dir/zmqsub.cc.o"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/zmqsub.dir/zmqsub.cc.o -MF CMakeFiles/zmqsub.dir/zmqsub.cc.o.d -o CMakeFiles/zmqsub.dir/zmqsub.cc.o -c /home/hayden/personal/ZMQ+ProtoMessageBasics/zmqsub.cc

CMakeFiles/zmqsub.dir/zmqsub.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/zmqsub.dir/zmqsub.cc.i"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hayden/personal/ZMQ+ProtoMessageBasics/zmqsub.cc > CMakeFiles/zmqsub.dir/zmqsub.cc.i

CMakeFiles/zmqsub.dir/zmqsub.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/zmqsub.dir/zmqsub.cc.s"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hayden/personal/ZMQ+ProtoMessageBasics/zmqsub.cc -o CMakeFiles/zmqsub.dir/zmqsub.cc.s

CMakeFiles/zmqsub.dir/message.pb.cc.o: CMakeFiles/zmqsub.dir/flags.make
CMakeFiles/zmqsub.dir/message.pb.cc.o: message.pb.cc
CMakeFiles/zmqsub.dir/message.pb.cc.o: CMakeFiles/zmqsub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hayden/personal/ZMQ+ProtoMessageBasics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/zmqsub.dir/message.pb.cc.o"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/zmqsub.dir/message.pb.cc.o -MF CMakeFiles/zmqsub.dir/message.pb.cc.o.d -o CMakeFiles/zmqsub.dir/message.pb.cc.o -c /home/hayden/personal/ZMQ+ProtoMessageBasics/build/message.pb.cc

CMakeFiles/zmqsub.dir/message.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/zmqsub.dir/message.pb.cc.i"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hayden/personal/ZMQ+ProtoMessageBasics/build/message.pb.cc > CMakeFiles/zmqsub.dir/message.pb.cc.i

CMakeFiles/zmqsub.dir/message.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/zmqsub.dir/message.pb.cc.s"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hayden/personal/ZMQ+ProtoMessageBasics/build/message.pb.cc -o CMakeFiles/zmqsub.dir/message.pb.cc.s

CMakeFiles/zmqsub.dir/enum.pb.cc.o: CMakeFiles/zmqsub.dir/flags.make
CMakeFiles/zmqsub.dir/enum.pb.cc.o: enum.pb.cc
CMakeFiles/zmqsub.dir/enum.pb.cc.o: CMakeFiles/zmqsub.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/hayden/personal/ZMQ+ProtoMessageBasics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/zmqsub.dir/enum.pb.cc.o"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/zmqsub.dir/enum.pb.cc.o -MF CMakeFiles/zmqsub.dir/enum.pb.cc.o.d -o CMakeFiles/zmqsub.dir/enum.pb.cc.o -c /home/hayden/personal/ZMQ+ProtoMessageBasics/build/enum.pb.cc

CMakeFiles/zmqsub.dir/enum.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/zmqsub.dir/enum.pb.cc.i"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hayden/personal/ZMQ+ProtoMessageBasics/build/enum.pb.cc > CMakeFiles/zmqsub.dir/enum.pb.cc.i

CMakeFiles/zmqsub.dir/enum.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/zmqsub.dir/enum.pb.cc.s"
	/usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hayden/personal/ZMQ+ProtoMessageBasics/build/enum.pb.cc -o CMakeFiles/zmqsub.dir/enum.pb.cc.s

# Object files for target zmqsub
zmqsub_OBJECTS = \
"CMakeFiles/zmqsub.dir/zmqsub.cc.o" \
"CMakeFiles/zmqsub.dir/message.pb.cc.o" \
"CMakeFiles/zmqsub.dir/enum.pb.cc.o"

# External object files for target zmqsub
zmqsub_EXTERNAL_OBJECTS =

zmqsub: CMakeFiles/zmqsub.dir/zmqsub.cc.o
zmqsub: CMakeFiles/zmqsub.dir/message.pb.cc.o
zmqsub: CMakeFiles/zmqsub.dir/enum.pb.cc.o
zmqsub: CMakeFiles/zmqsub.dir/build.make
zmqsub: /usr/lib/x86_64-linux-gnu/libprotobuf.so
zmqsub: CMakeFiles/zmqsub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/hayden/personal/ZMQ+ProtoMessageBasics/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable zmqsub"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zmqsub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/zmqsub.dir/build: zmqsub
.PHONY : CMakeFiles/zmqsub.dir/build

CMakeFiles/zmqsub.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/zmqsub.dir/cmake_clean.cmake
.PHONY : CMakeFiles/zmqsub.dir/clean

CMakeFiles/zmqsub.dir/depend: enum.pb.cc
CMakeFiles/zmqsub.dir/depend: enum.pb.h
CMakeFiles/zmqsub.dir/depend: message.pb.cc
CMakeFiles/zmqsub.dir/depend: message.pb.h
	cd /home/hayden/personal/ZMQ+ProtoMessageBasics/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hayden/personal/ZMQ+ProtoMessageBasics /home/hayden/personal/ZMQ+ProtoMessageBasics /home/hayden/personal/ZMQ+ProtoMessageBasics/build /home/hayden/personal/ZMQ+ProtoMessageBasics/build /home/hayden/personal/ZMQ+ProtoMessageBasics/build/CMakeFiles/zmqsub.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/zmqsub.dir/depend

