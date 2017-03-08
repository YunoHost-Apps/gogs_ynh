#
# Common variables
#

APPNAME="gogs"

# Gogs version
VERSION="0.10.8"

# Detect the system architecture to download the right tarball
# NOTE: `uname -m` is more accurate and universal than `arch`
# See https://en.wikipedia.org/wiki/Uname
if [ -n "$(uname -m | grep 64)" ]; then
	ARCHITECTURE="linux_amd64"
elif [ -n "$(uname -m | grep 86)" ]; then
	ARCHITECTURE="linux_386"
elif [ -n "$(uname -m | grep arm)" ]; then
	ARCHITECTURE="raspi2_armv6"
else
	echo 'Unable to detect your achitecture, please open a bug describing \
        your hardware and the result of the command "uname -m".'
	exit 1
fi

# Remote URL to fetch Gogs tarball
GOGS_BINARY_URL="https://github.com/gogits/gogs/releases/download/v${VERSION}/${ARCHITECTURE}.zip"

#
# Common helpers
#

# Download and extract Gogs binary to the given directory
# usage: extract_gogs DESTDIR
extract_gogs() {
  local DESTDIR=$1
  local TMPDIR=$(mktemp -d)

  # retrieve and extract Gogs tarball
  gogs_tarball="/tmp/gogs.zip"
  rm -f "$gogs_tarball"
  wget -q -O "$gogs_tarball" "$GOGS_BINARY_URL" \
    || ynh_die "Unable to download Gogs tarball"
  unzip -q "$gogs_tarball" -d "$TMPDIR" \
    || ynh_die "Unable to extract Gogs tarball"
  sudo rsync -a "$TMPDIR"/gogs/* "$DESTDIR"
  rm -rf "$gogs_tarball" "${TMPDIR:-/tmp/fakefile}"
}
