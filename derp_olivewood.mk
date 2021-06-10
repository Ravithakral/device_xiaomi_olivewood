#
# Copyright (C) 2021 The Derpfest Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from olivewood device
$(call inherit-product, device/xiaomi/olivewood/device.mk)

# Inherit some derpfest stuff.
$(call inherit-product, vendor/derp/config/common.mk)

# Bootanimation res
TARGET_BOOT_ANIMATION_RES := 1080

# Build Status
DERP_BUILDTYPE := Official

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_olivewood
PRODUCT_DEVICE := olivewood
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8A Dual
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="olivewood" \
    TARGET_DEVICE="olivewood"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys
BUILD_DESCRIPTION := redfin-user 11 RQ3A.210605.005 7349499 release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
