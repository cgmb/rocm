#!/bin/sh

cmake -Hllvm-project/llvm -Bbuild/llvm-project -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/rocm/llvm -DLLVM_ENABLE_ASSERTIONS=1 -DLLVM_TARGETS_TO_BUILD="AMDGPU;X86" -DLLVM_ENABLE_PROJECTS="compiler-rt;lld;clang"
make -j16 -C build/llvm-project
make -C build/llvm-project install
