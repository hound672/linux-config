# Linux config

## Content

### git

For using ```.gitconfig.local``` in git global config add in git global config file:

```
[include]
    path = ~/.gitconfig.local
```

### zsh

#### Custom theme

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### Custom plugins

zsh-z

```bash
git clone https://github.com/agkozak/zsh-z ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
```

* docker-compose

Since MR with fixes: https://github.com/ohmyzsh/ohmyzsh/pull/10638
hasn't been merged yet. 

Create symlink command bellow.

* hound

Some mine addons.

Create symlink command bellow.

### Vim

#### Copy colors

```bash
cp -r vim/colors/* ~/.vim/colors
```

#### Used plugins:

- https://github.com/junegunn/vim-plug
- https://github.com/sickill/vim-monokai
- https://github.com/ycm-core/YouCompleteMe
- https://github.com/scrooloose/nerdtree
- https://github.com/kien/ctrlp.vim
- https://github.com/rking/ag.vim

### Tmux

#### Requirements

```xsel``` for copy to system clipboard

#### Plugin installer

https://github.com/tmux-plugins/tpm

#### Based config

https://github.com/gpakosz/.tmux

### idea

Some configs, presets and so on for JetBrains editors

# Usage

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
ln -sf $PWD/zsh/.p10k.zsh ~
ln -sf $PWD/zsh/.zsh-config ~
ln -sf $PWD/zsh/.zsh-autosuggestions.zsh ~

# zsh plugins

ln -sf $PWD/zsh/plugins/docker-compose ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins
ln -sf $PWD/zsh/plugins/hound ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins

# gnpg
ln -sf $PWD/gnupg/gpg-agent.conf ~/.gnupg

# lazy git
ln -sf $PWD/lazygit/config.yml ~/.config/lazygit

# vifm
ln -sf $PWD/vifm/vifmrc ~/.config/vifm
cp vifm/colors/* ~/.config/vifm/colors/

# kate
ln -sf $PWD/kate/externaltools ~/.local/share/kxmlgui5/externaltools
ln -sf $PWD/kate/kate ~/.local/share/kxmlgui5/kate
ln -sf $PWD/kate/katekonsole ~/.local/share/kxmlgui5/katekonsole
ln -sf $PWD/kate/katepart ~/.local/share/kxmlgui5/katepart
ln -sf $PWD/kate/katefiletree ~/.local/share/kxmlgui5/katefiletree

# konsole
ln -sf $PWD/konsole/Hound.profile ~/.local/share/konsole

```

