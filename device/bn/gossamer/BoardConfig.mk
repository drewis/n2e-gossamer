BUILD_NETD := false
USE_CAMERA_STUB := true

TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp 
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp 
TARGET_BOOTLOADER_BOARD_NAME := gossamer
TARGET_PROVIDES_INIT_TARGET_RC := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 316669952
BOARD_USERDATAIMAGE_PARTITION_SIZE := 881852416
BOARD_FLASH_BLOCK_SIZE := 2048

BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 initrd rw init=/init vram=16M video=omap3epfb:mode=800x600x16x14x270x0,pmic=tps65180-1p2-i2c,vcom=-2120 androidboot.console=ttyS0
#BOARD_KERNEL_BASE := 0x20000000
#BOARD_PAGE_SIZE := 0x00000800

BOARD_USES_GENERIC_AUDIO := false

# Modem
TARGET_NO_RADIOIMAGE := true

# use pre-kernel.35 vold usb mounting
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# Storage
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk0p6
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p6
BOARD_VOLD_MAX_PARTITIONS := 8
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

## Wifi
#USES_TI_WL1271 := true
#BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
#ifdef USES_TI_WL1271
#BOARD_WLAN_DEVICE           := wl1271
#BOARD_SOFTAP_DEVICE         := wl1271
#endif
#WPA_SUPPLICANT_VERSION      := VER_0_6_X
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
#WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
#WIFI_FIRMWARE_LOADER        := "wlan_loader"
#WIFI_DRIVER_MODULE_ARG      := ""

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

BOARD_HAVE_FAKE_GPS := true

USE_CAMERA_STUB := true
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
BOARD_USES_TI_OMAP_MODEM_AUDIO := false
BOARD_HAS_NO_MISC_PARTITION := true
HARDWARE_OMX := true

ifdef HARDWARE_OMX
OMX_JPEG := true
OMX_VENDOR := ti
OMX_VENDOR_INCLUDES := \
  hardware/ti/omx/system/src/openmax_il/omx_core/inc \
  hardware/ti/omx/image/src/openmax_il/jpeg_enc/inc
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
BOARD_CAMERA_LIBRARIES := libcamera
endif

BOARD_USES_UBOOT := true

TARGET_NO_BOOTLOADER := true

#TODO: needed for boot.img auto-creation: disable for now
TARGET_NO_KERNEL := true


