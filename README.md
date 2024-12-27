<!--
N.B.: This README was automatically generated by <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
It shall NOT be edited by hand.
-->

# Gogs for YunoHost

[![Integration level](https://apps.yunohost.org/badge/integration/gogs)](https://ci-apps.yunohost.org/ci/apps/gogs/)
![Working status](https://apps.yunohost.org/badge/state/gogs)
![Maintenance status](https://apps.yunohost.org/badge/maintained/gogs)

[![Install Gogs with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install Gogs quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

Gogs (Go Git Service) is a git-based multiplatform forge written in Go. Its particularity is that it is light and can run on an ARM card, which makes it suitable for self-hosting. Gogs has a web interface similar to that of GitHub.

### Features

- User dashboard, user profile and activity timeline.
- Repository and organization webhooks, including Slack, Discord and Dingtalk.
- Repository Git hooks, deploy keys and Git LFS.
- Repository issues, pull requests, wiki, protected branches and collaboration.
- Migrate and mirror repositories with wiki from other code hosts.
- Web editor for quick editing repository files and wiki.
- Jupyter Notebook and PDF rendering.
- Authentication via SMTP, LDAP.


**Shipped version:** 0.13.0~ynh3

**Demo:** <https://try.gogs.io/user/login>

## Screenshots

![Screenshot of Gogs](./doc/screenshots/screenshot.png)

## Documentation and resources

- Official app website: <http://gogs.io>
- Official admin documentation: <https://gogs.io/docs>
- Upstream app code repository: <https://github.com/gogs/gogs>
- YunoHost Store: <https://apps.yunohost.org/app/gogs>
- Report a bug: <https://github.com/YunoHost-Apps/gogs_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
or
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
