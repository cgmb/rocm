#!/bin/sh

cmake -HROCR-Runtime/src -Bbuild/ROCR-Runtime -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/rocm
make -j16 -C build/ROCR-Runtime
make -C build/ROCR-Runtime install
