## Environment installation

``` shell
cd rk3566_linux6.1-aarch64-buildroot-linux-gnu_sdk-buildroot/
./relocate-sdk.sh
source environment-setup
```

## For example, cross-compiling libpng.

``` shell
cd $HOME
git clone https://github.com/pnggroup/libpng.git
cd libpng
mkdir build
./autogen.sh
./configure --host=aarch64-buildroot-linux-gnu --prefix=$HOME/libpng/build
make
make install
#check elf file
file build/lib/libpng*
```

