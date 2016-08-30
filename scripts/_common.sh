#
# Common variables
#

APPNAME="gogs"

# Gogs version
VERSION="0.9.71"

# Detect the system architecture to download the right tarball
case $(arch) in
x86_64)  ARCHITECTURE="amd64"
    ;;
i386|i686)  ARCHITECTURE="386"
    ;;
armhf|armel|armv7l)  ARCHITECTURE="arm"
    ;;
*) echo "Unable to detect your achitecture" && exit 1
   ;;
esac

# Remote URL to fetch Gogs tarball
GOGS_BINARY_URL="https://github.com/gogits/gogs/releases/download/v${VERSION}/linux_${ARCHITECTURE}.zip"

#
# Common helpers
#

# Download and extract Gogs binary to the given directory
# usage: extract_gogs DESTDIR
extract_gogs() {
  local DESTDIR=$1

  # retrieve and extract Gogs tarball
  gogs_tarball="/tmp/gogs.zip"
  rm -f "$gogs_tarball"
  wget -q -O "$gogs_tarball" "$GOGS_BINARY_URL" \
    || ynh_die "Unable to download Gogs tarball"
  sudo unzip "$gogs_tarball" -d "$DESTDIR" \
    || ynh_die "Unable to extract Gogs tarball"
  rm -f "$gogs_tarball"
}
