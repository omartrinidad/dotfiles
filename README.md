
# ~/.*

My public dotfiles.

Here I save my configurations for Vim, Bash, Tmux, Jupyter (JupyterLab) and Conky. See
`scripts/configure.sh`.

## Conky

+ For automatic execution of `conky` in GNOME go to `Startup Applications` and
  add `conky --pause=10`

## JupyterLab and IPython

+ Run JupyterLab on the system boot:
    - `crontab -e`
    - `@reboot cd /home/user; source ~/.bashrc; /home/user/.envs/python3/bin/jupyter lab;`
    - `jupyter notebook --generate-config`
    - `jupyter notebook password`

+ Plugins:
    - See all extensions: `jupyter labextensions list`
    - JupyterLab plugin to emulate Vim: `jupyter labextensions install jupyterlab_vim`

+ IPython config file:
    - Run the command `python -c "import IPython; print IPython.paths.get_ipython_dir()"`,
    look the file `ipython_config.py`, and add the next lines:

```python
c.InteractiveShellApp.extensions = ['autoreload']
c.InteractiveShellApp.exec_lines = ['%autoreload 2']
c.Completer.use_jedi = True
```

# Basemap

This nice package to draw maps was difficult to install. So, I will write steps
on how to install it.

- Download the last version of `geolib` and install it. Installing two versions (from source and from repos) may cause conflicts.
- Install Swig: `sudo apt install swig` 
- `pip install pyshp`
- `pip install pyproj`
