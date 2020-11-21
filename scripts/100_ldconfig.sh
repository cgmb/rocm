#!/bin/sh

echo /opt/rocm/lib > /etc/ld.so.conf.d/rocm.conf
ldconfig
