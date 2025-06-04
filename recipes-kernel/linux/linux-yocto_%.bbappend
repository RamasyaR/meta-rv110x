FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE:luckfox-pico-mini = "luckfox-pico-mini"

SRC_URI += " \
    file://0001-mmc-set-initial-signal-voltage-on-power-off.patch \
    file://0002-add-rv1103-initial-support.patch \
    file://rv-kmeta;type=kmeta;name=rv-kmeta;destsuffix=rv-kmeta \
"
