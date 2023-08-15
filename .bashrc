alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'
alias e='exit'
alias f='winpty fzf --preview "bat --color=always -n {}" --preview-window "right:65%" '
alias g='git '
alias l='ls -aF'
alias erc='vi ~/.bashrc'
alias src='source ~/.bashrc'
alias cdwm='cd /d/repos-mine-doc'
alias cda='cd /D/dev/arthas-packaging-3.6.1-bin'
alias jd='java -jar /H/Downloads/ProgramsDev/jd-gui-1.6.6.jar'

alias proxy='set https_proxy=http://127.0.0.1:2080; export https_proxy'
alias lg='ls -1 | grep --color=auto -i '

alias gp='grep --color=auto '
alias gpn='grep --color=auto -n '
alias gpin='grep --color=auto -in '
alias gpa='grep --color=auto -n -A '
alias gpb='grep --color=auto -n -B '

function cs() { curl "http://cht.sh/${1}"; }

alias fzf='winpty fzf '
fzf_winpty=~/.fzf/bin/fzf-winpty
function zf() { "${fzf_winpty}" "$@" ; }

# export FZF_DEFAULT_OPTS='--preview "bat --color=always -n {}" --preview-window "right:65%"'

