# Python Project Setup

## Install python

### Using installer

- [download](https://www.python.org/downloads/)

- check available versions `ls /Library/Frameworks/Python.framework/Versions/`

Switch between versions in your ~/.zshrc and `source`

```bash
alias python3.11='export PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:$PATH" && python3 --version'
alias python3.12='export PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:$PATH" && python3 --version'
```

### brew

- `brew install python@3.11 python@3.12`
- ls /opt/homebrew/Cellar/python@*

```bash
alias python3.11='export PATH="/opt/homebrew/opt/python@3.11/bin:$PATH" && python3 --version'
alias python3.12='export PATH="/opt/homebrew/opt/python@3.12/bin:$PATH" && python3 --version'
```

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

### Option uv

    uv venv
    source .venv/bin/activate

### python venv

    python3 -m venv venvname
    source venvname/bin/activate

### Run Python Application

Command | Explanation |
---------|----------|
 `python3 main.py` | basic python application |
 `poetry run uvicorn main:app --reload`<br/> `poetry --directory dir-name run uvicorn main:app --reload` | start fastapi app |

Some dependencies

Dependency | Reason |
---------|----------|
fastapi | rest api |
uvicorn | rest api |
python-dotenv | env variable usage |
sqlmodel | sql and orm|
pymysql | mysql |
mysql-connector-python | mysql |
databricks-sql-connector | datarbicks |

--------------------------------

## uv

- `uv init uv_project`
- `uv add numpy`
- `uv add pandas`
- `uv run main.py`
- `uv run uvicorn src.main:app --reload`
