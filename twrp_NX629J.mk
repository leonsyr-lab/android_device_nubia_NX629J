#
# TWRP for Nubia Red Magic 3 (NX629J) - Android 11 CN ROM
# FBE + ICE decryption with qcom common tree
#

# Release name
PRODUCT_RELEASE_NAME := NX629J

# Inherit TWRP common
$(call inherit-product, vendor/twrp/config/common.mk)

# Qualcomm FBE decryption packages (from qcom common tree)
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Copy vendor crypto blobs into recovery ramdisk /system/bin/ (TWRP convention for Android 10+)
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/bin/hw/android.hardware.keymaster@4.1-service-qti:recovery/root/system/bin/android.hardware.keymaster@4.1-service-qti \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/bin/hw/android.hardware.keymaster@4.0-service-qti:recovery/root/system/bin/android.hardware.keymaster@4.0-service-qti \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/bin/hw/android.hardware.keymaster@3.0-service-qti:recovery/root/system/bin/android.hardware.keymaster@3.0-service-qti \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti:recovery/root/system/bin/android.hardware.gatekeeper@1.0-service-qti \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/bin/hw/vendor.qti.hardware.qseecom@1.0-service:recovery/root/system/bin/vendor.qti.hardware.qseecom@1.0-service \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/bin/hw/vendor.qti.hardware.cryptfshw@1.0-service-qti:recovery/root/system/bin/vendor.qti.hardware.cryptfshw@1.0-service-qti \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so:recovery/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/hw/vendor.qti.hardware.qseecom@1.0-impl.so:recovery/root/vendor/lib64/hw/vendor.qti.hardware.qseecom@1.0-impl.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/hw/vendor.qti.hardware.qteeconnector@1.0-impl.so:recovery/root/vendor/lib64/hw/vendor.qti.hardware.qteeconnector@1.0-impl.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libQSEEComAPI.so:recovery/root/vendor/lib64/libQSEEComAPI.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libQTEEConnector_vendor.so:recovery/root/vendor/lib64/libQTEEConnector_vendor.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libqtikeymaster4.so:recovery/root/vendor/lib64/libqtikeymaster4.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libkeymasterprovision.so:recovery/root/vendor/lib64/libkeymasterprovision.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libkeymasterutils.so:recovery/root/vendor/lib64/libkeymasterutils.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libkeymasterdeviceutils.so:recovery/root/vendor/lib64/libkeymasterdeviceutils.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/vendor.qti.hardware.qseecom@1.0.so:recovery/root/vendor/lib64/vendor.qti.hardware.qseecom@1.0.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libcryptfshwcommon.so:recovery/root/vendor/lib64/libcryptfshwcommon.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libcryptfshwhidl.so:recovery/root/vendor/lib64/libcryptfshwhidl.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/vendor.qti.hardware.cryptfshw@1.0.so:recovery/root/vendor/lib64/vendor.qti.hardware.cryptfshw@1.0.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libGPQTEEC_vendor.so:recovery/root/vendor/lib64/libGPQTEEC_vendor.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/vendor/lib64/libGPTEE_vendor.so:recovery/root/vendor/lib64/libGPTEE_vendor.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/android.hardware.keymaster@4.1.so:recovery/root/system/lib64/android.hardware.keymaster@4.1.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/android.hardware.keymaster@4.0.so:recovery/root/system/lib64/android.hardware.keymaster@4.0.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/android.hardware.keymaster@3.0.so:recovery/root/system/lib64/android.hardware.keymaster@3.0.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/android.hardware.gatekeeper@1.0.so:recovery/root/system/lib64/android.hardware.gatekeeper@1.0.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/libkeymaster4_1support.so:recovery/root/system/lib64/libkeymaster4_1support.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/libkeymaster4support.so:recovery/root/system/lib64/libkeymaster4support.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/libkeymaster_messages.so:recovery/root/system/lib64/libkeymaster_messages.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/libkeymaster_portable.so:recovery/root/system/lib64/libkeymaster_portable.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/libsoftkeymasterdevice.so:recovery/root/system/lib64/libsoftkeymasterdevice.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/libpuresoftkeymasterdevice.so:recovery/root/system/lib64/libpuresoftkeymasterdevice.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/libgatekeeper.so:recovery/root/system/lib64/libgatekeeper.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/lib64/libgatekeeper_aidl.so:recovery/root/system/lib64/libgatekeeper_aidl.so \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/bin/gatekeeperd:recovery/root/system/bin/gatekeeperd \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/bin/wait_for_keymaster:recovery/root/system/bin/wait_for_keymaster \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/bin/vold:recovery/root/system/bin/vold \
    $(DEVICE_PATH)/vendor/nubia/NX629J/system/bin/vold_prepare_subdirs:recovery/root/system/bin/vold_prepare_subdirs

## Device identifier
PRODUCT_DEVICE := NX629J
PRODUCT_NAME := twrp_NX629J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Nubia Red Magic 3
PRODUCT_MANUFACTURER := nubia
