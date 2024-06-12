<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Gogs per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/gogs.svg)](https://dash.yunohost.org/appci/app/gogs) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/gogs.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/gogs.maintain.svg)

[![Installa Gogs con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Gogs su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

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


**Versione pubblicata:** 0.13.0~ynh3

**Prova:** <https://try.gogs.io/user/login>

## Screenshot

![Screenshot di Gogs](./doc/screenshots/screenshot.png)

## Documentazione e risorse

- Sito web ufficiale dell’app: <http://gogs.io>
- Documentazione ufficiale per gli amministratori: <https://gogs.io/docs>
- Repository upstream del codice dell’app: <https://github.com/gogs/gogs>
- Store di YunoHost: <https://apps.yunohost.org/app/gogs>
- Segnala un problema: <https://github.com/YunoHost-Apps/gogs_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
o
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
