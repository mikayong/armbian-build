#!/bin/bash

SRC="/root/armbian"

KERNELSRC="${SRC}/cache/sources/linux-mainline/5.15"
KERNELDTS="${KERNELSRC}/arch/arm/boot/dts"

DRAGINOFILE="${SRC}/packages/dragino-h3"

cp -f ${DRAGINOFILE}/sun8i-h3-dragino-hp*.dts $KERNELDTS
cp -f ${DRAGINOFILE}/sun8i-h3-m700*.dts $KERNELDTS
cp -f ${DRAGINOFILE}/sun8i-h3-khomp*.dts $KERNELDTS
cp -f ${DRAGINOFILE}/sun8i-h3.dtsi $KERNELDTS
cp -f ${DRAGINOFILE}/linux-dts-Makefile $KERNELDTS/Makefile
cp -f ${DRAGINOFILE}/mt7601u/init.c $KERNELSRC/drivers/net/wireless/mediatek/mt7601u
cp -f ${DRAGINOFILE}/serial-option/option.c $KERNELSRC/drivers/usb/serial/option.c

#cp -f ${DRAGINOFILE}/mt7601u/main.c $KERNELSRC/drivers/net/wireless/mediatek/mt7601u
#cp -f ${DRAGINOFILE}/mt7601u/dma.c $KERNELSRC/drivers/net/wireless/mediatek/mt7601u
#cp -f ${DRAGINOFILE}/mac80211/main.c $KERNELSRC/net/mac80211/main.c
#cp -f ${DRAGINOFILE}/mac80211/iface.c $KERNELSRC/net/mac80211/iface.c
#cp -f ${DRAGINOFILE}/wireless/core.c $KERNELSRC/net/wireless/core.c
#cp -f ${DRAGINOFILE}/mac80211/dev.c $KERNELSRC/net/core/dev.c
#cp -f ${DRAGINOFILE}/sunxi_sid.c ${KERNELSRC}/drivers/nvmem/sunxi_sid.c
