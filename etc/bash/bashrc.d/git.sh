source /usr/share/gitstatus/gitstatus.prompt.sh

PROMPT_DIRTRIM=0

## Custom PS1
unset PS1

if [[ ${EUID} == 0 ]]; then
  PS1='\[\033[91m\]\h\[\033[00m\] '                 # light red root@host
else
  PS1='\[\033[92m\]\u@\h\[\033[00m\] '              # green user@host
fi

PS1+='\[\033[93m\]\t\[\033[00m\] '                  # yellow time
PS1+='\[\033[94m\]\w\[\033[00m\]'                   # blue current working directory
PS1+='${GITSTATUS_PROMPT:+ $GITSTATUS_PROMPT}'      # git status (requires promptvars option)

if [[ ${EUID} == 0 ]]; then
  PS1+='\n\[\033[$((92-!$?))m\]\$\[\033[00m\] '     # red/green (success/error) # (root)
else
  PS1+='\n\[\033[$((91+!$?))m\]\$\[\033[00m\] '     # green/red (success/error) $ (normal)
fi

# PS1+='\[\e]0;\u@\h: \w\a\]'                         # terminal title: user@host: dir

# PS1+='\[$(RT_CODE="$?";
# tput sc;
# if [[ ${RT_CODE} == 0 ]]; then
#   tput setaf 3;
#   printf "%*s" $((${COLUMNS}-17)) "$(date +%H:%M:%S)";
# else
#   tput setaf 196;
#   printf "%*s" $((${COLUMNS}-26)) "[${RT_CODE}]";
#   tput setaf 3;
#   printf "%*s" 9 "$(date +%H:%M:%S)";
# fi;
# tput sgr0;
# tput rc;
# exit ${RT_CODE})\]'





## for C in {0..255}; do tput setaf ${C}; echo -n "${C} "; done; tput sgr0; echo
## for C in {0..255}; do echo -en "\033[${C}m${C}\033[00m "; done; echo
