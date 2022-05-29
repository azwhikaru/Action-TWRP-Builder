# Use Github Action to compile Recovery
```
Support OFRP, SHRP, TWRP compilation and production
```
---

## Release Notes
```
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
| `MANIFEST_TYPE` | Source Type | omni |
| `MANIFEST_URL` | Source address| https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git |
| `MANIFEST_BRANCH` | Source branch | twrp-9.0 |
| `DEVICE_TREE_URL` | Device address| https://github.com/azwhikaru/twrp_device_xiaomi_archytas |
| `DEVICE_TREE_BRANCH` | Device branch | twrp-9.0 |
| `DEVICE_PATH` | Device location | device/xiaomi/Archytas |
| `DEVICE_NAME` | Model name | Archytas |

-----

## how to use
```
For example, your username is: Fun-114514
```
#### 1. Click'Fork' in the upper right corner of this warehouse
![](https://i.bmp.ovh/imgs/2021/10/6b6ed9f29e732372.png)
#### 2. After waiting for the automatic redirection, you will see your own username
![](https://i.bmp.ovh/imgs/2021/10/66cfe324c0ebb69b.png)
#### 3. Click'Actions-Make Recovery'
![](https://i.bmp.ovh/imgs/2021/10/23896d1b66292047.png)
#### 4. Click'Run workflow' and fill in according to the above'parameter description'
![](https://i.bmp.ovh/imgs/2021/10/9cb7871267cf2f53.png)
#### 5. After filling in, click'Run workflow' to start running

-----

## Compilation results
Can be downloaded at [Release](../../releases)

-----
## Remark

#### TeamWin Recovery Project: https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git
#### OrangeFox Recovery Project: https://gitlab.com/OrangeFox/Manifest.git
#### SKYHAWK Recovery Project: https://github.com/SHRP/platform_manifest_twrp_omni.git
