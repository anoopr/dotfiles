export PATH=/Users/anoop/Projects/bin:/opt/local/sbin:/opt/local/bin:$PATH

alias b="ssh bridgeway.joyent.us"
alias ey="ssh app.graffit.io"
alias red="ssh red"

alias mysql="mysql5 -u root"
alias rails="rails -d mysql"

alias gri="cd ~/Projects/graffitio/iphone"
alias grw="cd ~/Projects/graffitio/www"
alias grm="mysql graffitio_development"


bscp () { scp "$1" anoop@bridgeway.joyent.us:$2 ; }

. ~/Projects/z/z.sh

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

PS1="\h:\W\$(parse_git_branch) \u\$ "
