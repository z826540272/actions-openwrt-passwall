#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.88.1/g' package/base-files/files/bin/config_generate
# mkdir package/base-files/files/config
# echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
# rm -rf package/lean/smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
# git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages

sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
