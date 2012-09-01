export PATH=./bin:$HOME/Projects/bin:$HOME/.rbenv/shims:/usr/local/sbin:/usr/local/bin:$PATH

export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

. ~/Projects/z/z.sh

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

PS1="\h:\W\$(parse_git_branch) \u\$ "

source ~/.profile.local
