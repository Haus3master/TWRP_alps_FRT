#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from FRT device
$(call inherit-product, device/alps/FRT/device.mk)

PRODUCT_DEVICE := FRT
PRODUCT_NAME := twrp_FRT
PRODUCT_BRAND := alps
PRODUCT_MODEL := Nokia 1
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Frontier_00WW-user 10 QP1A.190711.020 00WW_3_11D release-keys"

BUILD_FINGERPRINT := Nokia/Frontier_00WW/FRT:10/QP1A.190711.020/00WW_3_11D:user/release-keys
