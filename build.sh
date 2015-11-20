#!/bin/sh

set -e

# MinGW 32bit Build.
mkdir build_mingw32
cd build_mingw32
make KBUILD_SRC=../src -f ../src/Makefile -j 4 mingw32_defconfig
make -j 4
cp busybox.exe ../busybox-win32.exe
cd -
# MinGW 64bit Build.
mkdir build_mingw64
cd build_mingw64
make KBUILD_SRC=../src -f ../src/Makefile -j 4 mingw64_defconfig
make -j 4
cp busybox.exe ../busybox-win64.exe
cd -
# Checksum
md5sum *.exe | tee MD5SUMS
sha1sum *.exe | tee SHA1SUMS
sha256sum *.exe | tee SHA256SUMS
sha512sum *.exe | tee SHA512SUMS
