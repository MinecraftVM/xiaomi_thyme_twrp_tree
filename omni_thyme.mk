#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from thyme device
$(call inherit-product, device/xiaomi/thyme/device.mk)

PRODUCT_DEVICE := thyme
PRODUCT_NAME := omni_thyme
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2102J2SC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="thyme-user 13 RKQ1.211001.001 V14.0.6.0.TGACNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/thyme/thyme:13/RKQ1.211001.001/V14.0.6.0.TGACNXM:user/release-keys
