source ~/.bash_alias
export NVM_DIR="/Users/tekman/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
PATH=/usr/local/bin:${PATH/:\/usr\/local\/bin}
PATH=/usr/local/bin:${PATH/:\/usr\/local\/bin}
# PATH=/usr/local/bin:${PATH/:\/usr\/local\/bin} source /.bash_profile

  parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
       }

  export PS1="\[\033[0;31m\]\u\[\033[33;1m\] @ \[\033[32m\]\h\[\033[0;35m\] in \w\[\033[0;34m\]\$(parse_git_branch)\[\033[00m\]\n$"
  export CLICOLOR=1
  export LSCOLORS=ExFxBxDxCxegedabagacad

