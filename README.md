

# meta-rv110x

Yocto BSP layer for Rockchip boards based on RV1103/RV1106.

## Description

![plot](img/fastfetch.png?raw=true"Title")

The purpose of this layer is to provide OpenEmbedded BSP support for
Rockchip boards based on RV1103/RV1106 using using ported rockchip-linux sources.

## Supported boards

* Luckfox Pico Mini A:
  <https://www.luckfox.com/Luckfox-Pico-Mini-A>
  ![plot](img/luckfox_pico_mini_a.png?raw=true"Title")

## Dependencies

This layer depends on:

* URI: git://git.openembedded.org/openembedded-core
  * branch: walnascar
  * revision: HEAD

* URI: git://git.yoctoproject.org/meta-rockchip
  * branch: walnascar
  * revision: HEAD

## Limitations

* There is only basic support without npu, csi, crypto, mpp and unfortunately no ethernet. I am going to add ethernet support soon.
* Only SD cards are supported.

## Contributing

If you have a desire to help with the development of this layer, or perhaps you would like to help develop patches with soc support for u-boot or linux kernel, then open discussions or pull requests, I would be very glad of any help.

## Maintainers

* Raman Rakavets `<radikot88@gmail.com>`