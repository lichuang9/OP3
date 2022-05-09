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
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default


rm -f target/linux/ar71xx/files/arch/mips/ath79/mach-bhu-bxu2000n2-a.c
mv mach-bhu-bxu2000n2-a.c target/linux/ar71xx/files/arch/mips/ath79/mach-bhu-bxu2000n2-a.c

rm -f target/linux/ar71xx/image/legacy.mk
mv legacy.mk target/linux/ar71xx/image/legacy.mk

rm -f target/linux/ar71xx/base-files/etc/diag.sh
mv diag.sh target/linux/ar71xx/base-files/etc/diag.sh

rm -f package/kernel/mac80211/files/lib/wifi/mac80211.sh
mv mac80211.sh package/kernel/mac80211/files/lib/wifi/mac80211.sh
