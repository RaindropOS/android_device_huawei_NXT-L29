USE_CAMERA_STUB := true


# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_EXTRA_CFLAGS := -mtune=cortex-a15 -mcpu=cortex-a15

BOARD_VENDOR := huawei
BOARD_VENDOR_PLATFORM := hi3650
TARGET_BOOTLOADER_BOARD_NAME := hi3650
TARGET_BOARD_PLATFORM := hi3650
TARGET_SOC := kirin950

TARGET_BOOTLOADER_BOARD_NAME := NEXT,NXT-L29

# Kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/next/kernel
BOARD_KERNEL_CMDLINE  := 'mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p6(modemnvm_factory),p9(splash),p10(modemnvm_backup),p11(modemnvm_img),p12(modemnvm_system),p14(3rdmodemnvm),p15(3rdmodemnvmbkp),p18(modem_om),p21(modemnvm_update),p31(modem),p32(modem_dsp),p35(3rdmodem) loglevel=4 androidboot.selinux=enforcing'
BOARD_KERNEL_BASE     := 0x00478000
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x07588000
BOARD_KERNEL_PAGESIZE := 2048

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26935820288
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true

#TWRP
BOARD_HAS_NO_SELECT_BUTTON := true
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
TW_NO_USB_STORAGE := true
BOARD_HAS_LARGE_FILESYSTEM := true
TW_BRIGHTNESS_PATH := "/sys/devices/platform/hisi_fb.1048577/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
TW_MAX_BRIGHTNESS := 255
