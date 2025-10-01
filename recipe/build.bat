cd OpenEXR
mkdir build
cd build

set "CXXFLAGS=-external:I%LIBRARY_PREFIX%\include\openjph"

cmake -G "Ninja" ^
      %CMAKE_ARGS% ^
	-DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
      -DBUILD_SHARED_LIBS=ON ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_LIBDIR=lib ^
      -DOPENEXR_LIB_SUFFIX="" ^
      -DOPENEXR_INSTALL_PKG_CONFIG=ON ^
      ..

if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1
