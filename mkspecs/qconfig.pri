!host_build {
    QMAKE_CFLAGS    += --sysroot=$$[QT_SYSROOT]
    QMAKE_CXXFLAGS  += --sysroot=$$[QT_SYSROOT]
    QMAKE_LFLAGS    += --sysroot=$$[QT_SYSROOT]
}
host_build {
    QT_ARCH = x86_64
    QT_BUILDABI = x86_64-little_endian-lp64
    QT_TARGET_ARCH = arm64
    QT_TARGET_BUILDABI = arm64-little_endian-lp64
} else {
    QT_ARCH = arm64
    QT_BUILDABI = arm64-little_endian-lp64
}
QT.global.enabled_features = shared cross_compile shared thread c++11 c++14 c++17 c++1z c99 c11 future concurrent pkg-config signaling_nan
QT.global.disabled_features = framework rpath simulator_and_device appstore-compliant debug_and_release build_all c++2a c++2b force_asserts separate_debug_info static
PKG_CONFIG_SYSROOT_DIR = /home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/aarch64-buildroot-linux-gnu/sysroot
PKG_CONFIG_LIBDIR = /home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/aarch64-buildroot-linux-gnu/sysroot/usr/lib/pkgconfig:/home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/aarch64-buildroot-linux-gnu/sysroot/usr/share/pkgconfig:/home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/aarch64-buildroot-linux-gnu/sysroot/usr/lib/aarch64-buildroot-linux-gnu/pkgconfig
QT_CONFIG += shared shared release c++11 c++14 c++17 c++1z concurrent reduce_exports release_tools stl
CONFIG += shared cross_compile shared release
QT_VERSION = 5.15.11
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 15
QT_PATCH_VERSION = 11
QT_GCC_MAJOR_VERSION = 13
QT_GCC_MINOR_VERSION = 4
QT_GCC_PATCH_VERSION = 0
QT_EDITION = OpenSource
