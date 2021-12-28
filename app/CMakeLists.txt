cmake_minimum_required(VERSION 3.15)
project(PackageTest CXX)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

set(CMAKE_MODULE_PATH ${CMAKE_BINARY_DIR})
set(CMAKE_PREFIX_PATH ${CMAKE_BINARY_DIR})


find_package(libB CONFIG REQUIRED)

add_executable(example src/example.cpp)
target_link_libraries(example libB)
