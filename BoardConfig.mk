USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/hw4c/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := kirin620
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

TARGET_BOOTLOADER_BOARD_NAME := hw4c

BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 coherent_pool=512K no_irq_affinity androidboot.selinux=permissive ate_enable=true
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000

BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072



# Recovery
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_PREBUILT_KERNEL := device/huawei/hw4c/kernel
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_SDCARD_INTERNAL := true

RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

# TWRP
#HAVE_SELINUX := true

TW_THEME := portrait_hdpi
TW_HAS_MTP := true
#TW_ALWAYS_RMRF := true		#forces the rm -rf option to always be on 
TW_NO_CPU_TEMP := false
#TW_NO_USB_STORAGE := true	# removes the USB storage button on devices that don't support USB storage
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
TW_MAX_BRIGHTNESS := 255
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/hw4c/graphics.c
TW_EXCLUDE_SUPERSU := true

# defaults to external storage instead of internal on dual storage devices
TW_DEFAULT_EXTERNAL_STORAGE := true

####
#BOARD_SUPPRESS_EMMC_WIPE := true
#DEVICE_RESOLUTION := 480x854

# USB Mounting
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

