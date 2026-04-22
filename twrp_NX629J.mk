#
# TWRP for Nubia Red Magic 3 (NX629J) - Android 11 CN ROM
# FBE + ICE decryption with qcom common tree
#
# LESSONS LEARNED:
# 1. Do NOT use PRODUCT_COPY_FILES for files AOSP already builds
# 2. DEVICE_PATH is NOT available in product makefile scope
# 3. AOSP 12 forbids ELF files in PRODUCT_COPY_FILES entirely
#    Use cc_prebuilt_binary / cc_prebuilt_library_shared in Android.bp instead
#

# Release name
PRODUCT_RELEASE_NAME := NX629J

# Inherit TWRP common
$(call inherit-product, vendor/twrp/config/common.mk)

# Qualcomm FBE decryption packages (from qcom common tree)
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Prebuilt crypto blobs (defined in Android.bp)
# Service binaries
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service-qti \
    android.hardware.keymaster@4.0-service-qti \
    android.hardware.keymaster@3.0-service-qti \
    android.hardware.gatekeeper@1.0-service-qti \
    vendor.qti.hardware.qseecom@1.0-service \
    vendor.qti.hardware.cryptfshw@1.0-service-qti

# Vendor implementation .so
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl-qti \
    android.hardware.gatekeeper@1.0-impl-qti \
    vendor.qti.hardware.qseecom@1.0-impl \
    vendor.qti.hardware.qteeconnector@1.0-impl

# Vendor-specific .so
PRODUCT_PACKAGES += \
    libQSEEComAPI \
    libQTEEConnector_vendor \
    libqtikeymaster4 \
    libkeymasterprovision \
    libkeymasterutils \
    libkeymasterdeviceutils \
    vendor.qti.hardware.qseecom@1.0 \
    libcryptfshwcommon \
    libcryptfshwhidl \
    vendor.qti.hardware.cryptfshw@1.0 \
    libGPQTEEC_vendor \
    libGPTEE_vendor

# Device identifier
PRODUCT_DEVICE := NX629J
PRODUCT_NAME := twrp_NX629J
PRODUCT_BRAND := nubia
PRODUCT_MODEL := Nubia Red Magic 3
PRODUCT_MANUFACTURER := nubia
