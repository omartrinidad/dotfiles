# ~/.*

My public dotfiles.

Here I save my configurations for Vim, Bash, Tmux and JupyterLab. See
`scripts/configure.sh`.

## JupyterLab

+ Create a virtual environment:
    - `python3 -m venv /home/user/.venvs/jupyter`
    - `pip install jupyter jupyterlab`
    - `jupyter notebook --generate-config`
    - `jupyter notebook password`

+ Create the cron:
    - `crontab -e`
    - `@reboot cd /home/user; source ~/.bashrc; /home/user/.venvs/jupyter/bin/jupyter lab;`

+ Add a virtual environment as a kernel:
    - `pip install ipykernel`
    - `python -m ipykernel install --user --name=myenv`

+ Plugins:
    - AI extensions: `pip install elyra && jupyter lab build`
    - Emulate Vim: `jupyter labextension install @axlair/jupyterlab_vim`
    - See all extensions: `jupyter labextension list`

## IPython

+ IPython config file:
    - Run the command `python -c "import IPython; print IPython.paths.get_ipython_dir()"`,
    look the file `ipython_config.py`, and add the next lines:

```python
c.InteractiveShellApp.extensions = ['autoreload']
c.InteractiveShellApp.exec_lines = ['%autoreload 2']
c.Completer.use_jedi = True
```
