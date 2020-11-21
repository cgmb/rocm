#!/bin/sh

cmake -HROCclr -Bbuild/ROCclr -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/rocm/rocclr -DOPENCL_DIR="$(pwd)/ROCm-OpenCL-Runtime"
make -j16 -C build/ROCclr
make -C build/ROCclr install
