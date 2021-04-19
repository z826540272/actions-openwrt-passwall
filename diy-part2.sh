#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
# Work with SSR PLUS 
sed -i 's/+ip /+ip-full /' feeds/passwall/luci-app-passwall/Makefile
