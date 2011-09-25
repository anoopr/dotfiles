export PATH=$HOME/Projects/bin:$HOME/.rbenv/shims:/usr/local/sbin:/usr/local/bin:$PATH

export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'

alias b="ssh bridgeway.joyent.us"
alias ey="ssh app.graffit.io"
alias red="ssh red"

alias gri="cd ~/Projects/graffitio/iphone"
alias grw="cd ~/Projects/graffitio/www"
alias grm="mysql graffitio_development"

. ~/Projects/z/z.sh

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

PS1="\h:\W\$(parse_git_branch) \u\$ "

source ~/.profile.local
