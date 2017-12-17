
# ----------------------------------- [ vim ] ----------------------------------
# Warning: At the end open Vim and run :PluginInstall

mkdir ~/.vim/
ln -sf ~/dotfiles/vim/* ~/.vim/
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/vim/colors/* ~/.vim/colors/

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/powerline/fonts ~/.fonts

# Powerline fonts
cd ~/.fonts
./install
cd -

# ---------------------------------- [ virtual envs ] --------------------------

mkdir ~/.envs
echo '' >> ~/.bashrc
echo '# virtualenvwrapper' >> ~/.bashrc
echo 'export WORKON_HOME=~/.envs' >> ~/.bashrc
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
source ~/.bashrc

# ---------------------------- [ mkdir virtual envs ] --------------------------

mkvirtualenv --python=/usr/bin/python3 tres

# ---------------------------------- [ bash ] ----------------------------------

cat ~/dotfiles/bashrc >> ~/.bashrc
source ~/.bashrc

# ---------------------------------- [ conky ] ---------------------------------

touch ~/things.md
ln -sf ~/dotfiles/conkyrc ~/.conkyrc

# ----------------------------------- [ tmux ] ---------------------------------

ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/tmux-resurrect
tmux source-file ~/.tmux.conf

# ---------------------------- [ vim for jupyter ] -----------------------------

# create required directory in case (optional)
mkdir -p $(jupyter --data-dir)/nbextensions
# clone the repository
cd $(jupyter --data-dir)/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
# activate the extension
jupyter nbextension enable vim_binding/vim_binding
