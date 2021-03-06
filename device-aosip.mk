# Camera
PRODUCT_PACKAGES += libion

# Fingerprint sensor type
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.fingerprint=fpc

# IMS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager

# LiveDisplay native
PRODUCT_PACKAGES += \
    libjni_livedisplay

# NFC
PRODUCT_PACKAGES += \
    nfc_nci.pn54x.default

# Overlays
#DEVICE_PACKAGE_OVERLAYS += device/google/marlin/overlay-aosip

# Pixel Experience
PRODUCT_COPY_FILES += \
  device/google/marlin/nexus.xml:system/etc/sysconfig/nexus.xml

# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# UI
PRODUCT_PROPERTY_OVERRIDES += \
    sys.use_fifo_ui=1

# Update engine
PRODUCT_PACKAGES += brillo_update_payload

GAPPS_VARIANT := nano
GAPPS_FORCE_PACKAGE_OVERRIDES := true
PRODUCT_PACKAGES += Chrome
$(call inherit-product-if-exists, vendor/opengapps/build/opengapps-packages.mk)
