cmake_minimum_required (VERSION 3.28)

project("www.synclang.org")

add_executable(
    play 
    test.cpp
    # build/play.js
)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} \
  -s WASM=1 \
  -s ENVIRONMENT=web \
  -s ALLOW_MEMORY_GROWTH=1 \
  -s ERROR_ON_UNDEFINED_SYMBOLS=0 \
  -s EXPORTED_RUNTIME_METHODS=\"['ccall','cwrap','stringToNewUTF8']\" \
  -s MODULARIZE \
  -s EXPORT_ES6=1 \
  -Os")

add_custom_command(
    TARGET play 
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy
            ${CMAKE_BINARY_DIR}/play.js
            ${CMAKE_SOURCE_DIR}/syncWeb/play
)

add_custom_command(
    TARGET play 
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy
            ${CMAKE_BINARY_DIR}/play.wasm
            ${CMAKE_SOURCE_DIR}/syncWeb/play
)