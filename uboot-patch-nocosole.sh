#!/bin/bash

SRC="/root/armbian"

#KERNELSRC="${SRC}/cache/sources/linux-mainline/5.15"
#KERNELDTS="${KERNELSRC}/arch/arm/boot/dts"
BOOTSRC="${SRC}/cache/sources/u-boot/v2021.10"
BOOTDTS="${BOOTSRC}/arch/arm/dts"
BOOTCFG="${BOOTSRC}/configs"

DRAGINOFILE="${SRC}/packages/dragino-h3"

#cp -f ${DRAGINOFILE}/sun8i-h3-dragino-hp*.dts $KERNELDTS
#cp -f ${DRAGINOFILE}/linux-dts-Makefile $KERNELDTS/Makefile

cp -f ${DRAGINOFILE}/sun8i-h3-dragino-hp*.dts $BOOTDTS
cp -f ${DRAGINOFILE}/uboot-dts-Makefile $BOOTDTS/Makefile
cp -f ${DRAGINOFILE}/dragino_hp0z_defconfig $BOOTCFG
cp -f ${DRAGINOFILE}/uboot-sunxi-common.h $BOOTSRC/include/configs/sunxi-common.h
