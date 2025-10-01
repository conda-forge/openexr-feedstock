#!/bin/bash

set -xeuo pipefail

mkdir build
cd build

export CFLAGS="$CFLAGS -D__STDC_FORMAT_MACROS"
export CXXFLAGS="$CXXFLAGS -D__STDC_FORMAT_MACROS -D_LIBCPP_DISABLE_AVAILABILITY -I$PREFIX/include/openjph"

cmake \
    -G Ninja \
    ${CMAKE_ARGS} \
    -DBUILD_SHARED_LIBS=ON \
    -DOPENEXR_LIB_SUFFIX="" \
    ..

ninja install