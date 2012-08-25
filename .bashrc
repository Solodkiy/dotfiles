# ~/.bashrc: executed by bash(1) for non-login shells.

#export PS1='\h:\w\$ '
umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

#if [ "$SSH_TTY" ]; then
  if [ ! "$STY" ] ; then
    #CHOICE=`SCREEN/choose`
    #if [ -z "$CHOICE" ]
    #then		
     # exec screen 
    #else
     # exec screen -dr $CHOICE
#	echo $CHOICE
exec screen -Rd
#   fi
  fi
#fi

export EDITOR='nano'

alias ls='ls -GAh'
alias ll='ls -l'
alias cp='cp -i'
alias cpr='cp -iR'
alias rm='rm -i'
alias rmr='rm -fr'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias ll='ls -lGAh'
alias df='df -h'

alias xmake='sudo make config-recursive install clean'

shopt -s histappend
PROMPT_COMMAND='history -a'

export HISTCONTROL="ignoredups"

## Colour Prompt
COLOR_RED="\[\033[1;31m\]"
COLOR_WHITE="\[\033[0;00m\]"
COLOR_GREEN="\[\033[0;32m\]"
COLOR_BLUE="\[\033[0;36m\]"

export PS1="${COLOR_RED}[${COLOR_BLUE}\u${COLOR_WHITE}@${COLOR_BLUE}\h${COLOR_WHITE} ${COLOR_GREEN}\w${COLOR_RED}]${COLOR_WHITE}# "


