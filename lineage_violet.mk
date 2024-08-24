#
# Copyright (C) 2018-2020 LineageOS Project
# Copyright (C) 2024 RisingOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Rising stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# RisingTechOSS Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# GMS
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true

# Maintainer
RISING_MAINTAINER=AtharvaSwamy

# MiuiCamera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="violet" \
    RISING_MAINTAINER="Atharva Swamy" \
    RISING_CHIPSET="SD 675"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
