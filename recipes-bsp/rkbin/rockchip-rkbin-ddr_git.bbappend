
COMPATIBLE_MACHINE:rv1106 = "rv1106"
COMPATIBLE_MACHINE:rv1103 = "rv1103"

DDRBIN_VERS:rv1106 ?= "v1.15"
DDRBIN_FILE:rv1106 ?= "rv1106_ddr_924MHz_${DDRBIN_VERS}.bin"

do_deploy:rv1106() {
	# Prebuilt U-Boot TPL (DDR init)
	install -m 644 ${S}/bin/rv11/${DDRBIN_FILE} ${DEPLOYDIR}/ddr-rv1106.bin
}

DDRBIN_VERS:rv1103 ?= "v1.15"
DDRBIN_FILE:rv1103 ?= "rv1106_ddr_924MHz_${DDRBIN_VERS}.bin"

do_deploy:rv1103() {
	# Prebuilt U-Boot TPL (RV1103 is more similar to RV1106 than RV1106, so use the same DDR init)
	install -m 644 ${S}/bin/rv11/${DDRBIN_FILE} ${DEPLOYDIR}/ddr-rv1103.bin
}
