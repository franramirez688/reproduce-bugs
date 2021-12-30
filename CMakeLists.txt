cmake_minimum_required(VERSION 3.15)
project(asan CXX)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS_INIT} -fsanitize=address -shared-libsan")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS_INIT} -fsanitize=address -shared-libsan")

add_executable(asan src/asan.cpp src/main.cpp)

install(TARGETS asan DESTINATION "."
        RUNTIME DESTINATION bin
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        )
