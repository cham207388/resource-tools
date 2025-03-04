# Python Project Setup

## Install python

### Using installer

- [download](https://www.python.org/downloads/)

- check available versions `ls /Library/Frameworks/Python.framework/Versions/`

### brew

- `brew install python@3.11 python@3.12`
- `export PYTHONPATH="/opt/homebrew/opt/python@3.12/libexec/"`
- `export PATH="$(brew --prefix)/opt/python@3.12/libexec/bin:$PATH"`

## Poetry

- [poetry-info](./poetry/poetry.md)

## Create Virtual env

### UV option

| Description | Command |
|---------|----------|
| create venv | `uv venv` |
| source | `source .venv/bin/activate` |

### Python3 venv Option

| Description | Command |
|---------|----------|
| create venv | `python3 -m venv .venv` |
| source | `source .venv/bin/activate` |
| update pip | `pip install --upgrade pip` |
| install from requirements | `pip install -r requirements.txt` |
| install dep | `pip install dep` |
| get venv info | `echo $VIRTUAL_ENV` |
| run python script | `python3 filename.py` |
| deactivate venv | `deactivate` |

## Poetry Option

| Description | Command |
|---------|----------|
| check your python | which python3 |
| Create a new venv using response | `poetry env use response` <hr/> `poetry env use /usr/local/opt/python@3.12/libexec/bin/python3` (specifying is best practice) <hr/> `poetry env use $(which python3)` |
| Install dependency | `poetry add dep` |
| Check venv info | `poetry env info` |
| Use venv info in vscode for intellisence | `poetry env info --path` <hr/> choose interpreter and paste the path |
| Delete venv | `poetry env remove python` |
| start fastapi app | `poetry run uvicorn main:app --reload`<hr/> `poetry --directory dir-name run uvicorn main:app --reload` |

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
