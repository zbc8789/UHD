PRODUCT_RUNTIMES := runtime_libart_default

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, device/nexell/s5p4418_realphone/device.mk)
