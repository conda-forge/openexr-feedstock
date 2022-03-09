#!/bin/bash
mkdir build
cd build

export CFLAGS="$CFLAGS -D__STDC_FORMAT_MACROS"
export CXXFLAGS="$CXXFLAGS -D__STDC_FORMAT_MACROS"

cmake ${CMAKE_ARGS} -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DBUILD_SHARED_LIBS=ON \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DOPENEXR_LIB_SUFFIX="" \
      ..

make -j${CPU_COUNT}
make install