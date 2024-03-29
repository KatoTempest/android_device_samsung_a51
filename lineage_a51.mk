#
# Copyright (C) 2018 The LineageOS Project
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

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inscreen Fingerprint HAL
TARGET_HAVE_FOD := true


# Inherit device configuration
$(call inherit-product, device/samsung/a51/device.mk)


## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a51
PRODUCT_NAME := lineage_a51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A515F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := samsung/a51nsxx/a51:11/RP1A.190711.020/A515FXXU5EG2:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a51nsxx \
    PRIVATE_BUILD_DESC="a51nsxx-user 11 RP1A.190711.020 A515FXXU5EG2 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=A515FXXU5EG2


