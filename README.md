# CAP-6771---Data-Mining-Project
 
Extra reading on UV

[UV docs on using jupyter notebook](https://docs.astral.sh/uv/guides/integration/jupyter/#using-jupyter-with-a-non-project-environment)


[Quarto fails to recognize Python virtual environment #11257](https://github.com/quarto-dev/quarto-cli/discussions/11257)


[Using uv in RStudio](https://docs.cloud.sdu.dk/hands-on/uv-rstudio.html)

Cheatsheet of commands:

```bash
"python.terminal.activateEnvironment": false
```

Activating a VENV

```bash
source .venv/bin/activate
```

Creating an UV project

```bash
uv init
```

You can add dependencies to your pyproject.toml with the uv add command. This will also update the lockfile and project environment:

```bash
uv add requests
```

To remove a package, you can use uv remove:

```bash
uv remove requests
```

To upgrade a package, run uv lock with the --upgrade-package flag:

```bash
uv lock --upgrade-package requests
```


Creating a virtual environment


```bash
uv venv
```


Syncing the environment

```bash
uv sync
```




