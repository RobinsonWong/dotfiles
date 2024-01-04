alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'
alias e='exit'
alias d='dirs -v'
alias f='winpty fzf --preview "bat --color=always -n {}" --preview-window "right:65%" '
alias g='git '
alias p='pushd '
alias l='ls -aF'
alias erc='vi ~/.bashrc'
alias src='source ~/.bashrc'
alias cdwm='cd /d/repos-mine-doc'
alias cda='cd /D/dev/arthas-packaging-3.6.1-bin'
alias jd='java -jar /H/Downloads/ProgramsDev/jd-gui-1.6.6.jar &'

alias proxy='set https_proxy=http://127.0.0.1:2080; export https_proxy'
alias lg='ls -1 | grep --color=auto -i '

alias gcl='git clone --depth=1 '
alias gp='grep --color=auto '
alias gpi='grep --color=auto -i '
alias gpn='grep --color=auto -n '
alias gpin='grep --color=auto -in '
alias gpa='grep --color=auto -n -A '
alias gpb='grep --color=auto -n -B '
alias gpc='grep --color=auto -n -B '
alias ctags='ctags --recurse=yes --exclude=.git --exclude=.svn --exclude=target/* --exclude=.github  --exclude=logs/*'

function cs() { curl "http://cht.sh/${1}"; }

alias fzf='winpty fzf '
fzf_winpty=~/.fzf/bin/fzf-winpty
function zf() { "${fzf_winpty}" "$@" ; }

function v() { vim $(zf); }

# export FZF_DEFAULT_OPTS='--preview "bat --color=always -n {}" --preview-window "right:65%"'

function qcd() {
  case "$1" in 
    notes)
      cd /d/repos-mine-doc
      ;;
    github)
      cd /d/repos-github
      ;;
    myrepo)
      cd /d/repos-mine
      ;;
    opensource)
      cd /d/code-opensource
      ;;
    bookcode)
      cd /d/code-books-source-code
      ;;
    pdf)
      cd /h/books
      ;;
    *)
      echo "qcd: directory '$1' not exist"
      ;;
  esac
}
complete -W "notes github myrepo opensource bookcode pdf" qcd

function initpushd() {
  pushd /d/repos-mine-doc
  pushd /d/repos-github
  pushd /d/repos-mine
  pushd /d/code-opensource
  pushd /d/code-books-source-code
  pushd /h/books
  dirs -v
}

