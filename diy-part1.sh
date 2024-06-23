#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i '$a\src-git OpenClash https://github.com/vernesong/OpenClash'  feeds.conf.default
#echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
#echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
# echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall2' >> feeds.conf.default
# echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default

#echo "src-git v2raya https://github.com/v2rayA/v2raya-openwrt.git" >> "feeds.conf.default"
#echo 'src-git mosdns https://github.com/sbwml/luci-app-mosdns.git' >> feeds.conf.default
#echo 'src-git v2raygeodata https://github.com/sbwml/v2ray-geodata.git' >> feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i 's/src-git telephony https:\/\/github.com\/openwrt\/telephony.git/#src-git telephony https:\/\/github.com\/openwrt\/telephony.git/g' feeds.conf.default
