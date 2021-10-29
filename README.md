# 使用 Github Action 编译 Recovery

## 更新说明
```
2021/10/29: 
- 重构 2.0 版本
- 优化制作逻辑，简化流程、增强兼容性
- 优化制作体验，重写参数传递方式，方便使用
- 重写 README.md
- 完全重构使用逻辑，降低使用难度
- 支持 OrangeFox、SHRP 等的制作 (试验型功能)
```

-----

## 参数说明

| 名称 | 描述 | 示例 |
| ------------ | ---------------- | ------------ |
| `LIBRARY_NAME` | 使用的源码类型 | omni |
| `LIBRARY_URL` | 使用的源码地址 | https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git |
| `LIBRARY_BRANCH` | 使用的源码分支 | twrp-9.0 |
| `DEVICE_URL` | 使用的设备树地址 | https://github.com/azwhikaru/twrp_device_xiaomi_archytas |
| `DEVICE_BRANCH` | 使用的设备树分支 | twrp-9.0 |
| `DEVICE_PATH` | 使用的设备树的位置 | device/xiaomi/Archytas |
| `DEVICE_NAME` | 要编译的机型的名称 | Archytas |

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

------

## 编译结果
可以在 [Release](../../releases) 下载