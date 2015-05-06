#!/bin/sh

. $(dirname $0)/common.sh

echo 'Y' > /sys/kernel/debug/dri/drm_master_relax

echo "Launching shell with nix-* tools!"
exec env -i TERM="$TERM" chroot "$ROOT" su - "$USERNAME" # "$@"
