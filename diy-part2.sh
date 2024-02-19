#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#sed -i 's/4.3.9_v1.2.14/4.3.8_v1.2.14/g' package/lean/qBittorrent-static/Makefile


 #wget -P feeds/packages/multimedia/minidlna/patches/ https://raw.githubusercontent.com/stock169/openwrt-ipq40xx-generic-p2w_r619ac-128m/main/002-support-ape-mka-format.patch
#rm -f feeds/packages/multimedia/minidlna/patches/005-added-support-RMVB.patch
#wget -P feeds/packages/multimedia/minidlna/patches/ https://raw.githubusercontent.com/stock169/openwrt-ipq40xx-generic-p2w_r619ac-128m/main/002-support-ape-mka-rmvb-dsd-format.patch

cd feeds/packages/multimedia/
#rm -rf ffmpeg
#git clone https://gitee.com/stock169/ffmpeg
cd ..
cd sound
#rm -rf mpd
#git clone https://gitee.com/stock169/mpd
cd ..
cd ..
cd ..
 
