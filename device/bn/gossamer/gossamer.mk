#
# Copyright (C) 2009 The Android Open Source Project
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

$(call inherit-product, build/target/product/full_base.mk)

$(call inherit-product-if-exists, vendor/bn/gossamer/gossamer-vendor.mk)

# Get a proper init file
PRODUCT_COPY_FILES += \
    device/bn/gossamer/init.gossamer.rc:root/init.gossamer.rc

# Place wifi files
PRODUCT_COPY_FILES += \
    device/bn/encore/prebuilt/wifi/tiwlan_drv.ko:/system/lib/modules/tiwlan_drv.ko \
    device/bn/encore/prebuilt/wifi/tiwlan.ini:/system/etc/wifi/tiwlan.ini \
    device/bn/encore/prebuilt/wifi/firmware.bin:/system/etc/wifi/firmware.bin

# Place prebuilt from omapzoom
PRODUCT_COPY_FILES += \
    device/bn/encore/prebuilt/GFX/system/lib/hw/overlay.omap3.so:/system/lib/hw/overlay.omap3.so

PRODUCT_PACKAGES += \
    librs_jni \
    tiwlan.ini \
    dspexec \
    libbridge \
    wlan_cu \
    libtiOsLib \
    wlan_loader \
    libCustomWifi \
    wpa_supplicant.conf \
    dhcpcd.conf \
    libOMX.TI.AAC.encode \
    libOMX.TI.AMR.encode \
    libOMX.TI.WBAMR.encode \
    libOMX.TI.JPEG.Encoder \
    libLCML \
    libOMX_Core \
    libOMX.TI.Video.Decoder \
    libOMX.TI.Video.encoder \
    libreference-ril \
    libVendor_ti_omx \
    alsa.default \
    acoustics.default

# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/clrbootcount.sh:/system/bin/clrbootcount.sh

##Boot files
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#    LOCAL_KERNEL := device/bn/gossamer/prebuilt/boot/kernel
#else
#    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#ifeq ($(TARGET_PREBUILT_BOOTLOADER),)
#    LOCAL_BOOTLOADER := device/bn/gossamer/prebuilt/boot/MLO
#else
#    LOCAL_BOOTLOADER := $(TARGET_PREBUILT_BOOTLOADER)
#endif

#ifeq ($(TARGET_PREBUILT_2NDBOOTLOADER),)
#    LOCAL_2NDBOOTLOADER := device/bn/gossamer/prebuilt/boot/u-boot.bin
#else
#    LOCAL_2NDBOOTLOADER := $(TARGET_PREBUILT_2NDBOOTLOADER)
#endif
#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel \
#    $(LOCAL_BOOTLOADER):bootloader \
#    $(LOCAL_2NDBOOTLOADER):2ndbootloader

# Set property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-flags=m=y \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.allow.mock.location=1 \
    ro.setupwizard.enable_bypass=1 \
    keyguard.no_require_sim=1 \
    wifi.interface=tiwlan0 \
    alsa.mixer.playback.master=default \
    alsa.mixer.capture.master=Analog \
    dalvik.vm.heapsize=32m \
    ro.opengles.version=131072

# Use medium-density artwork where available
PRODUCT_LOCALES += mdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_gossamer
PRODUCT_DEVICE := gossamer
