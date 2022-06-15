#!/bin/bash

set -e
set -u

mkdir -p lib/build
(cd lib/build;
    cmake \
        -G Ninja \
        -DCMAKE_INSTALL_PREFIX=../dist \
        -DCMAKE_BUILD_TYPE=Debug \
        -DCMAKE_CXX_COMPILER=clang++ \
        ../src &&
    ninja install
)
mkdir -p app/build
(cd app/build;
    cmake \
        -G Ninja \
        -DCMAKE_INSTALL_PREFIX=../dist \
        -DCMAKE_PREFIX_PATH=../../lib/dist \
        -DCMAKE_BUILD_TYPE=Debug \
        -DCMAKE_CXX_COMPILER=clang++ \
        ../src &&
    ninja install
)
