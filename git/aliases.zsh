alias glog="git log --graph --pretty=\"format:%C(yellow)%h%Cred%d%Creset %s %C(white) %C(cyan)%an%Creset, %C(green)%ar%Creset\""
alias jsindent='yarn prettier --single-quote --trailing-comma es5 --write "*.js"'
alias gpatch='git commit -a --fixup HEAD ; GIT_SEQUENCE_EDITOR=touch git rebase --interactive --autosquash HEAD~2'