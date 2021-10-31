# 使用 Github Action 编译 Recovery
```
支持 OFRP、SHRP、TWRP 编译制作
```
---

## 更新说明
```
= 2021/10/31
- 增加 Common 设备支持 [@Xpsoted](https://github.com/Xpsoted)
```

```
= 2021/10/30
- 优化文件打包上传方式，支持输出 OFRP、SHRP 的卡刷升级包与原始镜像
- 简化制造时的部分流程
```

```
= 2021/10/29: 
- 重构 2.0 版本
- 完全重构使用逻辑，降低使用难度
- 优化参数传递部分，现在可以同时运行多个 Worker
- TWRP 编译测试通过
- OFRP 编译测试通过
- SHRP 编译测试通过
```

-----

## 参数说明

| 名称 | 描述 | 示例 |
| ------------ | -------------------- | ------------ |
| `LIBRARY_NAME` | 源码类型 | omni |
| `LIBRARY_URL` | 源码地址 | https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git |
| `LIBRARY_BRANCH` | 源码分支 | twrp-9.0 |
| `DEVICE_URL` | 设备地址 | https://github.com/azwhikaru/twrp_device_xiaomi_archytas |
| `DEVICE_BRANCH` | 设备分支 | twrp-9.0 |
| `DEVICE_PATH` | 设备位置 | device/xiaomi/Archytas |
| `DEVICE_NAME` | 机型名称 | Archytas |

-----

## 如何使用
```
例如你的用户名为: Fun-114514
```
#### 1、点击本仓库右上角的 'Fork'
![](https://i.bmp.ovh/imgs/2021/10/6b6ed9f29e732372.png)
#### 2、等待自动跳转后，你会看到你自己的用户名
![](https://i.bmp.ovh/imgs/2021/10/66cfe324c0ebb69b.png)
#### 3、点击 'Actions - Make Recovery'
![](https://i.bmp.ovh/imgs/2021/10/23896d1b66292047.png)
#### 4、点击 'Run workflow' 并按照上文 '参数说明' 填写
![](https://i.bmp.ovh/imgs/2021/10/9cb7871267cf2f53.png)
#### 5、填写完成后点击 'Run workflow' 开始运行

-----

## 编译结果
可以在 [Release](../../releases) 下载

-----
## 备注

#### TeamWin Recovery Project: https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git
#### OrangeFox Recovery Project: https://gitlab.com/OrangeFox/Manifest.git
#### SKYHAWK Recovery Project: https://github.com/SHRP/platform_manifest_twrp_omni.git
