# Gogs for YunoHost

[![Integration level](https://dash.yunohost.org/integration/gogs.svg)](https://dash.yunohost.org/appci/app/gogs) ![](https://ci-apps.yunohost.org/ci/badges/gogs.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/gogs.maintain.svg)  
[![Install Gogs with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Gogs quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Gogs is a self-hosted Git service written in Go. Alternative to GitHub.

**Shipped version:** 0.12.3

## Screenshots

![](https://gogs.io/img/screenshots/2.png)

## Demo

* [Official demo](https://try.gogs.io/user/login)

## Notes on SSH usage
If you want to use Gogs with ssh and be able to pull/push with you ssh key, your SSH daemon must be properly configured to use private/public keys. Here is a sample configuration of `/etc/ssh/sshd_config` that works with Gogs:

```bash
PubkeyAuthentication yes
AuthorizedKeysFile %h/.ssh/authorized_keys
ChallengeResponseAuthentication no
PasswordAuthentication no
UsePAM no
```

You also need to add your public key to your Gogs profile.

If you use SSH on another port than 22, you need to add theses lines to your SSH config in `~/.ssh/config`:

```bash
Host domain.tld
    port 2222 # change this with the port you use
```

Architecture: this package is compatible with amd64, i386 and arm. The package will try to detect it with the command uname -m and fail if it can't detect the architecture. If that happens please open an issue describing your hardware and the result of the command `uname -m`.

## Private Mode
Actually it's possible to access to the git repositories by the `git` command over http also in private mode installation. It's important to know that in this mode the repository could be ALSO getted if you don't set the repository as private in the repos settings.


## Links

 * Report a bug: https://github.com/YunoHost-Apps/gogs_ynh/issues
 * App website: http://gogs.io
 * Upstream app repository: https://github.com/gogs/gogs
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
or
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```
