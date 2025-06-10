FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
FILESEXTRAPATHS:prepend := "${RV110X_DTS}:"

SRC_URI += " \
    file://0001-add-rv1106-support.patch \
    file://rv1103g-luckfox-pico-mini-a.dts;subdir=git/arch/arm/dts/ \
    file://rv1103g-luckfox-pico-mini-b.dts;subdir=git/arch/arm/dts/ \
    file://rv1103g-luckfox-pico-mini.dtsi;subdir=git/arch/arm/dts/ \
    file://rv1103g.dtsi;subdir=git/arch/arm/dts/ \
    file://rv1106-pinctrl.dtsi;subdir=git/arch/arm/dts/ \
    file://rv1106.dtsi;subdir=git/arch/arm/dts/ \
    file://rv1103g-u-boot.dtsi;subdir=git/arch/arm/dts/ \
    file://rv1106-u-boot.dtsi;subdir=git/arch/arm/dts/ \
    file://rv1103g-luckfox-pico-mini-a-u-boot.dtsi;subdir=git/arch/arm/dts/ \
    file://rv1103g-luckfox-pico-mini-b-u-boot.dtsi;subdir=git/arch/arm/dts/ \
    file://luckfox-pico-mini-a-rv1103g_defconfig;subdir=git/configs/ \
    file://luckfox-pico-mini-b-rv1103g_defconfig;subdir=git/configs/ \
"
