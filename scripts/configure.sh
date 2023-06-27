
# ----------------------------------- [ vim ] ----------------------------------
# At the end open Vim and run :PluginInstall

mkdir ~/.vim/
ln -sf ~/dotfiles/vim/* ~/.vim/
ln -sf ~/dotfiles/vimrc ~/.vimrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/powerline/fonts ~/.fonts

# Powerline fonts
cd ~/.fonts
    ./install
cd -

# ---------------------------------- [ bash ] ----------------------------------

cat ~/dotfiles/bashrc >> ~/.bashrc
source ~/.bashrc

# ----------------------------------- [ tmux ] ---------------------------------

ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/tmux-resurrect
tmux source-file ~/.tmux.conf
