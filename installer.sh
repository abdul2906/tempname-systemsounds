#!/bin/sh

[ "$EUID" -ne 0 ] && echo "Root permission are required for installation" && exit 1

function fail () {
    echo "Installation failed."
    exit 1
}

mkdir -vp /usr/share/sounds/tempname_systemsounds/ || fail
cp -vf ./index.theme /usr/share/sounds/tempname_systemsounds || fail
cp -vrf ./stereo /usr/share/sounds/tempname_systemsounds || fail

echo "Installation successful."
exit 0

