#include <iostream>
#include <emscripten.h>
#include <cstdlib>

extern "C" {
void EMSCRIPTEN_KEEPALIVE testExportedFunction() {
    std::cout << "hi\n";
}

void EMSCRIPTEN_KEEPALIVE syncCompile(char* src) {
    std::cout << "WASM!\n";
    std::cout << src << std::endl;
    free(src);
}
}