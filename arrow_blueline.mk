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
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

-include device/google/crosshatch/blueline/device-arrow.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := arrow_blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
TARGET_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=blueline \
    PRIVATE_BUILD_DESC="blueline-user 11 RQ2A.210505.002 7246365 release-keys"

BUILD_FINGERPRINT := google/blueline/blueline:11/RQ2A.210505.002/7246365:user/release-keys

$(call inherit-product, vendor/google/blueline/blueline-vendor.mk) 