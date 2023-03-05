#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/lisa

# OTA assert
TARGET_OTA_ASSERT_DEVICE := lisa

# Board
TARGET_BOOTLOADER_BOARD_NAME := lisa

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm8350_crystal
TARGET_KERNEL_CONFIG += vendor/lisa_QGKI.config

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel modules
BOOT_KERNEL_MODULES := \
    msm_drm.ko \
    hwid.ko \
    goodix_core.ko \
    xiaomi_touch.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partition
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 113254576128

# Include proprietary files
include vendor/xiaomi/lisa/BoardConfigVendor.mk
