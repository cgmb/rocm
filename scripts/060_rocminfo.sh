#!/bin/sh

cmake -Hrocminfo -Bbuild/rocminfo -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/rocm
make -j16 -C build/rocminfo
make -C build/rocminfo install
