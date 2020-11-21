#!/bin/sh

cmake -Hrocm-cmake -Bbuild/rocm-cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/rocm
make -j12 -C build/rocm-cmake
make -C build/rocm-cmake install
