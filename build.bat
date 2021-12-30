rm -rf ./build/*
mkdir build
cd build
cmake -DCMAKE_CC_COMPILER="C:/Program Files/LLVM/bin/clang.exe" -DCMAKE_CXX_COMPILER="C:/Program Files/LLVM/bin/clang++.exe"  -G "MinGW Makefiles" ..
cmake --build .
cd ..
