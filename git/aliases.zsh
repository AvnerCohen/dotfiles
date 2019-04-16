# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if [[ -f $hub_path ]]
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=\"format:%C(yellow)%h%Cred%d%Creset %s %C(white) %C(cyan)%an%Creset, %C(green)%ar%Creset\""
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gaut="echo '#Repo authors sorted by number of commit.' > AUTHORS && git shortlog -n -s -e | awk '{t=$1;$1=\"\"; printf ; print \" -  \" t \" commits.\"}' >> AUTHORS"
alias jsindent='yarn prettier --single-quote --trailing-comma es5 --write "*.js"'
