#/bin/bash
 
source ~/.git-prompt.sh

export CLICOLOR=1
# 1. directory  2. symbolic link  3. socket  4. pipe  5. executable  6. block special  7. character special
# 8. executable with setuid bit set  9. executable with setgid bit set
# 10. directory writable to others, with sticky bit  11. directory writable to others, without sticky bit
# a     black
# b     red
# c     green
# d     brown
# e     blue
# f     magenta
# g     cyan
# h     light grey
# A     bold black, usually shows up as dark grey
# B     bold red
# C     bold green
# D     bold brown, usually shows up as yellow
# E     bold blue
# F     bold magenta
# G     bold cyan
# H     bold light grey
# x     bdefault foreground or background
export LSCOLORS=ExFxCxDxBxegedabagacad
 
# some more ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

alias tree='tree -C'
alias git='/usr/local/bin/git'

#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local END="\[\033[00m\]"
 
  export PS1="$BLACKBOLD[\D{%H:%M:%S}]$REDBOLD \u$GREENBOLD@\h$END:$YELLOWBOLD\w$END$PURPLEBOLD\$(__git_ps1)$END$WHITEBOLD\\$ $END"
}
prompt

#######
alias ci='cd `echo $PWD/ | sed -e "s/\/include\//\/include\//g" -e "s/\/src\//\/include\//g" -e "s/\/test\//\/include\//g"`'
alias cm='cd `echo $PWD/ | sed -e "s/\/include\/.*//g" -e "s/\/src\/.*//g" -e "s/\/test\/.*//g"`'
alias cs='cd `echo $PWD/ | sed -e "s/\/include\//\/src\//g" -e "s/\/src\//\/src\//g" -e "s/\/test\//\/src\//g"`'
alias ct='cd `echo $PWD/ | sed -e "s/\/include\//\/test\//g" -e "s/\/src\//\/test\//g" -e "s/\/test\//\/test\//g"`'
######


##
# Your previous /Users/minu/.profile file was backed up as /Users/minu/.profile.macports-saved_2014-02-03_at_13:06:33
##

# MacPorts Installer addition on 2014-02-03_at_13:06:33: adding an appropriate PATH variable for use with MacPorts.
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

