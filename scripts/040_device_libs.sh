#!/bin/sh

cmake -HROCm-Device-Libs -Bbuild/ROCm-Device-Libs -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/rocm
make -j16 -C build/ROCm-Device-Libs
make -C build/ROCm-Device-Libs install
