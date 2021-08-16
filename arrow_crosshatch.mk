#
# Copyright 2021 The Android Open Source Project
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

# Inherit some common Arrow stuff.
$(call inherit-product, vendor/arrow/config/common.mk)
DEVICE_MAINTAINER := ReallySnow
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_GAPPS_ARCH := arm64

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

-include device/google/crosshatch/crosshatch/device-arrow.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := arrow_crosshatch
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3 XL
TARGET_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 11 RQ3A.210805.001.A1 7474174 release-keys"

BUILD_FINGERPRINT := google/crosshatch/crosshatch:11/RQ3A.210805.001.A1/7474174:user/release-keys

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk) 