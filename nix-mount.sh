#!/bin/sh

. $(dirname $0)/common.sh

mountdir() {
  mkdir -p $ROOT/$1
  mount --bind /$1 $ROOT/$1
}

mountdir bin
mountdir lib64
mountdir usr/bin
mountdir usr/lib64
mountdir usr/libexec
mountdir usr/share
mountdir etc
mountdir var
mountdir run

mountdir tmp
mount -i -o "remount,exec" $ROOT/tmp

mountdir proc
mountdir dev
mount --bind /dev/pts $ROOT/dev/pts
mountdir sys

mountdir home/chronos/user
mount -i -o "remount,exec" $ROOT/home/chronos/user
