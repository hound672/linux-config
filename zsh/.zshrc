# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

if which tmux 2>&1 >/dev/null; then
  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
    tmux attach -t hack || tmux new -s hack; exit
  fi
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
          eval "$(pyenv init --path)"
            eval "$(pyenv init -)"
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

[[ -s "/home/hound/.gvm/scripts/gvm" ]] && source "/home/hound/.gvm/scripts/gvm"

zstyle ':completion:*' menu yes select

# aliases for git commands
alias gc='f(){ git add .; git commit -m "$@";  unset -f f; }; f'
alias gcs='f(){ git add .; git commit -S -m "$@";  unset -f f; }; f'
alias gl='f(){ git log --show-signature -n"$@";  unset -f f; }; f'
alias gam='git commit --amend'
alias gad='git add .'
alias gph='git push'
alias gpl='git pull --rebase'
alias gs='git status'

# # aliases for docker
alias docker_stop_all="docker ps -a -q | xargs docker stop"
alias docker_rm_all="docker ps -a -q | xargs docker rm"
alias docker_rmi_empty='docker images -f "dangling=true" -q | xargs docker rmi'

# # aliases for copy current path to system clipboard
# copy cuurent path to buffer
alias pwd_copy='pwd | xclip -i -selection clipboard'
# copy stdout to buffer
alias buf_copy='xclip -i -selection clipboard'
# copy to clipboard
alias to_clip='xclip -i -selection clipboard'

# # other aliases
alias rm='rm -i'
alias mv='mv -i'
alias ..='cd ..'
alias cd_strg='cd /mnt/storage'
alias cd_ssd='cd /mnt/ssd_storage'
alias ssh_agent='eval $(ssh-agent -s)'

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

