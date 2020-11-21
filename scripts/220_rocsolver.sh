#!/bin/sh

sed -i 's/rocm-dev//g' rocSOLVER/install.sh
cd rocSOLVER && ./install.sh -icd
