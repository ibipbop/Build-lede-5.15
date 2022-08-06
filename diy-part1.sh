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

sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile

#sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default


# git clone https://github.com/kiddin9/openwrt-bypass.git package/openwrt-bypass

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git jerryk https://github.com/jerrykuku/openwrt-package' >>feeds.conf.default
echo 'src-git diy https://github.com/firker/diy-ziyong' >>feeds.conf.default
echo 'src-git mosdns https://github.com/QiuSimons/openwrt-mos' >>feeds.conf.default
