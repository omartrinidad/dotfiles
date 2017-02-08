
# ~/.*

My public dotfiles.

## Vim configuration

- Create symlink files to the content of this folder:
    + `ln -sf ~/dotfiles/vim/* ~/.vim/`
    + `ln -sf ~/dotfiles/vimrc ~/.vimrc`

- Download the plugin `Vundle.vim`:
    + `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
    + Open Vim and run `:PluginInstall`

- Download the fonts:
    + `git clone https://github.com/powerline/fonts`
    + `./install`

## Bash

- Append configurations to the bashrc file:
    + `cat ~/dotfiles/bashrc >> ~/.bashrc`

## Tmux

- Create symlink file to the tmux configuration file:
    + `ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf`

## Conky

- Create symlink file to the conky configuration file:
    + `ln -sf ~/dotfiles/conkyrc ~/.conkyrc`
