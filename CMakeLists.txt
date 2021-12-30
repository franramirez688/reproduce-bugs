cmake_minimum_required(VERSION 3.15)
project(asan CXX)

add_executable(asan src/asan.cpp src/main.cpp)

install(TARGETS asan DESTINATION "."
        RUNTIME DESTINATION bin
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        )
