#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
git config --global user.email "826540272@qq.com"
git config --global user.name "826540272"
git revert -n 634663fe5663c40893ce6527e48af170c80d5626
git revert -n a74c473f42394c02695f909f1cbf9283b10dfc5d

sed -i 's/192.168.1.1/10.0.0.10/g' package/base-files/files/bin/config_generate
# DNS Cache FixUP
echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600\nauth-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf

# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default

