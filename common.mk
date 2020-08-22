
LOCAL_PATH:= $(call my-dir)

## China Apps addons for exTHmUI
# Custom packages
PRODUCT_PACKAGES += \
    ViaBrowserCN \
    Gboard \
    Coolapk \
    GeometricWeather

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
