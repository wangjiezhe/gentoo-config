#!/usr/bin/env bash

ETC_DIRS=("bash/bashrc.d" "portage" "pkgdev" "sysctl.d")
ETC_FILES=("fonts/conf.d/00-windows-font-dir.conf" "vim/vimrc.local" "wsl.conf")

for d in ${ETC_DIRS[@]}; do
  cp -r "/etc/${d}" "etc/${d}"
done

for f in ${ETC_FILES[@]}; do
  cp "/etc/${f}" "etc/${f}"
done