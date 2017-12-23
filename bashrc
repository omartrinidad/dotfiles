
# 256 colors with TMUX and VIM 
if [[ $TERM == xterm ]]; 
    then TERM=xterm-256color; 
fi

# virtualenvwrapper
export WORKON_HOME=~/.envs
source /usr/local/bin/virtualenvwrapper.sh

# workon datascience3 by default
#if [ -n "$VIRTUAL_ENV" ]; then
#    workon datascience3
#else
#    workon datascience3
#fi

export EDITOR=vim
