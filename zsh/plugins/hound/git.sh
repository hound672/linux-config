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
