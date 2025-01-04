<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Gogs voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/gogs)](https://ci-apps.yunohost.org/ci/apps/gogs/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/gogs)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/gogs)

[![Gogs met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Gogs snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

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


**Geleverde versie:** 0.13.2~ynh1

**Demo:** <https://try.gogs.io/user/login>

## Schermafdrukken

![Schermafdrukken van Gogs](./doc/screenshots/screenshot.png)

## Documentatie en bronnen

- Officiele website van de app: <http://gogs.io>
- Officiele beheerdersdocumentatie: <https://gogs.io/docs>
- Upstream app codedepot: <https://github.com/gogs/gogs>
- YunoHost-store: <https://apps.yunohost.org/app/gogs>
- Meld een bug: <https://github.com/YunoHost-Apps/gogs_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
of
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
