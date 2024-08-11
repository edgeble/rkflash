#!/bin/bash

BUILD_PWD=`pwd`
export PATH=$BUILD_PWD/tools/linux/Linux_Upgrade_Tool/Linux_Upgrade_Tool:$PATH

upgrade_tool ul rockdev/MiniLoaderAll.bin -noreset
upgrade_tool di -p rockdev/parameter.txt
upgrade_tool di -u rockdev/uboot.img
upgrade_tool di -t rockdev/trust.img
upgrade_tool di -b rockdev/boot.img
upgrade_tool di -recovery rockdev/recovery.img
upgrade_tool di -misc rockdev/misc.img
upgrade_tool di -oem rockdev/oem.img
upgrade_tool di -userdata rockdev/userdata.img
upgrade_tool di -rootfs rockdev/rootfs.img
upgrade_tool rd
