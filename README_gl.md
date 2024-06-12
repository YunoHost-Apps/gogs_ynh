<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Gogs para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/gogs.svg)](https://dash.yunohost.org/appci/app/gogs) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/gogs.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/gogs.maintain.svg)

[![Instalar Gogs con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Gogs de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

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


**Versión proporcionada:** 0.13.0~ynh3

**Demo:** <https://try.gogs.io/user/login>

## Capturas de pantalla

![Captura de pantalla de Gogs](./doc/screenshots/screenshot.png)

## Documentación e recursos

- Web oficial da app: <http://gogs.io>
- Documentación oficial para admin: <https://gogs.io/docs>
- Repositorio de orixe do código: <https://github.com/gogs/gogs>
- Tenda YunoHost: <https://apps.yunohost.org/app/gogs>
- Informar dun problema: <https://github.com/YunoHost-Apps/gogs_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
ou
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
