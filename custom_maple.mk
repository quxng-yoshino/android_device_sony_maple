#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Indicate the first API level the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 25

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

# Inherit from device makefile
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := custom_maple
PRODUCT_DEVICE := maple
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8142

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="G8142-user 9 47.2.A.10.107 172320177 release-keys" \
    BuildFingerprint=Sony/G8142/G8142:9/47.2.A.10.107/172320177:user/release-keys
