# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit GSM telephony parts
#$(call inherit-product, vendor/aosip/config/gsm.mk)

# Inherit AOSiP product configuration
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit arm64 phone gapps
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

-include device/google/marlin/marlin/device-aosip.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosip_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:8.0.0/OPR3.170623.013/4397526:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 8.0.0 OPR3.170623.013 4397526 release-keys"

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
