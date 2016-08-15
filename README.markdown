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

Infos
-----
Gogs v0.9.71

Yunohost forum thread: https://forum.yunohost.org/t/gogs-package-an-awesome-github-alternative/1127

Architecture: this package is compatible with amd64, i386 and arm, the package will try to detect it with the command arch and fail if it can't find it.

License
-------

Gogs is published under MIT License
https://github.com/gogits/gogs/blob/master/LICENSE

This package is published under MIT License

TODO
----
 - Backup and restore script need rework

Developper infos
----------------

Please do your pull request to the dev branch.

```

Test or upgrade to dev version:
```
su - admin
git clone -b dev https://github.com/YunoHost-Apps/gogs_ynh
# to install
sudo yunohost app install -l Gogs /home/admin/gogs_ynh
# to upgrade
sudo yunohost app upgrade -f /home/admin/gogs_ynh gogs

```
