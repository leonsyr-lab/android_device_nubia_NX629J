# Copy crypto blobs from vendor/nubia/NX629J into recovery ramdisk
LOCAL_PATH := $(call my-dir)

# Vendor binaries
$(call add-radio-file,vendor/nubia/NX629J/vendor/bin/hw/android.hardware.keymaster@4.1-service-qti)
$(call add-radio-file,vendor/nubia/NX629J/vendor/bin/hw/android.hardware.keymaster@4.0-service-qti)
$(call add-radio-file,vendor/nubia/NX629J/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti)
$(call add-radio-file,vendor/nubia/NX629J/vendor/bin/hw/vendor.qti.hardware.qseecom@1.0-service)
$(call add-radio-file,vendor/nubia/NX629J/vendor/bin/hw/vendor.qti.hardware.cryptfshw@1.0-service-qti)
