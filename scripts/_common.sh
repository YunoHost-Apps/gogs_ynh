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
i386)  ARCHITECTURE="386"
    ;;
armhf|armel)  ARCHITECTURE="arm"
    ;;
*) echo "Unable to detect your achitecture" && exit 1
   ;;
esac

# Remote URL to fetch Gogs tarball
GOGS_BINARY_URL="https://github.com/gogits/gogs/releases/download/v${VERSION}/linux_${ARCHITECTURE}.tar.gz"

#
# Common helpers
#

# Download and extract Gogs binary to the given directory
# usage: extract_gogs DESTDIR
extract_gogs() {
  local DESTDIR=$1

  # retrieve and extract Gogs tarball
  gogs_tarball="/tmp/gogs.tar.gz"
  rm -f "$gogs_tarball"
  wget -q -O "$gogs_tarball" "$GOGS_BINARY_URL" \
    || ynh_die "Unable to download Gogs tarball"
  sudo tar xf "$gogs_tarball" -C "$DESTDIR" --strip-components 1 \
    || ynh_die "Unable to extract Gogs tarball"
  rm -f "$gogs_tarball"
}
