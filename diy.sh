#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
# Add Luci-theme
packages_path=package/openwrt-packages
mkdir -p $packages_path
git clone https://github.com/Apocalypsor/luci-app-smartdns $packages_path/luci-app-smartdns
git clone https://github.com/openwrt-develop/luci-theme-atmaterial $packages_path/luci-theme-atmaterial
git clone https://github.com/frainzy1477/luci-app-clash $packages_path/luci-app-clash
git clone https://github.com/vernesong/OpenClash $packages_path/luci-app-Openclash
git clone https://github.com/rosywrt/luci-theme-rosy $packages_path/luci-theme-rosy
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  $packages_path/luci-theme-argon

#ROOT PassWord
	
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
