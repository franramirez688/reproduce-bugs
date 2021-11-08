cmake_minimum_required(VERSION 3.15)
project(libB CXX)

find_package(nosoname CONFIG REQUIRED)

add_library(libB src/libB.cpp)
target_link_libraries(libB nosoname::nosoname)

set_target_properties(libB PROPERTIES PUBLIC_HEADER "src/libB.h")
install(TARGETS libB DESTINATION "."
        PUBLIC_HEADER DESTINATION include
        RUNTIME DESTINATION bin
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        )
