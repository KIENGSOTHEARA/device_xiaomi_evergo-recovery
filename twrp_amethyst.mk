#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from these configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from device configuration
$(call inherit-product, device/xiaomi/amethyst/device.mk)

# Inherit from TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Import OrangeFox specifics
$(call inherit-product, device/xiaomi/amethyst/amethyst_amethyst.mk)

## Device identifier
PRODUCT_DEVICE := amethyst
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 14 Pro+ 5G
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_NAME := twrp_${PRODUCT_DEVICE}

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
