# www.synclang.org

Sync Website

## Setup

Following the [Emscripten install steps](https://emscripten.org/docs/getting_started/downloads.html) for your platform. Note that the Windows setup is different. Emscripten is already installed as a submodule of this repository.

### Building

Run CMake build using emscripten.

```sh
./emscripten/upstream/emscripten/emcmake cmake -S . -B build -D CMAKE_BUILD_TYPE=MinSizeRel
cmake --build build
```

## Running Locally

Using the python `http.server` module can make local testing super easy. Example usage:

```sh
cd syncWeb
python -m http.server
```
