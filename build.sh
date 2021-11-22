#!/bin/bash
set -e

CUR_DIR=$(pwd)
echo "---------------- Creating the library without SONAME - nosoname/1.0"
conan create nosoname/conanfile.py
echo "---------------- Creating the library libB/1.0 which depends on nosoname/1.0"
conan create libB/conanfile.py
echo "---------------- Building application which consumes libB/1.0"
cd app && rm -rf build && conan install . -if build
cd build && cmake -G "Unix Makefiles" .. && cmake --build .
echo "---------------- Executing the application"
./bin/example
echo "---------------- Everything was fine!"
cd $CUR_DIR
