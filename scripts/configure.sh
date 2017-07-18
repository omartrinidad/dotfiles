
ln -sf ~/dotfiles/vim/* ~/.vim/
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/vim/colors/* ~/.vim/colors/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/powerline/fonts
cd fonts
./install
cd ..
cat ~/dotfiles/bashrc >> ~/.bashrc
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/conkyrc ~/.conkyrc


