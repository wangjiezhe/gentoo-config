alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias l="ls -lh"
alias ll="ls -lAh"
alias l.="ls -d .*"
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

alias glgg="git log --stat --graph --decorate"
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

export PATH=$HOME/.local/bin:$PATH

alias dfc="/usr/bin/dfc -dT"

export TF_ENABLE_ONEDNN_OPTS=0

export HF_ENDPOINT=https://hf-mirror.com

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

