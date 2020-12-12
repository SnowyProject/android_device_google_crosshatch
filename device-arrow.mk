#
# Copyright (C) 2017 The Android Open-Source Project
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

# Active Edge
PRODUCT_PACKAGES += \
    ElmyraService

# AV media
PRODUCT_PACKAGES += \
    libavservices_minijail_vendor:32 \
    libcodec2_hidl@1.0.vendor:32 \
    libcodec2_vndk.vendor:64 \
    libmediaplayerservice

# Bluetooth
PRODUCT_PACKAGES += \
    com.qualcomm.qti.bluetooth_audio@1.0 \
    vendor.qti.hardware.bluetooth_audio@2.0.vendor

# Context Hub Runtime Environment
PRODUCT_PACKAGES += \
    chre

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    vendor.display.config@1.8

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    media.mediadrmservice.enable=true

# EUICC
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.euicc.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.euicc.xml

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport.vendor \
    libhwbinder.vendor

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.identity-support-lib.vendor:64 \
    libnos_client_citadel:64 \
    libcppbor.vendor:64 \
    libteeui_hal_support.vendor:64 \
    nos_app_avb:64 \
    nos_app_identity:64 \
    nos_app_keymaster:64 \
    nos_app_weaver:64 \
    vendor.qti.hardware.cryptfshw@1.0 \
    vendor.qti.hardware.cryptfshw@1.0.vendor

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/crosshatch/overlay-arrow

# Parts
PRODUCT_PACKAGES += \
    GoogleParts

# Perf
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@1.0 \
    vendor.qti.hardware.perf@1.0.vendor \
    vendor.qti.hardware.perf@2.0.vendor

# Utilities
PRODUCT_PACKAGES += \
    libjson \
    libprotobuf-cpp-full-vendorcompat \
    libtinyxml

# WiFi
PRODUCT_PACKAGES += \
    libwifi-hal:64 \
    libwifi-hal-qcom
