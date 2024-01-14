# ===== Docker commands =====

alias dsa="docker ps -a -q | xargs docker stop"
alias dra="docker ps -a -q | xargs docker rm"
alias docker_rmi_empty='docker images -f "dangling=true" -q | xargs docker rmi'
alias dpsstopped='docker ps --filter "status=exited"'
