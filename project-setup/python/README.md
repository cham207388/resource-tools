# Python Project Setup

## Install python

Follow the ultimate guide

- [ultimate-python-guide](./ultimate-guide.md)

## Poetry

- [poetry-info](./poetry/poetry.md)

## Clean up pytho

- [clean up](./clean-up.md)

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

--------------------------------

## uv

- `uv init uv_project`
- `uv add numpy`
- `uv add pandas`
- `uv run main.py`
- `uv run uvicorn src.main:app --reload`
