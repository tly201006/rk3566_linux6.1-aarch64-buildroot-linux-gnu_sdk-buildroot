host_build {
    QT_CPU_FEATURES.x86_64 = mmx sse sse2
} else {
    QT_CPU_FEATURES.arm64 = cx16 neon crc32
}
QT.global_private.enabled_features = alloca_h alloca dlopen gui libudev network posix_fallocate reduce_exports release_tools sql system-zlib testlib widgets xml
QT.global_private.disabled_features = sse2 alloca_malloc_h android-style-assets avx2 dbus dbus-linked private_tests gc_binaries intelcet reduce_relocations relocatable stack-protector-strong zstd
PKG_CONFIG_EXECUTABLE = /home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/bin/pkg-config
QMAKE_LIBS_LIBDL = 
QMAKE_LIBS_LIBUDEV = -L/home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/aarch64-buildroot-linux-gnu/sysroot/usr/lib -ludev
QT_COORD_TYPE = double
QMAKE_LIBS_ZLIB = -lz
CONFIG -= precompile_header
CONFIG += cross_compile compile_examples enable_new_dtags largefile neon
QT_BUILD_PARTS += examples libs
QT_HOST_CFLAGS_DBUS += -I/home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/bin/../aarch64-buildroot-linux-gnu/sysroot/usr/include/dbus-1.0 -I/home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/bin/../aarch64-buildroot-linux-gnu/sysroot/usr/lib/dbus-1.0/include
