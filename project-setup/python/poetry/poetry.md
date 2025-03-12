# Table of Contents

- [Table of Contents](#table-of-contents)
  - [Using Poetry](#using-poetry)
  - [Resources](#resources)
  - [Create and manage poetry project](#create-and-manage-poetry-project)
  - [Run tests](#run-tests)
  - [Ignore files from coverage report](#ignore-files-from-coverage-report)
  - [Miscellaneous](#miscellaneous)

## Using Poetry

## Resources

- [docs](https://python-poetry.org/docs/)
- [poetry for dep management](../python/docker-fastapi-poetry/pyproject.toml)

## Create and manage poetry project

| Task                  | Command                             |
|-----------------------|-------------------------------------|
| Create project        | `poetry new <project-name>`         |
| Change to project dir | `cd <project-name>`                 |
| Initialize project    | `poetry init`                       |
| Add a package         | `poetry add <package>`              |
| Add a dev package     | `poetry add <package> --group dev`  |
| Install dependencies  | `poetry install` or <hr/> `poetry install --no-root`  |
| Activate shell (venv) | `poetry shell`                      |
| Run a script          | `poetry run <script>`               |
| Run tests             | `poetry run pytest` or `pytest`     |
| Run tests with coverage | `pytest --cov=.` |
| Run tests with coverage <hr/> (HTML report) index.html | `pytest --cov=. --cov-report=html` |
| check your python | which python3 <hr> $HOME/.pyenv/shims/python|
| Create a new venv using response | `poetry env use $HOME/.pyenv/shims/python`  <hr/> or `poetry env use $(which python)` (specifying is best practice) |
| Check venv info | `poetry env info` |
| Use venv info in vscode for intellisence | `poetry env info --path` <hr/> choose interpreter and paste the path |
| Delete venv | `poetry env remove $(poetry env info --path)` <hr/> or `poetry env remove python`  |
| start fastapi app | `poetry run uvicorn main:app --reload`<hr/> `poetry --directory dir-name run uvicorn main:app --reload` |

## Run tests

| Task                  | Command                             |
|-----------------------|-------------------------------------|
| Run tests             | `poetry run pytest` or `pytest`     |
| Run tests with coverage | `pytest --cov=.` |
| Run tests with coverage <hr/> (HTML report) index.html | `pytest --cov=. --cov-report=html` |

## Ignore files from coverage report

- Create `.coveragerc` file in the root of the project
- Add the following to the file:

```bash
[run]
omit = */tests/*
```

## Miscellaneous

```text
If imports are showing warnings in vscode,

- poetry env info --path
- copy the output
- open project
- Cmd + Shift + P
- interpreter
- enter path
- path the path to your venv
```
