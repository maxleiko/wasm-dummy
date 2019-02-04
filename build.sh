#!/bin/bash
docker run --rm -v $(pwd):/src trzeci/emscripten-slim:sdk-tag-1.38.25-64bit emcc -O2 --minify 0 -s NODERAWFS=1 -s NO_EXIT_RUNTIME=1 -s WASM=1 -s ALLOW_MEMORY_GROWTH=1 -s MODULARIZE=1 -s EXPORT_ES6=1 main.c -o main.js
