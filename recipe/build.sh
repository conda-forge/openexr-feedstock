#!/bin/bash
cd OpenEXR
mkdir build
cd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DBUILD_SHARED_LIBS=ON \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_LIBDIR=lib \
      -DOPENEXR_LIB_SUFFIX="" \
      ..

make -j${CPU_COUNT}
make install