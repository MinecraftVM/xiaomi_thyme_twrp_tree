#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/thyme
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
<<<<<<< HEAD
    android.hardware.boot@1.1-impl-qti.recovery \
    bootctrl.$(PRODUCT_PLATFORM).recovery \
=======
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.kona \
    bootctrl.kona.recovery \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl
>>>>>>> 26132f11d4949a1482c5a4b0028f20a08456b38c

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
