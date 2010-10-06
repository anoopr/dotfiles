export PATH=/Users/anoop/Projects/bin:/opt/local/lib/postgresql83/bin:/opt/local/sbin:/opt/local/bin:$PATH
export EDITOR=/Users/anoop/Projects/bin/mvim

alias b="ssh bridgeway.joyent.us"
alias ey="ssh app.graffit.io"
alias red="ssh red"

alias mysql="mysql5 -u root"
alias rails="rails -d mysql"

alias gri="cd ~/Projects/graffitio/iphone"
alias grw="cd ~/Projects/graffitio/www"
alias grm="mysql graffitio_development"

fsapi() {
  curl -s -u "`cat ~/.fspasswd`" "https://api.foursquare.com/v1/$1" | python -mjson.tool
}
fskapi() {
  curl -s -u "`cat ~/.fspasswd`" "https://api.kong.foursquare.com:7000/v1/$1" | python -mjson.tool
}
fslapi() {
  curl -s -u "`cat ~/.fspasswd`" "https://api.localhost:8080/v1/$1" | python -mjson.tool
}

. ~/Projects/z/z.sh

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

PS1="\h:\W\$(parse_git_branch) \u\$ "

source ~/.profile.local
