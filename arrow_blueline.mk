#
# Copyright (C) 2021 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

-include device/google/crosshatch/device-arrow.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := arrow_blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
TARGET_MANUFACTURER := Google

# ArrowOS additions
DEVICE_MAINTAINER := ReallySnow
$(call inherit-product-if-exists, vendor/lawnchair/lawnchair.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=blueline \
    PRIVATE_BUILD_DESC="blueline-user 12 SP1A.210812.016.C1 8029091 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:12/SP1A.210812.016.C1/8029091:user/release-keys

$(call inherit-product, vendor/google/blueline/blueline-vendor.mk)
