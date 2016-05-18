
~/.*
====

My public dotfiles.

## Vim configuration

- Download the plugin `Vundle.vim`:
    + `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
    + Open Vim and run `:PluginInstall`

- Download the fonts:
    + `git clone https://github.com/powerline/fonts`
    + `./install`

- Create symlink files to the content of this folder:
    + `ln -sf ~/dotfiles/vim ~/.vim`
    + `ln -sf ~/dotfiles/vimrc ~/.vimrc`
    + `ln -sf ~/dotfiles/vim/colors/zenburn.vim ~/.vim/colors/zenburn.vim`

- Append configurations to the bashrc file:
    + `cat ~/dotfiles/bashrc >> ~/.bashrc`

## Tmux

- Create symlink file to the tmux configuration file:
    + `ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf`
