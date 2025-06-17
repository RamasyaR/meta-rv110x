SOC_FAMILY = "rv1103"

ROCKCHIP_CLOSED_TPL ?= "1"

require conf/machine/include/soc-family.inc
require conf/machine/include/rockchip-defaults.inc
require conf/machine/include/arm/armv7a/tune-cortexa7.inc
require conf/machine/include/rv-common.inc

SERIAL_CONSOLES = "115200;ttyS2"

KBUILD_DEFCONFIG = "multi_v7_defconfig"
KERNEL_IMAGETYPE ?= "zImage"

UBOOT_SUFFIX ?= "img"

MACHINE_FEATURES_BACKFILL_CONSIDERED += "rtc"

ENABLE_STATELESS_VPU_GST ?= "1"
