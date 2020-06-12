#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

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
