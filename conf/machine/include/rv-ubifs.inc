# 'RV_SPI_NAND_STORAGE' indicates the user wants to use the
# ubifs configuration from this layer
OVERRIDES .= "${@ ':rv-ubifs' if bb.utils.to_boolean(d.getVar('RV_SPI_NAND_STORAGE'), False) else ''}"

UBOOT_CONFIG:rv-ubifs = "spi-nand"

UBI_VOLNAME = "rootfs"

UBOOT_EXTLINUX_ROOT:rv-ubifs = "ubi.mtd=rootfs root=ubi0:${UBI_VOLNAME}"
UBOOT_EXTLINUX_KERNEL_ARGS:rv-ubifs = "rootfstype=ubifs rootwait rw ${mtdparts}"

IMAGE_FSTYPES:remove:rv-ubifs = "wic${WIC_COMPRESSION_EXTENSION} wic.bmap"
IMAGE_FSTYPES:append:rv-ubifs = " ubi"
