# www.synclang.org

Sync Website

## Building

Following the [Emscripten install steps](https://emscripten.org/docs/getting_started/downloads.html) for your platform. Note that the Windows setup is different. Emscripten is already installed as a submodule of this repository.

`em++ test.cpp -o play.js -sMODULARIZE -s EXPORTED_RUNTIME_METHODS='['ccall','cwrap','stringToNewUTF8']' -sEXPORT_ES6=1`
`py -m http.server`

## Actual Deployment

Problems:

1. The maximum file size permitted to deploy on cloudflare pages is ~25MB
2. You cannot easily exclude folders from the deployment if you use the root folder
3. The `.js` and `.wasm` files that are built as part of the deployment are within `./build/` folder, which contain many other files

Potential Solutions:

1. Delete files / folders that aren't required during build
2. Move all deployment files to a specific sub-folder, and deploy that folder as the root
3. Copy / move the CMake outputs to the relevant directory

Considerations:

1. Optimizing the WASM output for size rather than runtime performance may be better for bandwidth
2. The emscripten (emsdk) submodule has files that are way too big for deployment
