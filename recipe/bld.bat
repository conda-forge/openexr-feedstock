cd OpenEXR
mkdir build
cd build

cmake -G "NMake Makefiles" ^
	  -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -DBUILD_SHARED_LIBS=ON ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_LIBDIR=lib ^
      -DOPENEXR_LIB_SUFFIX="" ^
      -DOPENEXR_INSTALL_PKG_CONFIG=ON ^
      ..

if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
