# Encryption support
#PLATFORM_SECURITY_PATCH := 2025-12-31
#TW_INCLUDE_CRYPTO := true
#TARGET_HW_DISK_ENCRYPTION := true
#TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw

# Recovery files
# TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_PATH)/twrp

RECOVERY_VARIANT := twrp

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file" #taken from cheryl
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/soc/c900000.qcom\x2cmdss_mdp/c900000.qcom\x2cmdss_mdp:qcom\x2cmdss_fb_primary/leds/lcd-backlight/brightness" #is this necessary?
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 158
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
BOARD_SUPPRESS_SECURE_ERASE := true
# Stock kernel sometimes crashes when we toggle MTP
TW_EXCLUDE_MTP := true

# maybe we should ship the device as aura?
#TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true


# We can use the factory reset button combo to enter recovery safely
TW_IGNORE_MISC_WIPE_DATA := true

# exFAT drivers included in the kernel
TW_NO_EXFAT_FUSE := true

# Encryption support
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Debug flags
#TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

#  taken from cheryl?
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

