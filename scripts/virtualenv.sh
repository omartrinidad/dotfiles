sudo apt install pip
sudo pip install virtualenvwrapper

mkdir ~/.envs
echo '' >> ~/.bashrc 
echo '# virtualenvwrapper' >> ~/.bashrc 
echo 'export WORKON_HOME=~/.envs' >> ~/.bashrc 
echo 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bashrc
