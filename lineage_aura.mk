#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from aura device
$(call inherit-product, device/razer/aura/device.mk)

# Inherit Carbon GSM telephony parts
#$(call inherit-product, vendor/lineage/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_aura
PRODUCT_DEVICE := aura
PRODUCT_BRAND := Razer
PRODUCT_MODEL := Phone 2
PRODUCT_MANUFACTURER := Razer

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_PRODUCT=aura \
    PRODUCT_NAME=cheryl2 \
    TARGET_DEVICE=aura \
    TARGET_NAME=cheryl2

PRODUCT_GMS_CLIENTID_BASE := android-razer

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aura-user 9 P-SMR3-RC002-RZR-200226 3141 release-keys"

BUILD_FINGERPRINT := razer/cheryl2/aura:9/P-MR2-RC001-RZR-190914/3123:user/release-keys
