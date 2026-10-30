#!/bin/bash
set -eo pipefail

cmake ${CMAKE_ARGS} -S . -B build -DCMAKE_INSTALL_PREFIX="${PREFIX}"
cmake --build build --parallel "${CPU_COUNT}"
cmake --install build
