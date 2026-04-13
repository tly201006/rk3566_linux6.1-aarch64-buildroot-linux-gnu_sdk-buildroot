#!/bin/sh -e
[ -z "$DEBUG" ] || set -x
echo "########## host-flutter-sdk-bin-3.24.4: host install ##########"
cd /home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot
cp -rpdT /home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/build/host-flutter-sdk-bin-3.24.4/. /home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/share/flutter/sdk/
cd /home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot
rm -f -rf  /home/tangly/work2/rklinux/rk3566_linux6.1_20260227/buildroot/output/rockchip_rk3566_evb2_lp4x_v10/rockchip_rk3566/host/share/info/dir
