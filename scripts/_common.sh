#
# Common variables
#
app=$YNH_APP_INSTANCE_NAME
final_path="/opt/$app"
dbname=$app
dbuser=$app
REPO_PATH="/home/$app/repositories"
DATA_PATH="/home/$app/data"

# Detect the system architecture to download the right tarball
# NOTE: `uname -m` is more accurate and universal than `arch`
# See https://en.wikipedia.org/wiki/Uname
if [ -n "$(uname -m | grep 64)" ]; then
	architecture="x86-64"
elif [ -n "$(uname -m | grep 86)" ]; then
	architecture="i386"
elif [ -n "$(uname -m | grep arm)" ]; then
	architecture="arm"
else
	ynh_die "Unable to detect your achitecture, please open a bug describing \
        your hardware and the result of the command \"uname -m\"." 1
fi

create_dir() {
    mkdir -p "$final_path/custom/conf"
    mkdir -p "$REPO_PATH"
    mkdir -p "$DATA_PATH/avatars"
    mkdir -p "$DATA_PATH/attachments"
    mkdir -p "/var/log/$app"
}

config_nginx() {
    if [ "$path_url" != "/" ]
    then
        ynh_replace_string "^#sub_path_only" "" "../conf/nginx.conf"
    fi
    ynh_add_nginx_config
}

config_gogs() {
    cp ../conf/app.ini "$final_path"/custom/conf
    ynh_replace_string "yuno_repo_path" "$REPO_PATH" "$final_path"/custom/conf/app.ini
    if [ "$path_url" = "/" ]
    then
        ynh_replace_string "yuno_url" "$domain" "$final_path"/custom/conf/app.ini
    else
        ynh_replace_string "yuno_url" "$domain${path_url%/}" "$final_path"/custom/conf/app.ini
    fi
    ynh_replace_string "yuno_dbpdw" "$dbpass" "$final_path"/custom/conf/app.ini
    ynh_replace_string "yuno_dbuser" "$dbuser" "$final_path"/custom/conf/app.ini
    ynh_replace_string "yuno_domain" "$domain" "$final_path"/custom/conf/app.ini
    ynh_replace_string "yuno_key" "$key" "$final_path"/custom/conf/app.ini
    ynh_replace_string "yuno_data_path" "$DATA_PATH" "$final_path"/custom/conf/app.ini
}

set_permission() {
    chown -R $app:$app "$final_path"
    chown -R $app:$app "/home/$app"
    chown -R $app:$app "/var/log/$app"
    chmod u=rwX,g=rX,o= "$final_path"
    chmod u=rwX,g=rX,o= "/home/$app"
    chmod u=rwX,g=rX,o= "/var/log/$app"
}

# Remote URL to fetch Gogs tarball
# GOGS_BINARY_URL="https://github.com/gogits/gogs/releases/download/v${VERSION}/${architecture}.zip"

#
# Common helpers
#

# Download and extract Gogs binary to the given directory
# # usage: extract_gogs DESTDIR
# extract_gogs() {
# #   local DESTDIR=$1
# #   local TMPDIR=$(mktemp -d)
# #
# #   # retrieve and extract Gogs tarball
# #   gogs_tarball="/tmp/gogs.zip"
# #   rm -f "$gogs_tarball"
# #   wget -q -O "$gogs_tarball" "$GOGS_BINARY_URL" \
# #     || ynh_die "Unable to download Gogs tarball"
# #   unzip -q "$gogs_tarball" -d "$TMPDIR" \
# #     || ynh_die "Unable to extract Gogs tarball"
# #   sudo rsync -a "$TMPDIR"/gogs/* "$DESTDIR"
# #   rm -rf "$gogs_tarball" "${TMPDIR:-/tmp/fakefile}"
# 
# }
