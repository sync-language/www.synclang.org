./emscripten/emsdk install latest
./emscripten/emsdk activate latest
source ./emscripten/emsdk_env.sh
emcmake cmake -S . -B build
cmake --build build