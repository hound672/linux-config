HOME_DIR=${XDG_CACHE_HOME:-$HOME}
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${HOME_DIR/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${HOME_DIR/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="${HOME_DIR}/.oh-my-zsh"
export ZSH_TMUX_AUTOSTART=true

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  gitfast

  history
  history-substring-search
  zsh-autosuggestions
  zsh-syntax-highlighting

  docker
  docker-compose
  minikube

  sudo
  fzf
  common-aliases
  kubectl
  poetry
  wd
  hound
  tmux
  aliases
  zsh-z
  zsh-ssh
)

source $ZSH/oh-my-zsh.sh

# Use powerline
USE_POWERLINE="true"

export PYENV_ROOT="${HOME_DIR}/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

[[ -s "${HOME_DIR}/.gvm/scripts/gvm" ]] && source "${HOME_DIR}/.gvm/scripts/gvm"

zstyle -e ':completion:*' hosts 'reply=($myhosts)'

pasteinit() {
          OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
            zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
    }

pastefinish() {
          zle -N self-insert $OLD_SELF_INSERT
  }
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes

# Customize settings, theme
[[ ! -f ${HOME_DIR}/.p10k.zsh ]] || source ${HOME_DIR}/.p10k.zsh
[[ ! -f ${HOME_DIR}/.zsh-config ]] || source ${HOME_DIR}/.zsh-config
[[ ! -f ${HOME_DIR}/.zshrc.local ]] || source ${HOME_DIR}/.zshrc.local
[[ ! -f ${HOME_DIR}/.zshrc.private ]] || source ${HOME_DIR}/.zshrc.private
