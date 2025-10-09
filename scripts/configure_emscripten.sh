#!/bin/bash 

echo apt-get update
sudo apt-get update
echo install cmake
sudo apt-get install -y cmake build-essential
echo install
./emscripten/emsdk install latest
echo activate
./emscripten/emsdk activate latest
echo source
source ./emscripten/emsdk_env.sh
echo emcmake
emcmake cmake -S . -B build
echo build
cmake --build build