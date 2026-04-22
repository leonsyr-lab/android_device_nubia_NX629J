# TWRP Device Tree for Nubia Red Magic 3 (NX629J)

## Android 11 CN ROM (NX629J_V1S_CNCommon_V3.02)

### Device Info
- **SoC**: Qualcomm Snapdragon 855 (SM8150 / msmnile)
- **Codename**: NX629J
- **Boot header**: v2
- **Partition layout**: A-only, system-as-root (NO dynamic partitions)
- **Data filesystem**: f2fs with FBE + ICE encryption
- **Bootloader**: Unlocked, AVB algorithm=NONE

### Crypto Support
- **Keymaster**: 4.1 (android.hardware.keymaster@4.1-service-qti)
- **Gatekeeper**: 1.0 (android.hardware.gatekeeper@1.0-service-qti)
- **QSEECOM**: vendor.qti.hardware.qseecom@1.0
- **CryptfsHW**: vendor.qti.hardware.cryptfshw@1.0 (ICE accelerator)
- **Encryption**: File-Based Encryption (FBE) with Inline Crypto Engine (ICE)

### Build Instructions
Use with TWRP AOSP manifest (twrp-12.1 branch) or GitHub Actions.

### Known Issue
NX629J bootloader rejects ANY modified recovery image. This tree produces
a working TWRP with crypto support, but the image may need the stock AVB
footer transplanted to pass bootloader verification.
