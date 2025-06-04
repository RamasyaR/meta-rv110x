KERNEL_FEATURES:append = " \
    bsp/rockchip/remove-non-rockchip-arch-arm.scc \
    bsp/rv/add-rv-specific-drivers.scc \
    bsp/rv/apply-rv-optimizations.scc \
    bsp/rv/remove-crypto-drivers.scc \
    bsp/rv/remove-drm-drivers.scc \
    bsp/rv/remove-gpio-drivers.scc \
    bsp/rv/remove-leds-drivers.scc \
    bsp/rv/remove-mfd-devices-support.scc \
    bsp/rv/remove-other-arch-drivers.scc \
    bsp/rv/remove-net-vendor-drivers.scc \
    bsp/rv/remove-regulator-drivers.scc \
    bsp/rv/remove-rtc-drivers.scc \
    bsp/rv/remove-serial-drivers.scc \
    bsp/rv/remove-snd-drivers.scc \
    bsp/rv/remove-usb-drivers.scc \
    bsp/rv/remove-wlan-drivers.scc \
"
