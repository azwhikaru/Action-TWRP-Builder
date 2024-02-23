# Use Github Actions to compile Custom Recovery
```
Supports TWRP, OrangeFox, PBRP & SHRP compilation and production
```
---

## Release Notes
```
= 2024-02-23
- [OrangeFox] Add input field for additional/optional flags
- [OrangeFox] Add fixes for some unique device trees

= 2024-02-17
- Add PBRP support
- Add SHRP support
- Update README to support all branches

= 2024-02-16
- Remove requirement to set git credentials
- Fix OrangeFox build

= 2024-02-16
- Clarify options in README

= 2024-02-15
- Add option to include recovery installer

= 2024-02-12
- Split custom builds into separate branches (TWRP is default, others are WIP)
- Simplify manifest branch selection and remove URL input
- Remove SSH support

= 2024/02/11
- Fix support for dependencies in AOSP trees
- Increase swap size for kernel inline builds
- Remove common tree input fields (not needed)
- OrangeFox not presently supported due to script-based sync methods

= 2023/11/28
- Add support to repopick patches from Gerrit

= 2023/10/31
- Fix build with Omni manifests
- 5.1 branch no longer supported

= 2023/07/21
- Update to ubuntu-20.04
- May not work on older twrp branches

= 2022/07/06
- Add support for 5.1 branch

= 2022/07/05
- Updated to work with trees back to 6.0
- Add conditionals to include common trees for syncing
- Update README for SSH keys

= 2022/07/04
- Updated to work with Android 12.1 AOSP minimal TWRP manifest

= 2022/05/29
- Should work correctly with Android 11 based source code

= 2022/02/03
- Due to the hardware resource limitation of GitHub action, this version cannot be compiled based on AOSP and other source codes of Android 11 and above. If necessary, please use local compilation

= 2021/10/29: 
- Refactored version 2.0
- Completely reconstruct the use logic to reduce the difficulty of use
- Optimize the parameter transfer part, now you can run multiple Workers at the same time
- TWRP compilation test passed
- OFRP compilation test passed
- SHRP compile test passed
```

-----

## Parameter Description
(not all branches require/support all of the below fields)

| Name | Description | Example |
| ------------ | -------------------- | ------------ |
| `MANIFEST_BRANCH` | Source branch | 12.1 |
| `DEVICE_TREE_URL` | Device tree address | https://github.com/TeamWin/android_device_asus_I003D |
| `DEVICE_TREE_BRANCH` | Device branch that you want to use for build (typically corresponds to the manifest branch) | android-12.1 |
| `DEVICE_PATH` | Device tree location for syncing, relative to workspace root (usually listed as "LOCAL_PATH" or "DEVICE_PATH" in BoardConfig.mk) | device/asus/I003D |
| `DEVICE_NAME` | Model name (same as twrp_`<DEVICE_NAME>`.mk from device tree) | I003D |
| `DEVICE_MAKEFILE` | Name of device-specific makefile from tree (format: `<PREFIX>_<DEVICE_NAME>`) | twrp_I003D
| `REPOPICK_PATCHES` | (Optional) Gerrit patches to include in build (space separated) - if you don't know what this means, then leave blank | 1245 1437 |
| `BUILD_TARGET` | Build Target Partition (boot/recovery/vendor_boot) | recovery |
| `RECOVERY_INSTALLER` | Include recovery installer zip | no |
| `OPTIONAL_FLAGS` | Additional/custom build commands should be entered here | export FOX_VIRTUAL_AB_DEVICE=1 |

-----

## Usage Instructions
```
For example, your username is: Run-114514
```
#### 1. Click 'Fork' in the upper right corner of this repo
![](https://i.bmp.ovh/imgs/2021/10/6b6ed9f29e732372.png)
#### 2. After waiting for the automatic redirection, you will see your own username
![](https://i.bmp.ovh/imgs/2021/10/66cfe324c0ebb69b.png)
## Building the Recovery
#### 3. Click 'Actions-Recovery Build'
![](https://i.bmp.ovh/imgs/2021/10/23896d1b66292047.png)
#### 4. Click 'Run workflow', choose the branch for the recovery that you want to build, and fill in according to the above 'Parameter Description'
![](https://i.bmp.ovh/imgs/2021/10/9cb7871267cf2f53.png)
#### 5. After filling in, click 'Run workflow' to start running

-----

## Compilation results
Can be downloaded at [Release](../../releases)

-----
## Reference

#### TeamWin Recovery Project: https://github.com/minimal-manifest-twrp
#### OrangeFox Recovery: https://gitlab.com/OrangeFox/sync.git
#### PitchBlack Recovery Project: https://github.com/PitchBlackRecoveryProject/manifest_pb.git
#### SKYHAWK Recovery Project: https://github.com/SHRP/manifest.git
