#!/bin/sh

cmake -HROCT-Thunk-Interface -Bbuild/ROCT-Thunk-Interface -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/rocm
make -j16 -C build/ROCT-Thunk-Interface
make -C build/ROCT-Thunk-Interface install
