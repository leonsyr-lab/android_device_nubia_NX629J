#
# TWRP for Nubia Red Magic 3 (NX629J) - Android 11 CN ROM
# FBE + ICE decryption with qcom common tree
#
# LESSON LEARNED: Do NOT use PRODUCT_COPY_FILES for any file that the
# AOSP build system already builds (HIDL stubs, keymaster support libs,
# gatekeeper libs, vold, etc.). Only use it for vendor-proprietary blobs.
# Overlapping targets cause "overriding commands" build failures.
#

# Release name
PRODUCT_RELEASE_NAME := NX629J

# Inherit TWRP common
$(call inherit-product, vendor/twrp/config/common.mk)

# Qualcomm FBE decryption packages (from qcom common tree)
# These handle: init.rc imports, prepdecrypt.sh, service startup, relink
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Copy ONLY vendor-proprietary blobs that are NOT built by AOSP.
# Service binaries (QTI-specific, not in AOSP source):
PRODUCT_COPY_FILES += \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/bin/hw/android.hardware.keymaster@4.1-service-qti:recovery/root/system/bin/android.hardware.keymaster@4.1-service-qti \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/bin/hw/android.hardware.keymaster@4.0-service-qti:recovery/root/system/bin/android.hardware.keymaster@4.0-service-qti \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/bin/hw/android.hardware.keymaster@3.0-service-qti:recovery/root/system/bin/android.hardware.keymaster@3.0-service-qti \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti:recovery/root/system/bin/android.hardware.gatekeeper@1.0-service-qti \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/bin/hw/vendor.qti.hardware.qseecom@1.0-service:recovery/root/system/bin/vendor.qti.hardware.qseecom@1.0-service \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/bin/hw/vendor.qti.hardware.cryptfshw@1.0-service-qti:recovery/root/system/bin/vendor.qti.hardware.cryptfshw@1.0-service-qti

# Vendor implementation .so files (QTI-specific, not in AOSP):
PRODUCT_COPY_FILES += \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so:recovery/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/hw/vendor.qti.hardware.qseecom@1.0-impl.so:recovery/root/vendor/lib64/hw/vendor.qti.hardware.qseecom@1.0-impl.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/hw/vendor.qti.hardware.qteeconnector@1.0-impl.so:recovery/root/vendor/lib64/hw/vendor.qti.hardware.qteeconnector@1.0-impl.so

# Vendor-specific .so files (definitely not in AOSP):
PRODUCT_COPY_FILES += \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libQSEEComAPI.so:recovery/root/vendor/lib64/libQSEEComAPI.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libQTEEConnector_vendor.so:recovery/root/vendor/lib64/libQTEEConnector_vendor.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libqtikeymaster4.so:recovery/root/vendor/lib64/libqtikeymaster4.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libkeymasterprovision.so:recovery/root/vendor/lib64/libkeymasterprovision.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libkeymasterutils.so:recovery/root/vendor/lib64/libkeymasterutils.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libkeymasterdeviceutils.so:recovery/root/vendor/lib64/libkeymasterdeviceutils.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/vendor.qti.hardware.qseecom@1.0.so:recovery/root/vendor/lib64/vendor.qti.hardware.qseecom@1.0.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libcryptfshwcommon.so:recovery/root/vendor/lib64/libcryptfshwcommon.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libcryptfshwhidl.so:recovery/root/vendor/lib64/libcryptfshwhidl.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/vendor.qti.hardware.cryptfshw@1.0.so:recovery/root/vendor/lib64/vendor.qti.hardware.cryptfshw@1.0.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libGPQTEEC_vendor.so:recovery/root/vendor/lib64/libGPQTEEC_vendor.so \
    device/nubia/NX629J/vendor/nubia/NX629J/vendor/lib64/libGPTEE_vendor.so:recovery/root/vendor/lib64/libGPTEE_vendor.so

# Device identifier
PRODUCT_DEVICE := NX629J
PRODUCT_NAME := twrp_NX629J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Nubia Red Magic 3
PRODUCT_MANUFACTURER := nubia
