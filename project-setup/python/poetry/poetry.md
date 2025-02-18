# Using Poetry

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
| Install dependencies  | `poetry install` or <hr> `poetry install --no-root`  |
| Activate shell (venv) | `poetry shell`                      |
| Run a script          | `poetry run <script>`               |
| Run tests             | `poetry run pytest` or `pytest`     |
| Run tests with coverage | `pytest --cov=.` |
| Run tests with coverage <hr/> (HTML report) index.html | `pytest --cov=. --cov-report=html` |

## Run tests

| Task                  | Command                             |
|-----------------------|-------------------------------------|
| Run tests             | `poetry run pytest` or `pytest`     |
| Run tests with coverage | `pytest --cov=.` |
| Run tests with coverage <hr/> (HTML report) index.html | `pytest --cov=. --cov-report=html` |

## ignore files from coverage report

- create .coveragerc file in the root of the project
- add the following to the file:

```bash
[run]
omit = */tests/*
```

## Miscellaneous

If imports are showing warnings in vscode,

- poetry env info --path
- copy the output
- open project
- Cmd + Shift + P
- interpreter
- enter path
- path the path to your venv
