# copy stdout to buffer
alias buf_copy='xclip -i -selection clipboard'
# copy to clipboard
alias to_clip='xclip -i -selection clipboard'

# # other aliases
alias ssh_agent='eval $(ssh-agent -s)'
alias ssh_list='ssh-add -l'
alias line_dos_unix="sed $'s/\r$//'"
alias tmp_dir='cd $(mktemp -d)'
alias pac_info="pacman -Qq | fzf --preview 'pacman -Qi {}' --bind 'enter:execute:pacman -Qil {}|less'"
alias pam_info="pamac list -qi | fzf --preview 'pamac info {}' --bind 'enter:execute:pacman -Qil {}|less'"
alias plasma_restart="kquitapp5 plasmashell && kstart5 plasmashell </dev/null &>/dev/null &"
alias init_dummy="sudo ip link add dummy0 type dummy && sudo ip addr add 192.168.100.100/24 dev dummy0 && sudo ip link set dummy0 up"

# for gpg
alias gpg_reset='export GPG_TTY=$(tty) && echo "test" | gpg --clearsign'

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

alias ag="ag --hidden"

# lazy{git|docker}
alias lazg='lazygit'
alias lazd='lazydocker'

# fd
alias fd='fd -I'

# find
alias fn='find .'
alias fnf='find . -type f'
alias fnd='find . -type d'

# go-task
alias task='go-task'
