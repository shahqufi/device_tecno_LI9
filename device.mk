#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/li9
KERNEL_PATH := $(DEVICE_PATH)-kernel

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

#TODO
# Overlays
PRODUCT_PACKAGES += \
	FrameworksResOverlayLG8n \
    SettingsProviderOverlayLG8n \
    SystemUIOverlayLG8n

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.transsion

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/tecno/mt6833-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/li9/li9-vendor.mk)