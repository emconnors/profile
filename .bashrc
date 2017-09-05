### Source stuff ###

source ~/.pwrfunc.sh

### Variables ###

export PS1=export PS1="\u@[WORKSTATION] \w \\$ "
export PATH=/usr/local/bin:$PATH
export TERM=xterm-color
export CLICOLOR=1
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

### General Aliases ###

alias readjson='python -m json.tool'

# PR-specific

alias gas1='pwr alias legacy-pufferfish-cmdline-gas-1-test-instance'
alias gas4='pwr alias legacy-pufferfish-cmdline-gas-4-instance'
alias gas5='pwr alias legacy-pufferfish-cmdline-gas-5-instance'
alias gas6='pwr alias legacy-pufferfish-cmdline-gas-6-instance'

### Git stuff ###
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@[LAPTOP] \033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias recent='git for-each-ref --sort=committerdate refs/heads/ --format="%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))"'


