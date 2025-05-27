FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE:luckfox-pico-mini = "luckfox-pico-mini"

SRC_URI += " \
    file://0001-mmc-set-initial-signal-voltage-on-power-off.patch \
    file://0002-add-rv1103-initial-support.patch \
"

KBUILD_DEFCONFIG:rv1103 = ""
SRC_URI:append:rv1103 = " file://defconfig"

KBUILD_DEFCONFIG:rv1106 = ""
SRC_URI:append:rv1106 = " file://defconfig"
