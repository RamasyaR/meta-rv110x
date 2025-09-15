FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
FILESEXTRAPATHS:prepend := "${RV110X_DTS}:"

COMPATIBLE_MACHINE:luckfox-pico-mini-a = "luckfox-pico-mini-a"
COMPATIBLE_MACHINE:luckfox-pico-mini-b = "luckfox-pico-mini-b"

SRC_URI += " \
    file://0001-mmc-set-initial-signal-voltage-on-power-off.patch \
    file://0002-add-rv1103-rv1106-cpu-support.patch \
    file://0003-add-rv1106-otp-support.patch \
    file://0004-add-rv1106-gmac-ethernet-support.patch \
    file://0005-add-rv1106-saradc-support.patch \
    file://0006-add-rv1106-thermal-support.patch \
    file://0007-add-rv1103-rv1106-usb-phy-support.patch \
    file://0008-add-rv1106-vop-support.patch \
    file://0009-add-rv1106-csi-dphy-support.patch \
    file://rv1103g-luckfox-pico-mini.dts \
    file://rv1103g.dtsi \
    file://rv1106-pinctrl.dtsi \
    file://rv1106.dtsi \
    file://rv-kmeta;type=kmeta;name=rv-kmeta;destsuffix=rv-kmeta \
"

do_configure:append() {
    cp ${UNPACKDIR}/rv110*.dts* ${S}/arch/arm/boot/dts/rockchip
    cat << EOF >> ${S}/arch/arm/boot/dts/rockchip/Makefile
dtb-$(CONFIG_ARCH_ROCKCHIP) += luckfox-pico-mini.dts
EOF
}
