#!/usr/bin/env bash

rm -r etc/portage
rm -r etc/pkgdev
rm -r etc/sysctl.d
rm -r etc/bash/bashrc.d

mkdir -p etc/sysctl.d
mkdir -p etc/bash/bashrc.d

cp -r /etc/portage etc
cp -r /etc/pkgdev etc
cp /etc/sysctl.d/*.conf etc/sysctl.d
cp /etc/bash/bashrc.d/{fzf,git,ip,lfs,mathematica}.sh etc/bash/bashrc.d

ETC_FILES=("fonts/conf.avail/09-windows-font-dir.conf" "vim/vimrc.local" "wsl.conf")
LOCAL_BIN_SCRIPTS=("cld" "chroot-mips64el")

for f in ${ETC_FILES[@]}; do
  cp "/etc/${f}" "etc/${f}"
done

for f in ${LOCAL_BIN_SCRIPTS[@]}; do
  cp "/usr/local/bin/${f}" "usr/local/bin/{$f}"
done