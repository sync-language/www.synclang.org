#include <iostream>
#include <emscripten.h>

extern "C" {
void EMSCRIPTEN_KEEPALIVE testExportedFunction() {
    std::cout << "hi\n";
}
}