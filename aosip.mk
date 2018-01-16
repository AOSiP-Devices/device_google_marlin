# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

-include device/google/marlin/marlin/device-aosip.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosip_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:8.1.0/OPM1.171019.012/4470837:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 8.1.0 OPM1.171019.012 4470837 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
