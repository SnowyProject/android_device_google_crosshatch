#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

-include device/google/crosshatch/device-arrow.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := arrow_crosshatch
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3 XL
TARGET_MANUFACTURER := Google

# ArrowOS additions
DEVICE_MAINTAINER := ReallySnow
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 12 SP1A.210812.016.A2 7979095 release-keys"

BUILD_FINGERPRINT := google/crosshatch/crosshatch:12/SP1A.210812.016.A2/7979095:user/release-keys

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk)
