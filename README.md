<h1 align="center"> 利用 Github Actions 编译 Recovery</h1>

---

<p align="center">
	Use Github Action to build recovery
</p>


## 配置

配置文件位于仓库根目录 [Config.json](config.json)

| 名称               | 类型    | 描述                                                         |
| ------------------ | ------- | ------------------------------------------------------------ |
| `twrp_url`     | String  | 编译使用的源码地址                                        |
| `twrp_branch`  | String  | 编译使用的源码分支                                        |
| `git_username` | String  | Git 的用户名                                            |
| `git_email`    | String  | Git 的邮箱<sub>（Github 可使用`Github ID + Github用户名@users.noreply.github.com`）</sub> |
| `use_own_dt`   | Boolean | 指示是否使用个人设备树<sub>（此项为 `true` 后以下三项起效）</sub>  |
| `dt_url`           | String  | 您使用的设备树的地址<sub>（格式: `USER/REPO` ）</sub>                |
| `dt_branch`    | String  | 您使用的设备树的分支                                         |
| `dt_remote`        | String  | 您使用设备树的存储库<sub>（如 `github/gitlab` ）</sub>               |
| `dt_path`      | String  | 指示设备树本地保存位置<sub>（示例 `device/huawei/kiwi` ）</sub>      |
| `device_code`  | String  | 您将要编译机型的机型代号                                     |
| `use_omin_head`  | Boolean  | 指示设备树的 `*.mk` 文件是否包含 `omni_` 头<sub>（例如你的 `*.mk` 文件如同 `omni_kiwi.mk` 则需开启此选项）</sub>                                     |
| `use_repair_manifest`  | Boolean | 是否下载修复环境<sub>（注意，此项目为后面三项的前置条件。此项为 `true` 后以下四项起效） </sub>                              |
| `fix_product`  | Boolean | 指示是否修复无法找到设备的问题                               |
| `fix_misscom`  | Boolean | 指示是否修复缺少 `device/qcom/common` 的问题                   |
| `fix_busybox`      | Boolean | 指示是否修复缺少 `busybox` 的问题                              |
| `fix_branch`       | String  | 指示修复以上问题所使用的分支<sub>（你一般无需修改此项，只需要替换 `Android` 版本对应分支即可） </sub>                                 |

## 开始

Fork 此仓库后，修改 [Config.json](config.json)，点击右上角 Star 就会开始，你可以在 [Worker](../../actions) 界面查看进度

## 编译结果
可以在 [Release](../../releases) 下载
