#!/usr/bin/env bash

cp -r /etc/portage etc
cp -r /etc/pkgdev etc
cp /etc/sysctl.d/*.conf etc/sysctl.d
cp /etc/bash/bashrc.d/{git,ip,lfs,mathematica} etc/bash/bashrc.d

ETC_FILES=("fonts/conf.avail/09-windows-font-dir.conf" "vim/vimrc.local" "wsl.conf")

for f in ${ETC_FILES[@]}; do
  cp "/etc/${f}" "etc/${f}"
done