#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tissot device
$(call inherit-product, device/xiaomi/tissot/device.mk)

# Inherit some common RiceDroid stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tissot
PRODUCT_NAME := lineage_tissot
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A1
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tissot-user 8.0.0 OPR1.170623.026 8.1.10 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/tissot/tissot_sprout:8.0.0/OPR1.170623.026/8.1.10:user/release-keys"

# RiceDroid Stuffs
RICE_MAINTAINER := ZHANtech™
RICE_DEVICE := tissot
TARGET_FACE_UNLOCK_SUPPORTED := true
USE_AOSP_CLOCK := true
SUSHI_BOOTANIMATION := 1080
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_SUPPORTS_QUICK_TAP := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# GMS build flags, if none were defined the package build type will be AOSP (default: false)
WITH_GMS := true

# Opt out of google dialer support, compiler will build aosp dialer,
# package type will change from PIXEL -> GMS
TARGET_OPTOUT_GOOGLE_TELEPHONY := true

# Compiler will only build GMS playstore services, its dependencies, and Gboard app.
# package type will change from PIXEL/GMS -> CORE
TARGET_CORE_GMS := true
