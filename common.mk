
LOCAL_PATH := $(call my-dir)

## China Apps addons for exTHmUI
# Custom packages
PRODUCT_PACKAGES += \
    ViaBrowserCN \
    Gboard \
    Coolapk \
    GeometricWeather \
    Brevent

## Lawnchair
# Prebuilt Packages
PRODUCT_PACKAGES += \
    Lawnchair

# Include package overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay/common

# Lawnchair 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    $(LOCAL_PATH)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

## FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := ture
PRODUCT_PACKAGES += \
    FaceUnlockService

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face.moto_unlock_service=$(TARGET_FACE_UNLOCK_SUPPORTED)
