### Variables ###

export TERM=xterm-256color
export HISTTIMEFORMAT='%F %T '
export GREP_OPTIONS='--color=auto'

### Aliases ###

alias readable='python -m json.tool'
alias ip='curl ifconfig.co'
alias gpull='git pull --rebase'
alias gpush='git push && git push --tags'

### Git stuff ###
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@[LAPTOP] \w \$(parse_git_branch)\$ "

alias recent='git for-each-ref --sort=committerdate refs/heads/ --format="%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))"'
