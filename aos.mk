## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := woods

# Inherit some common AOS stuffs
$(call inherit-product, vendor/aos/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/woods/device_woods.mk)

# Inherit some common AOSP stuff.
TARGET_ARCH := arm
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 720

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
DEVICE_RESOLUTION := 720x1280

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := woods
PRODUCT_NAME := aos_woods
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto E4
PRODUCT_MANUFACTURER := Motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME="Moto E4"

# Available languages
PRODUCT_LOCALES := en_US en_GB ru_RU uk_UA tr_TR sk_SK vi_VN fr_FR ar_EG pt_BR

#specify root method
#ROOT_METHOD := supersu
#ROOT_METHOD := magisk
WITH_ROOT := true
