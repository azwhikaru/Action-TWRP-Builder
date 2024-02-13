# Use Github Actions to compile Recovery
```
Support TWRP compilation and production
(PBRP, SHRP, & OrangeFox support are WIP)
```
---

## Release Notes
```
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

| Name | Description | Example |
| ------------ | -------------------- | ------------ |
| `MANIFEST_BRANCH` | Source branch | 12.1 |
| `DEVICE_TREE_URL` | Device address | https://github.com/TeamWin/android_device_asus_I003D |
| `DEVICE_TREE_BRANCH` | Device branch | android-12.1 |
| `DEVICE_PATH` | Device location | device/asus/I003D |
| `DEVICE_NAME` | Model name | I003D |
| `REPOPICK_PATCHES` | Gerrit patches to include in build (space separated) | 1245 1437 |
| `BUILD_TARGET` | Build Target Partition (boot/recovery/vendor_boot) | recovery |

-----

## Usage Instructions
```
For example, your username is: Run-114514
```
#### 1. Click'Fork' in the upper right corner of this repo
![](https://i.bmp.ovh/imgs/2021/10/6b6ed9f29e732372.png)
#### 2. After waiting for the automatic redirection, you will see your own username
![](https://i.bmp.ovh/imgs/2021/10/66cfe324c0ebb69b.png)
#### 3. Change the [username and email](https://github.com/CaptainThrowback/Action-Recovery-Builder/blob/main/.github/workflows/Recovery%20Build.yml#L106-L107) in the workflow to reflect your Github credentials
## Building the Recovery
#### 4. Click'Actions-Recovery Build'
![](https://i.bmp.ovh/imgs/2021/10/23896d1b66292047.png)
#### 5. Click'Run workflow' and fill in according to the above'parameter description'
![](https://i.bmp.ovh/imgs/2021/10/9cb7871267cf2f53.png)
#### 6. After filling in, click'Run workflow' to start running

-----

## Compilation results
Can be downloaded at [Release](../../releases)

-----
## Remark

#### TeamWin Recovery Project: https://github.com/minimal-manifest-twrp
#### PitchBlack Recovery Project: https://github.com/PitchBlackRecoveryProject/manifest_pb.git
#### SKYHAWK Recovery Project: https://github.com/SHRP/manifest.git
