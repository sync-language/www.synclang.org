#!/bin/bash 

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