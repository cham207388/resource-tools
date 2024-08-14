# Python Project Setup

- cd in project-folder
- `poetry init` 
  - initialized a poetry project
- `poetry install`
  - updates dependencies
- `poetry add dependency`
  - to install a dependency

Some dependencies

- fastapi
- uvicorn
- python-dotenv

- SQLAlchemy
- pymysql
- mysql-connector-python

Run fastapi RESTful service

- `poetry run uvicorn main:app --reload`
- `poetry --directory dir-name run uvicorn main:app --reload`
