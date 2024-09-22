<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Gogs para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/gogs.svg)](https://ci-apps.yunohost.org/ci/apps/gogs/) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/gogs.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/gogs.maintain.svg)

[![Instalar Gogs con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarGogs rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

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


**Versión actual:** 0.13.0~ynh3

**Demo:** <https://try.gogs.io/user/login>

## Capturas

![Captura de Gogs](./doc/screenshots/screenshot.png)

## Documentaciones y recursos

- Sitio web oficial: <http://gogs.io>
- Documentación administrador oficial: <https://gogs.io/docs>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/gogs/gogs>
- Catálogo YunoHost: <https://apps.yunohost.org/app/gogs>
- Reportar un error: <https://github.com/YunoHost-Apps/gogs_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
o
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
