# Linux config

## git

For using ```.gitconfig.local``` in git global config add in git global config file:

```
[include]
    path = ~/.gitconfig.local
```

## zsh

### Custom pluginx

zsh-z

```bash
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
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
```
