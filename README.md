Gogs for Yunohost
=================

Gogs is a self-hosted Git service written in Go. Alternative to Github.
Official website: <http://gogs.io/>

Requirements
------------

Functionnal instance of [Yunohost](https://yunohost.org/#/)

Installation
------------

From command line:

`sudo yunohost app install -l Gogs https://github.com/YunoHost-Apps/gogs_ynh`

Upgrade
-------
From command line:

`sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/gogs_ynh gogs`

Notes on SSH usage
------------------

If you want to use gogs with ssh and be able to pull/push with you ssh key, your ssh daemon need to be properly configured to use private/public key. Here is a sample configuration (in `/etc/ssh/sshd_config` that works with gogs:

```
PubkeyAuthentication yes
AuthorizedKeysFile %h/.ssh/authorized_keys
ChallengeResponseAuthentication no
PasswordAuthentication no
UsePAM no
```
You also need to add your public key to your gogs profile.

If you use ssh on another port than 22, you need to add theses lines to your ssh config in `~/.ssh/config`
```
Host domain.tld
    port 2222 # change this with the port you use
```

Infos on upgrade from the old package version (gogs <0.9.xx)
-------
Previous versions of this package used to build gogs from sources instead of using precompiled binary. It also leave data to many places which was not good. The upgrade try to take care of moving everything to the right place **BUT, it's strongly advised to do a backup of your repositories and of the gogs directory before the update**. Your avatars and issue attachments files may be lost in the process.

Plus, in some cases, gogs will not restart properly during the update, if so, you can rerun the update safely or try to start gogs with `sudo systemctl restart gogs.service`.

Sources and issues of the old package can be found [here](https://github.com/YunoHost-Apps/gogs_ynh_old/)

Infos
-----
Gogs v0.9.97

Yunohost forum thread: https://forum.yunohost.org/t/gogs-package-an-awesome-github-alternative/1127

Architecture: this package is compatible with amd64, i386 and arm, the package will try to detect it with the command arch and fail if it can't find it. If that happen please open an issue describing your hardware and the result of the command `arch`.

License
-------

Gogs is published under MIT License
https://github.com/gogits/gogs/blob/master/LICENSE

This package is published under MIT License


Developper infos
----------------

Please do your pull request to the dev branch.

Test or upgrade to dev version:
```
sudo su - admin
git clone -b dev https://github.com/YunoHost-Apps/gogs_ynh
# to install
sudo yunohost app install -l Gogs /home/admin/gogs_ynh
# to upgrade
sudo yunohost app upgrade -f /home/admin/gogs_ynh gogs

```
