<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Gogs dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/gogs)](https://ci-apps.yunohost.org/ci/apps/gogs/)
![Status działania](https://apps.yunohost.org/badge/state/gogs)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/gogs)

[![Zainstaluj Gogs z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Gogs na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

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


**Dostarczona wersja:** 0.13.2~ynh1

**Demo:** <https://try.gogs.io/user/login>

## Zrzuty ekranu

![Zrzut ekranu z Gogs](./doc/screenshots/screenshot.png)

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <http://gogs.io>
- Oficjalna dokumentacja dla administratora: <https://gogs.io/docs>
- Repozytorium z kodem źródłowym: <https://github.com/gogs/gogs>
- Sklep YunoHost: <https://apps.yunohost.org/app/gogs>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/gogs_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
lub
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
