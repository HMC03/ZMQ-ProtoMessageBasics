# ZeroMQ + Protocol Buffers C++ Example

This project demonstrates how to use [ZeroMQ](https://zeromq.org/) for messaging and [Protocol Buffers](https://developers.google.com/protocol-buffers) for structured data serialization in C++.

## Overview

It includes two programs:
- `zmqpub`: Prompts user to fill a protobuf message and sends it.
- `zmqsub`: Listens for messages and prints them to the console.

## Prerequisites

Before building and running the project, make sure you have the following installed:
- C++17 compiler (g++ or clang++)
- [CMake](https://cmake.org/) (3.10+)
- ZeroMQ (libzmq)
- Protocol Buffers (protoc, libprotobuf-dev)

If you're using Ubuntu or Debian-based Linux, you can install the required packages with:
```bash
sudo apt update
sudo apt install libzmq3-dev protobuf-compiler libprotobuf-dev cmake g++
```

## Build Instructions

1. Navigate to project directory:
```bash
cd path/to/project
```
2. Create and enter build directory:
```bash
mkdir build && cd build
```
3. Configure with CMake:
```bash
cmake ..
```
4. Build:
```bash
make
```

This will generate the `zmqpub` and `zmqsub` executables in the `build` directory.

## Run Instructions

1. Start subscriber in one terminal:
```bash
./zmqsub
```
2. Start publisher in another terminal:
```bash
./zmqpub
```
3. Follow `zmqpub` prompts to send messages; `zmqsub` will display them.
4. Pres `Ctrl+C` to stop either program.