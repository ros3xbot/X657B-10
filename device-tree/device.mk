#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.mt6761 \
    meta_init.modem.rc \
    init.project.rc \
    multi_init.rc \
    init.sensor_1_0.rc \
    meta_init.project.rc \
    init.aee.rc \
    meta_init.connectivity.rc \
    init.mt6761.rc \
    factory_init.connectivity.rc \
    init.connectivity.rc \
    factory_init.rc \
    init.ago.rc \
    init.mt6761.usb.rc \
    init.modem.rc \
    factory_init.project.rc \
    meta_init.rc \
    init.rc \
    init.recovery.mt6761.rc \
    ueventd.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6761:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6761

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/infinix/Infinix-X657B/Infinix-X657B-vendor.mk)
