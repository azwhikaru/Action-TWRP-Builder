## Automated TWRP compilation based on Github Action

## Advertising

1. OrangeFox is [here](https://github.com/azwhikaru/Action-OFRP-Builder)

## Notice

1. Github Actions service is **NOT** unlimited so to avoid waste, don't use unverified source code in this, the best used to automate builds of repositories that are already stabilized

2. Before you make any changes, make sure that the repository you are operating in belongs to you. **"Fork" if you want to commit code, otherwise use "Use this template"**

3. issues and Pull Requests may **NOT** get a reply. If you think is really necessary, use email on my profile to contact me

4. Python 2 in Debian (Ubuntu) has been **removed**. If you are working on Android 8.1 and below, use *Recovery Build (Legacy)*

5. Don't ask any questions about your source code, such as
	- No rule to make ...
	- Image ... out of size

## Thanks to

All contributors

## Parameter Description

| Name                 | Description                                       | Example                                                      |
| -------------------- | ------------------------------------------------- | ------------------------------------------------------------ |
| `MANIFEST_URL`       | Source address                                    | https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git |
| `MANIFEST_BRANCH`    | Source branch                                     | twrp-12.1                                                    |
| `DEVICE_TREE_URL`    | Device address                                    | https://github.com/TeamWin/android_device_asus_I003D         |
| `DEVICE_TREE_BRANCH` | Device branch                                     | android-12.1                                                 |
| `DEVICE_PATH`        | Device location                                   | device/asus/I003D                                            |
| `COMMON_TREE_URL`    | Common tree address                               | https://github.com/TeamWin/android_device_asus_sm8250-common |
| `COMMON_PATH`        | Common tree location                              | device/asus/sm8250-common                                    |
| `DEVICE_NAME`        | Model name                                        | I003D                                                        |
| `MAKEFILE_NAME`      | Makefile name                                     | twrp_I003D                                                   |
| `BUILD_TARGET`       | Build Target Partition (boot/recovery/vendorboot) | recovery                                                     |

-----

## How to use

```
For example, your username is: JohnSmith
```

#### 0. If you want to commit code, click 'Fork' in the upper right corner of this repository

![image](https://user-images.githubusercontent.com/37921907/177914706-c92476c5-7e14-4fb3-be94-0c8a11dae874.png)

#### 1. If you just want to use it simply, click 'Use this template' in the upper right corner of this repository

![image](https://github.com/azwhikaru/Action-TWRP-Builder/assets/37921907/fae6ce3c-bd4c-4bbe-8050-5dd29dff2522)

#### 2. After waiting for the automatic redirection, you will see your own username

![image](https://user-images.githubusercontent.com/37921907/177915106-5bde6fc9-303c-479e-b290-22b48efd1e4e.png)

#### 3. Change the [username and email](https://github.com/CaptainThrowback/Action-Recovery-Builder/blob/main/.github/workflows/Recovery%20Build.yml#L100-L101) in the workflow to reflect your Github credentials (optional)

## Setting up SSH Keys (optional)

#### 4. Go to Settings, then select Deploy keys and select "Add deploy key" button.

#### 5. On your Android device, install [Termux](https://github.com/termux/termux-app/releases)

#### 6. Install openssh in Termux and generate ssh keys. (Do not use passphrase for keys)

NOTE: When creating the deploy key for a repository like git@github.com:owner/repo.git or https://github.com/owner/repo, put that URL into the key comment. (Hint: Try ssh-keygen ... -C "git@github.com:owner/repo.git".)
owner = your Github username

```
pkg install openssh
ssh-keygen -t ed25519 -C "git@github.com:owner/Action-Recovery-Builder.git"
```

#### 7. Add the keys to your repo. In Termux, use the following commands:

```
cd /data/data/com.termux/files/usr/etc/ssh
cat ssh_host_ed25519_key.pub
```

  Select and copy the key then paste in the box for Key.
  You can name it whatever you choose for the title.

#### 8. Now to add your private ssh key. Back in Termux:

```
cat ssh_host_ed25519_key
```

   Copy the output from Termux.

   In your browser, select *Secrets* under the Security tab.
   Select Actions
   Select New repository secret
   For the New secret name, it should be SSH_PRIVATE_KEY
   Paste the output from ssh_host_ed25519_key into the Value box.
   Then select Add secret.

## Building the Recovery

#### 9. Click 'Actions-Recovery Build'

![image](https://user-images.githubusercontent.com/37921907/177915304-8731ed80-1d49-48c9-9848-70d0ac8f2720.png)

#### 10. Click 'Run workflow' and fill in according to the above 'parameter description'

![image](https://user-images.githubusercontent.com/37921907/177915346-71c29149-78fb-4a00-996f-5d84ffc9eb8c.png)

#### 11. After filling in, click 'Run workflow' to start running

-----

## Compilation results

Can be downloaded at [Release](../../releases)

-----
