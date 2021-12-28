cmake_minimum_required(VERSION 3.15)
project(nosoname CXX)

add_library(nosoname SHARED src/nosoname.cpp)

# Adding NO_SONAME flag to main library
set_target_properties(nosoname PROPERTIES PUBLIC_HEADER "src/nosoname.h" NO_SONAME 1)
install(TARGETS nosoname DESTINATION "."
        PUBLIC_HEADER DESTINATION include
        RUNTIME DESTINATION bin
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        )
