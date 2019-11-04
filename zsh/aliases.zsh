alias reload!='. ~/.zshrc'
alias bi='bundle install'
alias set_heroku='~/dev/repos/shorts/set_heroku_env.sh'
alias ll='ls -lrtah'
alias gr='git pull -r'
alias pullall='for i in */.git; do ( echo $i; cd $i/..; git pull; ); done'
alias history='history -100'
alias md5sum="md5"
alias ping="prettyping"
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"
alias mp3='cd ~/Documents/Music\ for\ LifeDance'
alias music='f() {~/.dotfiles/script/music $1 };f'
alias lesson='f() {~/.dotfiles/script/lesson.js $1 };f'
alias mkvenv="$(asdf where python)/bin/virtualenv"

alias x='exit'
