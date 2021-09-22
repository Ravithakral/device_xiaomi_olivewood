#
# Copyright (C) 2021 The PixelPlusUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from olivewood device
$(call inherit-product, device/xiaomi/olivewood/device.mk)

# Inherit some aosp stuff.
TARGET_BOOT_ANIMATION_RES := 720
TARGET_INCLUDE_LIVE_WALLPAPERS := false
$(call inherit-product, vendor/aosp/config/common.mk)

# PixelPlusUI flags
#CUSTOM_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 720
#TARGET_SUPPORTS_GOOGLE_RECORDER := true
#TARGET_INCLUDE_STOCK_ARCORE := true
#TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_olivewood
PRODUCT_DEVICE := olivewood
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8A/8A Dual
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=olivewood
