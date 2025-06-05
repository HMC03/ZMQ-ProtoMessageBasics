cmake_minimum_required(VERSION 3.10)
project(ZMQ_Proto_Example)

set(CMAKE_CXX_STANDARD 17)

# Find Protobuf
find_package(Protobuf REQUIRED)
message(STATUS "Using protobuf ${Protobuf_VERSION}")
include_directories(${Protobuf_INCLUDE_DIRS})

# Find ZeroMQ
find_package(PkgConfig REQUIRED)
pkg_check_modules(ZMQ REQUIRED libzmq)
include_directories(${ZMQ_INCLUDE_DIRS})

# Proto files
set(PROTO_FILES
  ${CMAKE_CURRENT_SOURCE_DIR}/message.proto
  ${CMAKE_CURRENT_SOURCE_DIR}/enum.proto
)

include(FindProtobuf)

# Generate protobuf sources
protobuf_generate_cpp(PROTO_SRCS PROTO_HDRS ${PROTO_FILES})

# Add executables
add_executable(zmqpub zmqpub.cc ${PROTO_SRCS})
add_executable(zmqsub zmqsub.cc ${PROTO_SRCS})

# Link dependencies
target_link_libraries(zmqpub ${Protobuf_LIBRARIES} ${ZMQ_LIBRARIES})
target_link_libraries(zmqsub ${Protobuf_LIBRARIES} ${ZMQ_LIBRARIES})

# Include current build dir (where .pb.h files are generated)
include_directories(${CMAKE_CURRENT_BINARY_DIR})
