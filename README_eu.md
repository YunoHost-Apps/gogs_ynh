<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Gogs YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/gogs.svg)](https://ci-apps.yunohost.org/ci/apps/gogs/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/gogs.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/gogs.maintain.svg)

[![Instalatu Gogs YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Gogs YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

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


**Paketatutako bertsioa:** 0.13.0~ynh3

**Demoa:** <https://try.gogs.io/user/login>

## Pantaila-argazkiak

![Gogs(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <http://gogs.io>
- Administratzaileen dokumentazio ofiziala: <https://gogs.io/docs>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/gogs/gogs>
- YunoHost Denda: <https://apps.yunohost.org/app/gogs>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/gogs_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
edo
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
