#!/bin/sh

cmake -HROCm-CompilerSupport/lib/comgr -Bbuild/ROCm-CompilerSupport -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/rocm -DCMAKE_PREFIX_PATH=/opt/rocm/llvm
make -j16 -C build/ROCm-CompilerSupport
make -C build/ROCm-CompilerSupport install
