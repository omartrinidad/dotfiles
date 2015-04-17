
~/.*
====

My public dotfiles.


# Vim configuration

- Download the plugin `Vundle.vim`:
+ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
+ Open `Vim` and run `:PluginInstall`
- Create symlink files to the content of this folder:
+ ln -sf ~/dotfiles/vim ~/.vim
+ ln -sf ~/dotfiles/vimrc ~/.vimrc
