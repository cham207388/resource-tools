# venv not via pyenv

## UV option

| Description | Command |
|---------|----------|
| create venv | `uv venv` |
| source | `source .venv/bin/activate` |
| create project | `uv init uv_project`|
| add dependency | `uv add <dep>` <hr>`uv add numpy`|
| run fast api | `uv run uvicorn src.main:app --reload`|

## Python3 venv Option

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