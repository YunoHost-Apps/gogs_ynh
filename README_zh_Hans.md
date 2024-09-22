<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Gogs

[![集成程度](https://dash.yunohost.org/integration/gogs.svg)](https://ci-apps.yunohost.org/ci/apps/gogs/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/gogs.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/gogs.maintain.svg)

[![使用 YunoHost 安装 Gogs](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Gogs。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

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


**分发版本：** 0.13.0~ynh3

**演示：** <https://try.gogs.io/user/login>

## 截图

![Gogs 的截图](./doc/screenshots/screenshot.png)

## 文档与资源

- 官方应用网站： <http://gogs.io>
- 官方管理文档： <https://gogs.io/docs>
- 上游应用代码库： <https://github.com/gogs/gogs>
- YunoHost 商店： <https://apps.yunohost.org/app/gogs>
- 报告 bug： <https://github.com/YunoHost-Apps/gogs_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
或
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
