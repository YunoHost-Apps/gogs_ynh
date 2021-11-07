# Gogs pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/gogs.svg)](https://dash.yunohost.org/appci/app/gogs) ![](https://ci-apps.yunohost.org/ci/badges/gogs.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/gogs.maintain.svg)  
[![Installer Gogs avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gogs)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Gogs rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Forge Git légère

**Version incluse :** 0.12.3~ynh1

**Démo :** https://try.gogs.io/user/login

## Captures d'écran

![](./doc/screenshots/screenshot.png)

## Documentations et ressources

* Site officiel de l'app : http://gogs.io
* Documentation officielle de l'admin : https://gogs.io/docs
* Dépôt de code officiel de l'app : https://github.com/gogs/gogs
* Documentation YunoHost pour cette app : https://yunohost.org/app_gogs
* Signaler un bug : https://github.com/YunoHost-Apps/gogs_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/gogs_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
ou
sudo yunohost app upgrade gogs -u https://github.com/YunoHost-Apps/gogs_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps