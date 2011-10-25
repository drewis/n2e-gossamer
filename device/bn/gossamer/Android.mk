ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),gossamer)
include $(call first-makefiles-under,$(call my-dir))
endif
