# www.synclang.org

Sync Website

## Building

Following the [Emscripten install steps](https://emscripten.org/docs/getting_started/downloads.html) for your platform. Note that the Windows setup is different. Emscripten is already installed as a submodule of this repository.

`em++ test.cpp -o play.js -sMODULARIZE -s EXPORTED_RUNTIME_METHODS='['ccall','cwrap','stringToNewUTF8']' -sEXPORT_ES6=1`
`py -m http.server`
