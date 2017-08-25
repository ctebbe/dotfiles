export PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]:\)\[\e[0m\]; else echo \[\e[31m\]:\(\[\e[0m\]; fi\`[\W]\$(__git_ps1)\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

source ~/src/aws-accounts/iam/utils.sh

# git
source ~/.git-prompt.sh
source ~/.git-completion.bash

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# AWS
# export AWS_DEFAULT_PROFILE=cb-login # main or default

alias ..="cd .."
alias ...="cd ../.."
alias vim="vim -p"
alias vi="vim"
alias rc="vim ~/.bashrc ~/.bash_profile; source ~/.bash_profile"
alias src="source ~/.bash_profile"
alias ls='ls -GFh'
alias la="ls -a"

alias swp='find . -name ".*.sw*" -print'
alias sweep='find . -name ".*.sw*" -delete'

alias mci="mvn clean install"
alias dub="docker-compose build && docker-compose up"
alias dsc="docker-machine start default && docker-compose up"
alias drm='docker rm $(docker ps -a | grep luigipipelines_worker | awk "{print $1}")'
alias drm1='docker rm $(docker ps -a | grep app | awk "{print $1}")'
alias drmc='docker rm $(docker ps -a -q)'
alias drmi='docker rmi -f $(docker images -q)'

alias master="git checkout master && git pull origin master"

alias branch="git branch"
alias gro="git remote add origin"
alias gpm="git pull origin master"
alias gpo="git push -u origin"
alias gpc='git push -u origin `gcb`'
alias gaa='git add `(git status | grep "modified:\|new file:" | awk -F":   "'" '{print"' $2'"}'"' | awk -F" " '"'{print "' $1 '"}'"')`'
alias modified='vim -p `git status | grep "modified:\|new file:" | awk -F":  " '"'{print"' $2'"}'"' | tr -d "\n"`'
alias gcb='(echo `__git_ps1` | cut -d "(" -f2 | cut -d ")" -f1)'
alias vp='vim app/jobs/fraud/precog_score_job.rb spec/jobs/fraud/precog_score_job_spec.rb'
alias drmall='docker rm -f $(docker ps -a -q) && docker rmi -f $(docker images -q)'
