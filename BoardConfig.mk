#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lisa

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := lisa

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sm8350
TARGET_KERNEL_CONFIG := vendor/lahaina-qgki_defconfig vendor/xiaomi_QGKI.config vendor/lisa_QGKI.config

BOARD_RAMDISK_USE_LZ4 := true
KERNEL_LD :=
TARGET_KERNEL_ADDITIONAL_FLAGS :=
TARGET_KERNEL_CLANG_COMPILE := true

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel modules
BOOT_KERNEL_MODULES := \
    hwid.ko \
    msm_drm.ko \
    goodix_core.ko \
    xiaomi_touch.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# Partition
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 113254576128

# Include proprietary files
include vendor/xiaomi/lisa/BoardConfigVendor.mk
