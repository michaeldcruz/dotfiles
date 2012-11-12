[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home"

# Maven Path Settings
export M2_HOME="/usr/local/apache-maven"
export M2="$M2_HOME/bin"
export PATH="$M2:$PATH"

export NODE_PATH="/usr/local/lib/node:/usr/local/lib/node_modules"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export PATH="/Applications/Development/Android/sdk/tools:$PATH"

export EDITOR="mate -w"

source ~/.bash/aliases
source ~/.git-completion.bash

# Navigation
alias ls='ls -lahFG'

function submit-review {
  local branch=$(parse_git_branch | sed 's/(\(.*\))/\1/')
  local extra=""
  if [ $# -gt 0 ]; then
    extra=" -r $1"
  fi
  local review_cmd="post-review --parent=develop --branch=$branch --tracking-branch=origin/develop --target-groups=Tech -o$extra"
  echo "$review_cmd"
  $review_cmd
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
TERM=xterm-256color
