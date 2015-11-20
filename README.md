# test-busybox-windows [![Build Status](https://travis-ci.org/takumin/test-busybox-windows.svg?branch=master)](https://travis-ci.org/takumin/test-busybox-windows)
Travis CI Test - [busybox-w32](https://github.com/rmyorston/busybox-w32).

# Require
Ubuntu 14.04(LTS) or later.

```bash
apt-get install build-essential libncurses5-dev mingw-w64
```

## Test binary
Test for wine.

```bash
dpkg --add-architecture i386
apt-get update
apt-get install wine
```

# Build

```bash
./build.sh
```
