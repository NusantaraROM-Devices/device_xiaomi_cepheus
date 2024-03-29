#
# Copyright (C) 2020 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cepheus device
$(call inherit-product, device/xiaomi/cepheus/device.mk)

# Inherit some common NAD stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Google Camera
$(call inherit-product-if-exists, vendor/GoogleCamera/GoogleCamera.mk)

# NAD Stuff
NAD_BUILD_TYPE := OFFICIAL

# Device identifier
PRODUCT_NAME := nad_cepheus
PRODUCT_DEVICE := cepheus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9
PRODUCT_MANUFACTURER := Xiaomi

# Gapps Stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK := true
TARGET_FOD_ANIMATIONS := true
TARGET_USES_BLUR := true

# Include firmware
$(call inherit-product, vendor/xiaomi-firmware/cepheus/firmware.mk)
