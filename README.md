
# ~/.*

My public dotfiles.

Here I save my configurations for Vim, Bash, Tmux, Jupyter and Conky. See
`scripts/configure.sh`.

+ For automatic execution of `conky` in GNOME go to `Startup Applications` and
  add `conky --pause=10`

+ Run Jupyter Notebooks on the system boot:
    - `crontab -e`
    - `@reboot cd /home/user; source ~/.bashrc; /home/user/.envs/python3/bin/jupyter notebook`
    - jupyter notebook --generate-config
    - jupyter notebook password

The folder `python3` is the name of v irtual environment.
