> :warning: **Note that this package will not be longer be maintened by the actual maintener.
> The idea is to migrate to [gitea](https://github.com/YunoHost-Apps/gitea_ynh) which is more featured.**

For the old install you can migrate to gitea easly by juste upgrading your actuall gogs instance with the gitea source by this command:
```
sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/gitea_ynh gogs
```
**Note that this command contains some risk of data lost. So it's important to make a backup of the app before the install.**
To make a backup you can use this command:
```
sudo yunohost backup create --debug --apps gogs
```

For the new install just install gitea by this command:
```
sudo yunohost app install -l Gitea https://github.com/YunoHost-Apps/gitea_ynh
```

## Notes on SSH usage
If you want to use Gogs with ssh and be able to pull/push with you ssh key, your ssh daemon must be properly configured to use private/public keys. Here is a sample configuration of `/etc/ssh/sshd_config` that works with Gogs:

```bash
PubkeyAuthentication yes
AuthorizedKeysFile %h/.ssh/authorized_keys
ChallengeResponseAuthentication no
PasswordAuthentication no
UsePAM no
```

You also need to add your public key to your Gogs profile.

If you use ssh on another port than 22, you need to add theses lines to your ssh config in `~/.ssh/config`:

```bash
Host domain.tld
    port 2222 # change this with the port you use
```

## Info on upgrading from the old package version (gogs <0.9.xx)
Previous versions of this package used to build Gogs from sources instead of using the pre-compiled binary. It also left data in many places which was not good. The upgrade tries to take care of moving everything to the right place **BUT it's strongly advised to do a backup of your repositories and of the Gogs directory before the update**. Your avatars and issue attachments files may be lost in the process.

Also, in some cases, Gogs will not restart properly during the update. If so, you can rerun the update safely or try to start Gogs with `sudo systemctl restart gogs.service`.
