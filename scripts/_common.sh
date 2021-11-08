#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

# Detect the system architecture to download the right tarball
# NOTE: `uname -m` is more accurate and universal than `arch`
# See https://en.wikipedia.org/wiki/Uname
ynh_detect_arch(){
        local architecture
        if [ -n "$(uname -m | grep 64)" ]; then
	       architecture="x86-64"
        elif [ -n "$(uname -m | grep 86)" ]; then
	       architecture="i386"
        elif [ -n "$(uname -m | grep arm)" ]; then
	       architecture="armv7"
        else
	       ynh_die "Unable to detect your achitecture, please open a bug describing \
            your hardware and the result of the command \"uname -m\"." 1
        fi
        echo $architecture
}

#=================================================
# DEFINE ALL COMMON FONCTIONS
#=================================================
 