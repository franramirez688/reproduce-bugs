#!/bin/bash

CUR_DIR=$(pwd)
echo "---------------- Creating the library without SONAME - nosoname/1.0"
conan create nosoname/conanfile.py
echo "---------------- Creating the library libB/1.0 which depends on nosoname/1.0"
conan create libB/conanfile.py
echo "---------------- Building application which consumes libB/1.0"
cd app && conan install . -if build
cd build && cmake -G "Unix Makefiles" -DCMAKE_TOOLCHAIN_FILE="./conan_toolchain.cmake" .. && cmake --build .
echo "---------------- Executing the application"
./example
echo "---------------- Everything was fine!"
cd $CUR_DIR
