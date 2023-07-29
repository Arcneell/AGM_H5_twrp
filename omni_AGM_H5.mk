#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from AGM_H5 device
$(call inherit-product, device/agm/AGM_H5/device.mk)

PRODUCT_DEVICE := AGM_H5
PRODUCT_NAME := omni_AGM_H5
PRODUCT_BRAND := AGM
PRODUCT_MODEL := AGM_H5
PRODUCT_MANUFACTURER := agm

PRODUCT_GMS_CLIENTID_BASE := android-agm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ph01p44_agm_e62_e-user 12 SP1A.210812.016 1649320930 release-keys"

BUILD_FINGERPRINT := AGM/AGM_H5_EEA/AGM_H5:12/SP1A.210812.016/1649320930:user/release-keys
