FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
FILESEXTRAPATHS:prepend := "${RV110X_DTS}:"

COMPATIBLE_MACHINE:luckfox-pico-mini-a = "luckfox-pico-mini-a"
COMPATIBLE_MACHINE:luckfox-pico-mini-b = "luckfox-pico-mini-b"

SRC_URI += " \
    file://0001-mmc-set-initial-signal-voltage-on-power-off.patch \
    file://0002-add-rv1103-initial-support.patch \
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
