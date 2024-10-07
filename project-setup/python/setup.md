# Python Project Setup

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
SQLAlchemy | sql |
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
