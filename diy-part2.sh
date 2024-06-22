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

#rm -f feeds/packages/multimedia/minidlna/patches/005-added-support-RMVB.patch
#wget -P feeds/packages/multimedia/minidlna/patches/ https://raw.githubusercontent.com/stock169/openwrt-ipq40xx-generic-p2w_r619ac-128m/main/002-support-ape-mka-rmvb-dsd-format.patch
wget -P feeds/packages/multimedia/minidlna/patches/ https://raw.githubusercontent.com/stock169/openwrt-ipq40xx-generic-p2w_r619ac-128m/main/002-support-ape-mka-format.patch
rm -rf feeds/luci/applications/luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall.git feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall/.git
rm -rf feeds/luci/applications/luci-app-passwall/.github
mv feeds/luci/applications/luci-app-passwall/luci-app-passwall/* feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall/luci-app-passwall
rm -rf feeds/packages/net/ipt2socks
rm -rf feeds/packages/net/pdnsd-alt
rm -rf feeds/packages/net/simple-obfs
rm -rf feeds/packages/net/tcping
rm -rf feeds/packages/net/trojan-plus
rm -rf feeds/packages/net/v2ray-geodata
rm -rf feeds/packages/net/xray-plugin
rm -rf feeds/packages/net/chinadns-ng
rm -rf feeds/packages/net/microsocks
rm -rf feeds/packages/net/shadowsocks-rust
rm -rf feeds/packages/net/sing-box
rm -rf feeds/packages/net/trojan
rm -rf feeds/packages/net/tuic-client
rm -rf feeds/packages/net/v2ray-plugin
rm -rf feeds/packages/net/dns2socks
rm -rf feeds/packages/net/hysteria
rm -rf feeds/packages/net/naiveproxy
rm -rf feeds/packages/net/shadowsocksr-libev
rm -rf feeds/packages/net/ssocks
rm -rf feeds/packages/net/trojan-go
rm -rf feeds/packages/net/v2ray-core
rm -rf feeds/packages/net/xray-core
rm -rf feeds/packages/net/brook
rm -rf feeds/packages/net/dns2tcp
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git feeds/packages/net/tmp
rm -rf feeds/packages/net/tmp/.git
rm -rf feeds/packages/net/tmp/.github
rm -rf feeds/packages/net/tmp/gn
mv feeds/packages/net/tmp/* feeds/packages/net
rm -rf feeds/packages/net/shadowsocks-libev
