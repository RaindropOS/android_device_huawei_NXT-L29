# Get the prebuilt list of APNs
$(call inherit-product, vendor/raindrop/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/raindrop/config/common.mk)

LOCAL_PATH := device/huawei/NXT-L29

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NXT-L29
PRODUCT_NAME := raindrop_NXT-L29
PRODUCT_BRAND := huawei
PRODUCT_MANUFACTURER := huawei
PRODUCT_MODEL := NXT-L29
