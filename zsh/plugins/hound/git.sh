# ===== GIT commands =====

alias gfa='git fetch --all --prune --jobs=10 --prune-tags'
alias gl='f(){ git log --show-signature -n"$@";  unset -f f; }; f'
alias gpl='git pull --rebase'
alias gs='git status'
alias gphf='f(){ git push origin +"$@";  unset -f f; }; f'
alias gba='g branch -a -vv'
alias gdiff='g diff-tree -r'
alias gdiffs='g diff-tree -r --stat'
alias glbtwn='f(){ glod --no-merges "$@";  unset -f f; }; f'
# rewrite alias (modify date format)
alias glod='git log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset" --date=format-local:"%d-%m-%Y %H:%M:%S"'

function gcmpd {
  local current_branch=$(current_branch)
  local develop_branch=$(git_develop_branch)

  glod $current_branch $develop_branch
}

function gcmpm {
  local current_branch=$(current_branch)
  local main_branch=$(git_main_branch)

  glod $current_branch $main_branch
}

# glod compare the current branch with an origin
function gcmpo {
  local current_branch=$(current_branch)
  local remote="origin/${current_branch}"

  glod $current_branch $remote
}

# copy current branch name to clipboard

alias gcbn="git rev-parse --abbrev-ref HEAD | tr -d '\n' | clipcopy"
