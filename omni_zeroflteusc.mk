$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/zeroflteusc/overlay

LOCAL_PATH := device/samsung/zeroflteusc
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/init.recovery.samsungexynos7420.rc:root/init.recovery.samsungexynos7420.rc \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/recovery.fstab
    

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := omni_zeroflteusc
PRODUCT_DEVICE := zeroflteusc
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := zeroflteusc
