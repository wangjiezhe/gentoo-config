alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias l="ls -lh"
alias ll="ls -lAh"
alias la="ls -A"
alias dfh="df -Th"
alias cman="man -L zh_CN"

duh() {
		du -d 1 -h $* | sort -h
}

mkcd() {
		dir="$*"
		mkdir -pv "$dir" && cd "$dir"
}

psg () {
		ps -eaf | grep -i "$@" | grep -v -e "grep .* -i"
}

psgw () {
		ps auxww | grep -i "$@" | grep -v -e "grep .* -i"
}

alias emin="emerge -avq"
alias ems="emerge -s"
alias emsync="emerge --sync"
alias emup="emerge -auvqDN --with-bdeps=y @world"
alias emcl="emerge -a --depclean"

#alias ipython="EPYTHON=python3.10 /usr/bin/ipython"

alias glgga="git log --stat --graph --decorate --all"

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups
# Big history
export HISTSIZE=10000
export HISTFILESIZE=10000
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
PROMPT_COMMAND=${PROMPT_COMMAND:+"$PROMPT_COMMAND;"}'history -a'

