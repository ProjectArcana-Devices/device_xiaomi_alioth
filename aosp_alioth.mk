#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/aosp/config/common.mk)
$(call inherit-product, vendor/aosp/config/telephony.mk)
$(call inherit-product, vendor/aosp/config/arcana_props.mk)

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

TARGET_BOOT_ANIMATION_RES := 108o
PRODUCT_NAME := aosp_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

ARCANA_DEVICE := alioth
ARCANA_MAINTAINER := イタチ
ARCANA_OFFICIAL := true
WITH_GAPPS := true

TAREGT_BUILD_GRAPHENEOS_CAMERA := false

TARGET_SUPPORTS_QUICK_TAP := true

TARGET_SUPPORTS_NOW_PLAYING ?= true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SP2A.220405.004 8233519 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys
