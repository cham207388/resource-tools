# Python Project Setup

## Install python

### Using installer

- [download](https://www.python.org/downloads/)

- check available versions `ls /Library/Frameworks/Python.framework/Versions/`

### brew

- `brew install python@3.11 python@3.12`
- ls /opt/homebrew/Cellar/python@*

## Poetry

- cd in project-folder
- `poetry init`
  - initialized a poetry project
- `poetry install`
  - updates dependencies
- `poetry add dependency`
  - to install a dependency

## Virtual environment

- `deactive` to deactivate
- `python3 main.py` to start application
- `uv pip freeze > requirements.txt` to freeze dependencies into requirements.txt
- check info `echo $VIRTUAL_ENV`
- use the path result as your interpreter on vs code

### Option uv

- uv venv
- source .venv/bin/activate

### python3 venv

| Description | Command |
|---------|----------|
| create venv | `python3 -m venv .venv` |
| source | `source .venv/bin/activate` |
| install from requirements | `pip install -r requirements.txt` |
| install dep | `pip install dep` |
| get venv info | `echo $VIRTUAL_ENV` |
| run python script | `python3 filename.py` |

## Some dependencies

| Dependency | Reason |
|---------|----------|
| fastapi | rest api |
| uvicorn | rest api |
| python-dotenv | env variable usage |
| sqlmodel | sql and orm|
| pymysql | mysql |
| mysql-connector-python | mysql |
| databricks-sql-connector | datarbicks |

--------------------------------

## uv

- `uv init uv_project`
- `uv add numpy`
- `uv add pandas`
- `uv run main.py`
- `uv run uvicorn src.main:app --reload`
