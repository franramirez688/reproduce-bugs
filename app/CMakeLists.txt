cmake_minimum_required(VERSION 3.15)
project(PackageTest CXX)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

set(CMAKE_MODULE_PATH "/home/franchuti/develop/tests/reproduce-bugs/app/build" ${CMAKE_MODULE_PATH})
set(CMAKE_PREFIX_PATH "/home/franchuti/develop/tests/reproduce-bugs/app/build" ${CMAKE_PREFIX_PATH})


find_package(libB CONFIG REQUIRED)

add_executable(example src/example.cpp)
target_link_libraries(example libB)
