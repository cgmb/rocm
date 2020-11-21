#!/bin/sh

cmake -HHIP -Bbuild/HIP -DCMAKE_BUILD_TYPE=Release -DHIP_COMPILER=clang -DHIP_PLATFORM=rocclr -DCMAKE_PREFIX_PATH="/opt/rocm/rocclr;/opt/rocm"  -D__HIP_ENABLE_PCH=OFF -DCMAKE_INSTALL_PREFIX=/opt/rocm/hip #-DROCclr_DIR="$(pwd)/build/ROCclr"  -DCMAKE_PREFIX_PATH="$(pwd)/build/ROCclr;/opt/rocm"  -DCMAKE_PREFIX_PATH="/opt/rocm/rocclr;/opt/rocm" 
make -j16 -C build/HIP
make -C build/HIP install

for path in $(find /opt/rocm/hip/bin -maxdepth 1 -type f); do
  filename=$(basename "$path")
  ln -sr "$path" "/opt/rocm/bin/$filename"
done
