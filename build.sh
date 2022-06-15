#!/bin/bash

set -e

cmake -GNinja -Bbuild \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DCMAKE_C_COMPILER=clang-14 \
    -DCMAKE_CXX_COMPILER=clang++-14 \
    -DLLVM_ENABLE_PROJECTS=mlir \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DLLVM_EXTERNAL_PROJECTS=linalgbridge \
    -DLLVM_EXTERNAL_LINALGBRIDGE_SOURCE_DIR=`pwd` \
    -DMLIR_ENABLE_BINDINGS_PYTHON=OFF \
    -DLLVM_TARGETS_TO_BUILD=host \
    external/llvm-project/llvm
