#!/bin/bash

#==============================================================================
# This script for LLVM installation
# LLVM, Clang and co, libfuzzer, lldb, lld(linker), libc++, OpenMP
# We install stable version LLVM 7
#==============================================================================

## add package source
sudo sh -c 'echo "deb http://apt.llvm.org/$(lsb_release -sc)/ llvm-toolchain-$(lsb_release -sc) main" > /etc/apt/sources.list.d/llvm-latest.list'
sudo sh -c 'echo "deb http://apt.llvm.org/$(lsb_release -sc)/ llvm-toolchain-$(lsb_release -sc)-7 main" >> /etc/apt/sources.list.d/llvm-latest.list'
## To retrieve the archive signature
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -

sudo apt-get update

# LLVM
sudo apt-get install libllvm-7-ocaml-dev libllvm7 llvm-7 llvm-7-dev llvm-7-doc llvm-7-examples llvm-7-runtime -y
# Clang and co
sudo apt-get install clang-7 clang-tools-7 clang-7-doc libclang-common-7-dev libclang-7-dev libclang1-7 clang-format-7 python-clang-7 -y
# libfuzzer
sudo apt-get install libfuzzer-7-dev -y
# lldb
sudo apt-get install lldb-7 -y
# lld (linker)
sudo apt-get install lld-7 -y
# libc++
sudo apt-get install libc++-7-dev libc++abi-7-dev -y
# OpenMP
sudo apt-get install libomp-7-dev -y


