cmake_minimum_required(VERSION 3.20)

# Set the project name and language standard
project(a VERSION 1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Specify compile options for optimization and warnings
add_compile_options(-Wall -O3 -pthread)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)

# Collect source files
file(GLOB SOURCES CONFIGURE_DEPENDS ${PROJECT_SOURCE_DIR}/src/*.cpp)

# Add executable target
add_executable(${PROJECT_NAME} ${SOURCES})