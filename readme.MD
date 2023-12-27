# Linux config

## git

For using ```.gitconfig.local``` in git global config add in git global config file:

```
[include]
    path = ~/.gitconfig.local
```

## zsh

### Custom plugins

zsh-z

```bash
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
```

docker-compose

Since MR with fixes: https://github.com/ohmyzsh/ohmyzsh/pull/10638
hasn't been megred yet

```bash
cp -r zsh/plugins/docker-compose ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/docker-compose
```

## Vim

### Copy colors

```bash
cp -r vim/colors/* ~/.vim/colors
```

### Used plugins:

- https://github.com/junegunn/vim-plug
- https://github.com/sickill/vim-monokai
- https://github.com/ycm-core/YouCompleteMe
- https://github.com/scrooloose/nerdtree
- https://github.com/kien/ctrlp.vim
- https://github.com/rking/ag.vim

## Tmux

### Requirements

```xsel``` for copy to system clipboard

### Plugin installer

https://github.com/tmux-plugins/tpm

### Based config

https://github.com/gpakosz/.tmux

## idead

Some configs, presets and so on for JetBrains editors

## Create symlinks

In git repo dir:
```bash

# vim
ln -sf $PWD/vim/.vimrc ~

# tmux
ln -sf $PWD/tmux/.tmux.conf ~
ln -sf $PWD/tmux/.tmux.conf.local ~

# zsh
ln -sf $PWD/zsh/.zshrc ~
ln -sf $PWD/zsh/.zshrc.local ~

# gnpg
ln -sf $PWD/gnupg/gpg-agent.conf ~/.gnupg

# aliases
ln -sf $PWD/aliases/.aliases ~

# lazy git
ln -sf $PWD/lazygit/config.yml ~/.config/lazygit

```

